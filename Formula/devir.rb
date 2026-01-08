class Devir < Formula
  desc "Dev Runner CLI - Terminal UI for managing dev services"
  homepage "https://github.com/productdevbook/devir"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.3.0/devir-darwin-arm64.tar.gz"
      sha256 "fc7b37161177318c3fad5dcc304e65fa94da0bcd1ccc9e20d83523e2967cb308"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.3.0/devir-darwin-amd64.tar.gz"
      sha256 "99013142c406a0ab7ee311cdb98f82f7d3e503db57984fe3100eb21d660280b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/productdevbook/devir/releases/download/v0.3.0/devir-linux-arm64.tar.gz"
      sha256 "d72f2fbc600a325534a1dcd5efe49f0d010d6fa7bfa7a31a82c1ee84fb5dc755"
    end
    on_intel do
      url "https://github.com/productdevbook/devir/releases/download/v0.3.0/devir-linux-amd64.tar.gz"
      sha256 "ced0fde3c2cab8f5700ae7c932c5e24b9f492092fe74d07a4cc10999d4b16b51"
    end
  end

  def install
    bin.install "devir"
  end

  test do
    system "#{bin}/devir", "-h"
  end
end
