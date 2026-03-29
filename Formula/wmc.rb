class Wmc < Formula
  desc "Clean downloaded WhatsApp media on macOS"
  homepage "https://github.com/Rahularya01/wmc"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rahularya01/wmc/releases/download/v0.1.0/wmc-aarch64-apple-darwin.tar.gz"
      sha256 "2ff2d4cca8b60d6cd24f249975cd3aca5afb0c32943132b55766f409fbee7a8f"
    else
      url "https://github.com/Rahularya01/wmc/releases/download/v0.1.0/wmc-x86_64-apple-darwin.tar.gz"
      sha256 "2654b6e7fc1bbb2934921bfe58adc922c844700c8b5595faef1498bd645178f2"
    end
  end

  def install
    bin.install "wmc"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/wmc --help")
  end
end
