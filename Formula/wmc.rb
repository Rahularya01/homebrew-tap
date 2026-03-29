class Wmc < Formula
  desc "Clean downloaded WhatsApp media on macOS"
  homepage "https://github.com/Rahularya01/wmc"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rahularya01/wmc/releases/download/v0.5.0/wmc-aarch64-apple-darwin.tar.gz"
      sha256 "1796007ce4a17780a33d88c4847f3d78248f508ae49d54368be882e58173422f"
    else
      url "https://github.com/Rahularya01/wmc/releases/download/v0.5.0/wmc-x86_64-apple-darwin.tar.gz"
      sha256 "ab3a978fe046ea86dd66b022ace1e6f653f974041d67d9623db6d38100d46469"
    end
  end

  def install
    bin.install "wmc"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/wmc --help")
  end
end
