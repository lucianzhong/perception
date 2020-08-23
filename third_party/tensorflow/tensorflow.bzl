load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def tensorflow():
    """ Load TensorFlow as Dependency """
    if "bazel_skylib" not in native.existing_rules():
        http_archive(
            name = "bazel_skylib",
            urls = [
                "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
                "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
            ],
            sha256 = "97e70364e9249702246c0e9444bccdc4b847bed1eb03c5a3ece4f83dfe6abc44",
        )

    if "io_bazel_rules_closure" not in native.existing_rules():
        http_archive(
            name = "io_bazel_rules_closure",
            sha256 = "9d4b3af0efb86b4f3b1658d12ad485e089587b537bfee0474f2a8549ad1d7f2c",
            strip_prefix = "rules_closure-0.10.0",
            url = "https://github.com/bazelbuild/rules_closure/archive/0.10.0.zip",
        )

    if "org_tensorflow" not in native.existing_rules():
        http_archive(
            name = "org_tensorflow",
            sha256 = "e82f3b94d863e223881678406faa5071b895e1ff928ba18578d2adbbc6b42a4c",
            strip_prefix = "tensorflow-2.1.0",
            url = "https://github.com/tensorflow/tensorflow/archive/v2.1.0.zip",
        )

    # if "com_google_protobuf" not in native.existing_rules():
    #     http_archive(
    #         name = "com_google_protobuf",
    #         sha256 = "cfcba2df10feec52a84208693937c17a4b5df7775e1635c1e3baffc487b24c9b",
    #         strip_prefix = "protobuf-3.9.2",
    #         url = "https://github.com/protocolbuffers/protobuf/archive/v3.9.2.zip",
    #     )

    if "tensorflow-linux" not in native.existing_rules():
        http_archive(
            name = "tensorflow-linux",
            build_file = "//third_party/tensorflow:tensorflow.BUILD",
            sha256 = "6ebeccc6145a2d131e854968055296cacb03ddbc6756bb536f54ad0891857d23",
            strip_prefix = "libtensorflow_cc-2.3.0-macosx",
            url = "https://github.com/jinay1991/perception/releases/download/v0.1/libtensorflow_cc-2.3.0-macosx.tar.gz",
        )

    if "tensorflow-osx" not in native.existing_rules():
        http_archive(
            name = "tensorflow-osx",
            build_file = "//third_party/tensorflow:tensorflow.BUILD",
            sha256 = "6ebeccc6145a2d131e854968055296cacb03ddbc6756bb536f54ad0891857d23",
            strip_prefix = "libtensorflow_cc-2.3.0-macosx",
            url = "https://github.com/jinay1991/perception/releases/download/v0.1/libtensorflow_cc-2.3.0-macosx.tar.gz",
        )
