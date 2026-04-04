class Wmc < Formula
  desc "Clean downloaded WhatsApp media on macOS"
  homepage "https://github.com/Rahularya01/wmc"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Rahularya01/wmc/releases/download/v0.6.0/wmc-aarch64-apple-darwin.tar.gz"
      sha256 "dd68bf995690d7b459092366ecac0702546211752ca544f1d4fecb9329f4baa8"
    else
      url "https://github.com/Rahularya01/wmc/releases/download/v0.6.0/wmc-x86_64-apple-darwin.tar.gz"
      sha256 "b054e478cdc2e9c71b61ac06ec70882f0993c4004bd8116752d9cb3b99733587"
    end
  end

  def install
    bin.install "wmc"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/wmc --help")
  end
end
