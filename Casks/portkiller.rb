cask "portkiller" do
  version "3.3.3"
  sha256 "f18d0f197f3401ebbd2dc81881793f4174b772494e4357f4a6330e2902ccb4d8"

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
