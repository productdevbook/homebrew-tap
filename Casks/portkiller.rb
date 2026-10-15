cask "portkiller" do
  version "3.4.0"
  sha256 "5265966e7308461b76f8bc35a4b0d28ba6f72150e4715d9a68b8c91b11d8fa60"

  url "https://github.com/productdevbook/port-killer/releases/download/v#{version}/PortKiller-v#{version}-macos.dmg"
  name "PortKiller"
  desc "Menu bar app to find and kill processes running on open ports"
  homepage "https://github.com/productdevbook/port-killer"

  depends_on macos: :sequoia

  app "PortKiller.app"

  zap trash: [
    "~/Library/Caches/com.productdevbook.PortKiller",
    "~/Library/Preferences/com.productdevbook.PortKiller.plist",
  ]
end
