class Wmc < Formula
  desc "Clean downloaded WhatsApp media on macOS"
  homepage "https://github.com/Rahularya01/wmc"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rahularya01/wmc/releases/download/v0.7.0/wmc-aarch64-apple-darwin.tar.gz"
      sha256 "5f1275b6ae2648043ecb438c4d8d9e7e10c51512079089b6b8faa32030ec1283"
    else
      url "https://github.com/Rahularya01/wmc/releases/download/v0.7.0/wmc-x86_64-apple-darwin.tar.gz"
      sha256 "7c525608adf1df4f73f8b792bf29982aeea1ca7b3f1c807f3e31dec90163041d"
    end
  end

  def install
    bin.install "wmc"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/wmc --help")
  end
end
