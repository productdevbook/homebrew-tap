cask "portkiller" do
  version "2.2.0"
  sha256 "bb6490186d480d2fe86fe0db390b4a11cb9db8bb92f61e9ebf06a99fd7286f82"

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
