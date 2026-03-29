class Wmc < Formula
  desc "Clean downloaded WhatsApp media on macOS"
  homepage "https://github.com/Rahularya01/wmc"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rahularya01/wmc/releases/download/v0.3.0/wmc-aarch64-apple-darwin.tar.gz"
      sha256 "272e3d497e97447d6d51796b5aa32d037feb62d32e33ee3778fd740dfa25dbdd"
    else
      url "https://github.com/Rahularya01/wmc/releases/download/v0.3.0/wmc-x86_64-apple-darwin.tar.gz"
      sha256 "41cb0889766f381261c843afd524959bcdd1ecd77d7113c13f95b580befd661f"
    end
  end

  def install
    bin.install "wmc"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/wmc --help")
  end
end
