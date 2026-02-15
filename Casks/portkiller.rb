cask "portkiller" do
  version "3.3.0"
  sha256 "35ff4095045334ab1a5e12bf18420a888533ba901efb256524f3b5e3919d71bc"

  url "https://github.com/productdevbook/port-killer/releases/download/v#{version}/PortKiller-v#{version}-macos.dmg"

  name "PortKiller"
  desc "Menu bar app to find and kill processes running on open ports"
  homepage "https://github.com/productdevbook/port-killer"

  depends_on macos: ">= :sequoia"

  app "PortKiller.app"

  zap trash: [
    "~/Library/Preferences/com.productdevbook.PortKiller.plist",
    "~/Library/Caches/com.productdevbook.PortKiller",
  ]
end
