load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def model():
    """ Load ML Models as Dependency """
    if "ssd_mobilenet_v2_coco" not in native.existing_rules():
        http_archive(
            name = "ssd_mobilenet_v2_coco",
            build_file = "//third_party/model:model.BUILD",
            strip_prefix = "ssd_mobilenet_v2_coco_2018_03_29",
            sha256 = "b9dcb0701542e169fe2ceda0066c0df3008ca01bcd99612e859b72f77d1e3701",
            url = "https://github.com/jinay1991/perception/releases/download/v1/ssd_mobilenet_v2_coco_2018_03_29.tar.gz",
        )
