cask "lamba" do
  version "0.1.1"
  sha256 "66d3a41532b820c1fc24f48236ccdb8b6ad1e173992841722674a784a70c5b2b"

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
