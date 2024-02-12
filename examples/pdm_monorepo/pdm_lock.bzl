# This file is generated by rules_pycross.
# It is not intended for manual editing.
"""Pycross-generated dependency targets."""

load("@@rules_pycross~override//pycross:defs.bzl", "pycross_wheel_library")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

PINS = {
    "click": "click@8.1.7",
}

# buildifier: disable=unnamed-macro
def targets():
    """Generated package targets."""

    for pin_name, pin_target in PINS.items():
        native.alias(
            name = pin_name,
            actual = ":" + pin_target,
        )

    native.alias(
        name = "_env_python_3.11.5_aarch64-apple-darwin",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_aarch64-apple-darwin_config",
    )

    native.alias(
        name = "_env_python_3.11.5_aarch64-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_aarch64-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.11.5_ppc64le-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_ppc64le-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.11.5_s390x-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_s390x-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.11.5_x86_64-apple-darwin",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_x86_64-apple-darwin_config",
    )

    native.alias(
        name = "_env_python_3.11.5_x86_64-pc-windows-msvc",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_x86_64-pc-windows-msvc_config",
    )

    native.alias(
        name = "_env_python_3.11.5_x86_64-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_x86_64-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.11_aarch64-apple-darwin",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11_aarch64-apple-darwin_config",
    )

    native.alias(
        name = "_env_python_3.11_aarch64-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11_aarch64-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.11_ppc64le-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11_ppc64le-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.11_s390x-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11_s390x-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.11_x86_64-apple-darwin",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11_x86_64-apple-darwin_config",
    )

    native.alias(
        name = "_env_python_3.11_x86_64-pc-windows-msvc",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11_x86_64-pc-windows-msvc_config",
    )

    native.alias(
        name = "_env_python_3.11_x86_64-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.11_x86_64-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.12_aarch64-apple-darwin",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.12_aarch64-apple-darwin_config",
    )

    native.alias(
        name = "_env_python_3.12_aarch64-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.12_aarch64-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.12_ppc64le-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.12_ppc64le-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.12_s390x-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.12_s390x-unknown-linux-gnu_config",
    )

    native.alias(
        name = "_env_python_3.12_x86_64-apple-darwin",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.12_x86_64-apple-darwin_config",
    )

    native.alias(
        name = "_env_python_3.12_x86_64-pc-windows-msvc",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.12_x86_64-pc-windows-msvc_config",
    )

    native.alias(
        name = "_env_python_3.12_x86_64-unknown-linux-gnu",
        actual = "@@rules_pycross~override~environments~pycross_environments//:python_3.12_x86_64-unknown-linux-gnu_config",
    )

    # buildifier: disable=unused-variable
    _target = select({
        ":_env_python_3.11.5_aarch64-apple-darwin": "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_aarch64-apple-darwin.json",
        ":_env_python_3.11.5_aarch64-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_aarch64-unknown-linux-gnu.json",
        ":_env_python_3.11.5_ppc64le-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_ppc64le-unknown-linux-gnu.json",
        ":_env_python_3.11.5_s390x-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_s390x-unknown-linux-gnu.json",
        ":_env_python_3.11.5_x86_64-apple-darwin": "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_x86_64-apple-darwin.json",
        ":_env_python_3.11.5_x86_64-pc-windows-msvc": "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_x86_64-pc-windows-msvc.json",
        ":_env_python_3.11.5_x86_64-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.11.5_x86_64-unknown-linux-gnu.json",
        ":_env_python_3.11_aarch64-apple-darwin": "@@rules_pycross~override~environments~pycross_environments//:python_3.11_aarch64-apple-darwin.json",
        ":_env_python_3.11_aarch64-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.11_aarch64-unknown-linux-gnu.json",
        ":_env_python_3.11_ppc64le-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.11_ppc64le-unknown-linux-gnu.json",
        ":_env_python_3.11_s390x-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.11_s390x-unknown-linux-gnu.json",
        ":_env_python_3.11_x86_64-apple-darwin": "@@rules_pycross~override~environments~pycross_environments//:python_3.11_x86_64-apple-darwin.json",
        ":_env_python_3.11_x86_64-pc-windows-msvc": "@@rules_pycross~override~environments~pycross_environments//:python_3.11_x86_64-pc-windows-msvc.json",
        ":_env_python_3.11_x86_64-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.11_x86_64-unknown-linux-gnu.json",
        ":_env_python_3.12_aarch64-apple-darwin": "@@rules_pycross~override~environments~pycross_environments//:python_3.12_aarch64-apple-darwin.json",
        ":_env_python_3.12_aarch64-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.12_aarch64-unknown-linux-gnu.json",
        ":_env_python_3.12_ppc64le-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.12_ppc64le-unknown-linux-gnu.json",
        ":_env_python_3.12_s390x-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.12_s390x-unknown-linux-gnu.json",
        ":_env_python_3.12_x86_64-apple-darwin": "@@rules_pycross~override~environments~pycross_environments//:python_3.12_x86_64-apple-darwin.json",
        ":_env_python_3.12_x86_64-pc-windows-msvc": "@@rules_pycross~override~environments~pycross_environments//:python_3.12_x86_64-pc-windows-msvc.json",
        ":_env_python_3.12_x86_64-unknown-linux-gnu": "@@rules_pycross~override~environments~pycross_environments//:python_3.12_x86_64-unknown-linux-gnu.json",
    })

    _click_8_1_7_deps = [
        ":colorama@0.4.6",
    ]

    native.alias(
        name = "_wheel_click@8.1.7",
        actual = "@pdm_lock_wheel_click_8.1.7_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "click@8.1.7",
        deps = _click_8_1_7_deps,
        wheel = ":_wheel_click@8.1.7",
    )

    native.alias(
        name = "_wheel_colorama@0.4.6",
        actual = "@pdm_lock_wheel_colorama_0.4.6_py2.py3_none_any//file",
    )

    pycross_wheel_library(
        name = "colorama@0.4.6",
        wheel = ":_wheel_colorama@0.4.6",
    )

# buildifier: disable=unnamed-macro
def repositories():
    """Generated package repositories."""

    maybe(
        http_file,
        name = "pdm_lock_wheel_click_8.1.7_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/00/2e/d53fa4befbf2cfa713304affc7ca780ce4fc1fd8710527771b58311a3229/click-8.1.7-py3-none-any.whl",
        ],
        sha256 = "ae74fb96c20a0277a1d615f1e4d73c8414f5a98db8b799a7931d1582f3390c28",
        downloaded_file_path = "click-8.1.7-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "pdm_lock_wheel_colorama_0.4.6_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/d1/d6/3965ed04c63042e047cb6a3e6ed1a63a35087b6a609aa3a15ed8ac56c221/colorama-0.4.6-py2.py3-none-any.whl",
        ],
        sha256 = "4f1d9991f5acc0ca119f9d443620b77f9d6b33703e51011c16baf57afb285fc6",
        downloaded_file_path = "colorama-0.4.6-py2.py3-none-any.whl",
    )
