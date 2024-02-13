# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Shapes < Formula
  desc ""
  homepage ""
  url "https://github.com/alfonsoSR/geometry/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "01744ab2f98451209bf125792a83fb3ba53a41230016241674285a8699e15fe6"
  license ""

  depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
