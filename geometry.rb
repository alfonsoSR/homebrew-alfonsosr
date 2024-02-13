# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Geometry < Formula
  desc ""
  homepage ""
  url "https://github.com/alfonsoSR/geometry/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "47aff3e329e82ebf7eb8a258b5bd0670a1c5ec8f5c78f426516ecf46aebe7740"
  license ""

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", "--disable-silent-rules", *std_configure_args
	system "cmake", "-S", ".", "-B", "build"
	system "make", "-C", "build"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end
end
