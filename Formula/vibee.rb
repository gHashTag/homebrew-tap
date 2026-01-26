class Vibee < Formula
  desc "Specification-first programming language for Trinity OS"
  homepage "https://github.com/gHashTag/vibee-lang"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gHashTag/vibee-lang/releases/download/v1.0.0/vibee-macos-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/gHashTag/vibee-lang/releases/download/v1.0.0/vibee-macos-x86_64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "vibee-macos-arm64" => "vibee" if Hardware::CPU.arm?
    bin.install "vibee-macos-x86_64" => "vibee" if Hardware::CPU.intel?
  end

  test do
    system "#{bin}/vibee", "--version"
  end
end
