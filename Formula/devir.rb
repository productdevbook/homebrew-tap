class Devir < Formula
  desc "Dev Runner CLI - Terminal UI for managing dev services"
  homepage "https://github.com/productdevbook/devir"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.2.0/devir-darwin-arm64.tar.gz"
      sha256 "9e02ef37cb0c87fca565841f0322d19dc9213316f6d22fcbd6f2e31addd4577d"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.2.0/devir-darwin-amd64.tar.gz"
      sha256 "9698b46d8850af4944c5f148c982be5639d8b84ffaaa0e1a3edb3604958f1f66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.2.0/devir-linux-arm64.tar.gz"
      sha256 "30923878544c3868b5bfdcdc885f1c827153a64b6446e6a357498670830ef4ce"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.2.0/devir-linux-amd64.tar.gz"
      sha256 "5bc053512050c7b10f1e61a5427f325ab41866b7e1dbf88f9a694a72571d74d7"
    end
  end

  def install
    bin.install "devir"
  end

  test do
    system "#{bin}/devir", "-h"
  end
end
