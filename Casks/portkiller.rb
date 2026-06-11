cask "portkiller" do
  version "3.3.1"
  sha256 "5dd0070c9d3ad0152f1d0f061a2afd11d1609b3eb23b25cd30aac32fc124d20f"

  url "https://github.com/productdevbook/port-killer/releases/download/v#{version}/PortKiller-v#{version}-macos.dmg"

  name "PortKiller"
  desc "Menu bar app to find and kill processes running on open ports"
  homepage "https://github.com/productdevbook/port-killer"

  depends_on macos: :sequoia

  app "PortKiller.app"

  zap trash: [
    "~/Library/Preferences/com.productdevbook.PortKiller.plist",
    "~/Library/Caches/com.productdevbook.PortKiller",
  ]
end
