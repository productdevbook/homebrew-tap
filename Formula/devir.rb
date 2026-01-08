class Devir < Formula
  desc "Dev Runner CLI - Terminal UI for managing dev services"
  homepage "https://github.com/productdevbook/devir"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.4.1/devir-darwin-arm64.tar.gz"
      sha256 "8b43b6cd2e7de422f55d12238fcc9b586b835152b5941f85f4f374ae15406d69"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.4.1/devir-darwin-amd64.tar.gz"
      sha256 "98c9fafdafe75bd57f4cb86ab745da08751d14e12a86ccb4ce2f9d11f95f5397"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.4.1/devir-linux-arm64.tar.gz"
      sha256 "d888805a4d12a7516a61db5bbdf51f7308bec1a565dc09061146d3ad49e9d45f"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.4.1/devir-linux-amd64.tar.gz"
      sha256 "d4f78464d12a2dff94a1c0e3c7e8689477d98b2b5e5f619ee2f47bb8e9407b6e"
    end
  end

  def install
    bin.install "devir"
  end

  test do
    system "#{bin}/devir", "-h"
  end
end
