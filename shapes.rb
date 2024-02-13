# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Shapes < Formula
  desc ""
  homepage ""
  url "https://github.com/alfonsoSR/geometry/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "47aff3e329e82ebf7eb8a258b5bd0670a1c5ec8f5c78f426516ecf46aebe7740"
  license ""

  depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
