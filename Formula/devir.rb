class Devir < Formula
  desc "Dev Runner CLI - Terminal UI for managing dev services"
  homepage "https://github.com/productdevbook/devir"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.4.0/devir-darwin-arm64.tar.gz"
      sha256 "64ea1bb8c521d2be1da376701647294eb52b35010a8ae4fa9c854163804dd59b"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.4.0/devir-darwin-amd64.tar.gz"
      sha256 "50cd65264f7a262c220d836915b915ae7754583a55844d0020c05d07065f9233"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.4.0/devir-linux-arm64.tar.gz"
      sha256 "a8fb7a5d334bb3a53bc82a8b907ffb5b15d93ac10aa1b6d0d18ac1f5d7f5ea92"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.4.0/devir-linux-amd64.tar.gz"
      sha256 "8fb2bb42f142566778793d20f156f96015cbf88b50c7295e76433252d1f9e8d2"
    end
  end

  def install
    bin.install "devir"
  end

  test do
    system "#{bin}/devir", "-h"
  end
end
