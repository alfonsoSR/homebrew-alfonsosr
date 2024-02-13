# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Shapes < Formula
  desc ""
  homepage ""
  url "https://github.com/alfonsoSR/geometry/archive/refs/tags/0.0.3.tar.gz"
  sha256 "7529ad1465343cc92f40f87f20c7346280672771cca0edd454c7c3ec22da4c4f"
  license ""

  depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
