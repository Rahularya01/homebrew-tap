class Wmc < Formula
  desc "Clean downloaded WhatsApp media on macOS"
  homepage "https://github.com/Rahularya01/wmc"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rahularya01/wmc/releases/download/v0.4.0/wmc-aarch64-apple-darwin.tar.gz"
      sha256 "a31c6b0018636a211a40c892879e6c4390749a94fe202c66137c8eb732a9c511"
    else
      url "https://github.com/Rahularya01/wmc/releases/download/v0.4.0/wmc-x86_64-apple-darwin.tar.gz"
      sha256 "84100aa3a569cbc80d00d0f4d7945caf1670c2e5e95a6bdc6d47a24a8e86ae55"
    end
  end

  def install
    bin.install "wmc"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/wmc --help")
  end
end
