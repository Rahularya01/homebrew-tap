class Wmc < Formula
  desc "Clean downloaded WhatsApp media on macOS"
  homepage "https://github.com/Rahularya01/wmc"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rahularya01/wmc/releases/download/v0.2.0/wmc-aarch64-apple-darwin.tar.gz"
      sha256 "6cfa371a5ac8a76c0c652be78348f4f1718e6442c289356834df6851678e7c5b"
    else
      url "https://github.com/Rahularya01/wmc/releases/download/v0.2.0/wmc-x86_64-apple-darwin.tar.gz"
      sha256 "35ccd403475de3af2582bcca452d95e752808d106dbf1b0e6787436d06e11eb5"
    end
  end

  def install
    bin.install "wmc"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/wmc --help")
  end
end
