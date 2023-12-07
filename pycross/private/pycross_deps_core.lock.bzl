# This file is generated by rules_pycross.
# It is not intended for manual editing.
"""Pycross-generated dependency targets."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@jvolkman_rules_pycross//pycross:defs.bzl", "pycross_wheel_library")

PINS = {
    "dacite": "dacite_1.6.0",
    "installer": "installer_0.7.0",
    "packaging": "packaging_23.2",
    "pip": "pip_23.3.1",
    "poetry_core": "poetry_core_1.8.1",
    "tomli": "tomli_2.0.1",
}

FILES = {
    "dacite-1.6.0-py3-none-any.whl": "@rules_pycross_internal_deps_wheel_dacite_1.6.0_py3_none_any//file:dacite-1.6.0-py3-none-any.whl",
    "installer-0.7.0-py3-none-any.whl": "@rules_pycross_internal_deps_wheel_installer_0.7.0_py3_none_any//file:installer-0.7.0-py3-none-any.whl",
    "packaging-23.2-py3-none-any.whl": "@rules_pycross_internal_deps_wheel_packaging_23.2_py3_none_any//file:packaging-23.2-py3-none-any.whl",
    "pip-23.3.1-py3-none-any.whl": "@rules_pycross_internal_deps_wheel_pip_23.3.1_py3_none_any//file:pip-23.3.1-py3-none-any.whl",
    "poetry_core-1.8.1-py3-none-any.whl": "@rules_pycross_internal_deps_wheel_poetry_core_1.8.1_py3_none_any//file:poetry_core-1.8.1-py3-none-any.whl",
    "tomli-2.0.1-py3-none-any.whl": "@rules_pycross_internal_deps_wheel_tomli_2.0.1_py3_none_any//file:tomli-2.0.1-py3-none-any.whl",
}

# buildifier: disable=unnamed-macro
def targets():
    """Generated package targets."""

    for pin_name, pin_target in PINS.items():
        native.alias(
            name = pin_name,
            actual = ":" + pin_target,
        )

    native.config_setting(
        name = "_env_rules_pycross_deps_target_env",
    )

    # buildifier: disable=unused-variable
    _target = select({
        ":_env_rules_pycross_deps_target_env": "@jvolkman_rules_pycross//pycross/private:rules_pycross_deps_target_env",
    })

    pycross_wheel_library(
        name = "dacite_1.6.0",
        wheel = "@rules_pycross_internal_deps_wheel_dacite_1.6.0_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "installer_0.7.0",
        wheel = "@rules_pycross_internal_deps_wheel_installer_0.7.0_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "packaging_23.2",
        wheel = "@rules_pycross_internal_deps_wheel_packaging_23.2_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "pip_23.3.1",
        wheel = "@rules_pycross_internal_deps_wheel_pip_23.3.1_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "poetry_core_1.8.1",
        wheel = "@rules_pycross_internal_deps_wheel_poetry_core_1.8.1_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "tomli_2.0.1",
        wheel = "@rules_pycross_internal_deps_wheel_tomli_2.0.1_py3_none_any//file",
    )

# buildifier: disable=unnamed-macro
def repositories():
    """Generated package repositories."""

    maybe(
        http_file,
        name = "rules_pycross_internal_deps_wheel_dacite_1.6.0_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/06/9d/11a073172d889e9e0d0ad270a1b468876c82d759af7864a8095dfc73f46d/dacite-1.6.0-py3-none-any.whl",
        ],
        sha256 = "4331535f7aabb505c732fa4c3c094313fc0a1d5ea19907bf4726a7819a68b93f",
        downloaded_file_path = "dacite-1.6.0-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "rules_pycross_internal_deps_wheel_installer_0.7.0_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/e5/ca/1172b6638d52f2d6caa2dd262ec4c811ba59eee96d54a7701930726bce18/installer-0.7.0-py3-none-any.whl",
        ],
        sha256 = "05d1933f0a5ba7d8d6296bb6d5018e7c94fa473ceb10cf198a92ccea19c27b53",
        downloaded_file_path = "installer-0.7.0-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "rules_pycross_internal_deps_wheel_packaging_23.2_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/ec/1a/610693ac4ee14fcdf2d9bf3c493370e4f2ef7ae2e19217d7a237ff42367d/packaging-23.2-py3-none-any.whl",
        ],
        sha256 = "8c491190033a9af7e1d931d0b5dacc2ef47509b34dd0de67ed209b5203fc88c7",
        downloaded_file_path = "packaging-23.2-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "rules_pycross_internal_deps_wheel_pip_23.3.1_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/47/6a/453160888fab7c6a432a6e25f8afe6256d0d9f2cbd25971021da6491d899/pip-23.3.1-py3-none-any.whl",
        ],
        sha256 = "55eb67bb6171d37447e82213be585b75fe2b12b359e993773aca4de9247a052b",
        downloaded_file_path = "pip-23.3.1-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "rules_pycross_internal_deps_wheel_poetry_core_1.8.1_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/99/bc/058b8ff87871fce6615ad032d62c773272f243266b110f7b86d146cf78d8/poetry_core-1.8.1-py3-none-any.whl",
        ],
        sha256 = "194832b24f3283e01c5402eae71a6aae850ecdfe53f50a979c76bf7aa5010ffa",
        downloaded_file_path = "poetry_core-1.8.1-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "rules_pycross_internal_deps_wheel_tomli_2.0.1_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/97/75/10a9ebee3fd790d20926a90a2547f0bf78f371b2f13aa822c759680ca7b9/tomli-2.0.1-py3-none-any.whl",
        ],
        sha256 = "939de3e7a6161af0c887ef91b7d41a53e7c5a1ca976325f429cb46ea9bc30ecc",
        downloaded_file_path = "tomli-2.0.1-py3-none-any.whl",
    )