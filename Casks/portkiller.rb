cask "portkiller" do
  version "2.4.1"
  sha256 "76ee30a02ae1dd9d7649d34df62cded8e4f8208ff3fa66376308c00bb039f295"

  url "https://github.com/productdevbook/port-killer/releases/download/v#{version}/PortKiller-v#{version}-arm64.dmg"
  name "PortKiller"
  desc "Menu bar app to find and kill processes running on open ports"
  homepage "https://github.com/productdevbook/port-killer"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "PortKiller.app"

  zap trash: [
    "~/Library/Preferences/com.productdevbook.PortKiller.plist",
    "~/Library/Caches/com.productdevbook.PortKiller",
  ]
end
