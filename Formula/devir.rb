class Devir < Formula
  desc "Dev Runner CLI - Terminal UI for managing dev services"
  homepage "https://github.com/productdevbook/devir"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.5.0/devir-darwin-arm64.tar.gz"
      sha256 "b2590c2e87e13f7ae0ea52b3a04b18c84a41823673b6f4f231f546e807bcb43d"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.5.0/devir-darwin-amd64.tar.gz"
      sha256 "c8835856652ddb4691bb0027fd7ffce8fbf680a1476d926a62db0c6a36035557"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.5.0/devir-linux-arm64.tar.gz"
      sha256 "af36f07ae5a60162a1e93ab5a1e6cdda2e9bea0ac3d26126f4b36ebd267a24a7"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.5.0/devir-linux-amd64.tar.gz"
      sha256 "6ac1d2a603c623197b97b358184e187f686b17a13b0d7f8f77d8ed8308df226a"
    end
  end

  def install
    bin.install "devir"
  end

  test do
    system "#{bin}/devir", "-h"
  end
end
