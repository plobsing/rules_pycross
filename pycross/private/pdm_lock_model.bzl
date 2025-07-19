"""Implementation of the pycross_pdm_lock_model rule."""

load(":internal_repo.bzl", "exec_internal_tool")
load(":lock_attrs.bzl", "PDM_IMPORT_ATTRS")

TRANSLATOR_TOOL = Label("//pycross/private/tools:pdm_translator.py")

def _handle_args(attrs, project_file, lock_file, output, env_label_to_path):
    args = []
    args.extend(["--project-file", project_file])
    args.extend(["--lock-file", lock_file])
    args.extend(["--output", output])

    if attrs.default:
        args.append("--default")

    for group in attrs.optional_groups:
        args.extend(["--optional-group", group])

    if attrs.all_optional_groups:
        args.append("--all-optional-groups")

    for group in attrs.development_groups:
        args.extend(["--development-group", group])

    if attrs.all_development_groups:
        args.append("--all-development-groups")

    if attrs.require_static_urls:
        args.append("--require-static-urls")

    for env_label in attrs.target_environments:
        env_file = env_label_to_path(env_label)
        args.extend(["--target-environment", env_file, str(env_label)])

    return args

def _pycross_pdm_lock_model_impl(ctx):
    out = ctx.actions.declare_file(ctx.attr.name + ".json")

    path_by_env_label = {
        f.path: label
        for files, label in zip(ctx.files.target_environments, ctx.attr.target_environments)
        for f in files
    }
    env_label_to_path = lambda label: path_by_env_label[label]

    args = ctx.actions.args().use_param_file("--flagfile=%s")
    args.add_all(
        _handle_args(
            ctx.attr,
            ctx.file.project_file.path,
            ctx.file.lock_file.path,
            out.path,
            env_label_to_path,
        ),
    )

    ctx.actions.run(
        inputs = (
            ctx.files.project_file +
            ctx.files.lock_file
        ),
        outputs = [out],
        executable = ctx.executable._tool,
        arguments = [args],
    )

    return [
        DefaultInfo(
            files = depset([out]),
        ),
    ]

pycross_pdm_lock_model = rule(
    implementation = _pycross_pdm_lock_model_impl,
    attrs = {
        "_tool": attr.label(
            default = Label("//pycross/private/tools:pdm_translator"),
            cfg = "exec",
            executable = True,
        ),
    } | PDM_IMPORT_ATTRS,
)

def lock_repo_model_pdm(
        *,
        project_file,
        lock_file,
        default = True,
        optional_groups = [],
        all_optional_groups = False,
        development_groups = [],
        all_development_groups = False,
        require_static_urls = True,
        target_environments = [],
        mctx = None):
    if target_environments and not mctx:
        fail("Environment resolution requires a module context")

    target_environments = [
        str(index_file.relative(entry))
        for index_file in target_environments
        for entry in json.decode(mctx.read(index_file))["environments"]
    ]

    return json.encode(dict(
        model_type = "pdm",
        project_file = str(project_file),
        lock_file = str(lock_file),
        default = default,
        optional_groups = optional_groups,
        all_optional_groups = all_optional_groups,
        development_groups = development_groups,
        all_development_groups = all_development_groups,
        require_static_urls = require_static_urls,
        target_environments = target_environments,
    ))

def repo_create_pdm_model(rctx, params, output):
    """Run the pdm lock translator.

    Args:
        rctx: The repository_ctx or module_ctx object.
        params: a struct or dict containing the same attrs as the pycross_pdm_lock_model rule.
        output: the output file.
    """
    if type(params) == "dict":
        attrs = struct(**params)
    else:
        attrs = params

    env_label_to_path = lambda l: rctx.path(Label(l))

    args = _handle_args(
        attrs,
        str(rctx.path(Label(attrs.project_file))),
        str(rctx.path(Label(attrs.lock_file))),
        output,
        env_label_to_path,
    )

    exec_internal_tool(
        rctx,
        TRANSLATOR_TOOL,
        args,
    )
