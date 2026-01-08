class Devir < Formula
  desc "Dev Runner CLI - Terminal UI for managing dev services"
  homepage "https://github.com/productdevbook/devir"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.1.5/devir-darwin-arm64.tar.gz"
      sha256 "7627e1a649485e0a3797c359a965390d614280419ba6a1242a80319e03c0db47"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.1.5/devir-darwin-amd64.tar.gz"
      sha256 "23025cf16195504b4502053cc058e2164903951c1b32eaf543e1461f82cbd6f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.1.5/devir-linux-arm64.tar.gz"
      sha256 "16599db2d0471ccf00ed05c7bc979966b8f7810bc19402ec964a688cb8c2cf1c"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.1.5/devir-linux-amd64.tar.gz"
      sha256 "8c0e24fbb1fee8867369767051c642d8b4043a0cf3d6d2f4c42c8838b9ff8c75"
    end
  end

  def install
    bin.install "devir"
  end

  test do
    system "#{bin}/devir", "-h"
  end
end
