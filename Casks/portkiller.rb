cask "portkiller" do
  version "2.5.6"
  sha256 "8bd7cd7422a481e6b5a3e2e5a07ebeb052181fa38aac56badecd29db154977be"

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
