cask "lamba" do
  version "0.1.0"
  sha256 "34058d299e19569e8afda546af0aba8310feb119cfa77b5c4971a5367c41796a"

  url "https://github.com/productdevbook/lamba/releases/download/v#{version}/Lamba-#{version}.dmg"
  name "Lamba"
  desc "Status light, Pomodoro, Dock and Claude Code sessions for the menu bar"
  homepage "https://github.com/productdevbook/lamba"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Lamba.app"

  uninstall quit:      "dev.hamur.lamba",
            launchctl: "dev.hamur.lamba.helper",
            delete:    [
              "/Library/LaunchDaemons/dev.hamur.lamba.helper.plist",
              "/Library/PrivilegedHelperTools/dev.hamur.lamba.helper",
              "/usr/local/bin/lamba",
            ]

  zap trash: [
    "~/Library/Application Support/Lamba",
    "~/Library/Caches/dev.hamur.lamba",
    "~/Library/HTTPStorages/dev.hamur.lamba",
    "~/Library/Preferences/dev.hamur.lamba.plist",
  ]
end
