cask "fil" do
  version "0.1.1"
  sha256 "716157edad5f8b95377cfdf67b118493bdf0684dc035248f990b2ae81a17bc91"

  url "https://github.com/productdevbook/fil/releases/download/v#{version}/fil-#{version}-arm64.tar.gz"
  name "Fil"
  desc "Fast disk scanner and cleaner"
  homepage "https://github.com/productdevbook/fil"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  binary "fil"

  zap trash: "~/Library/Caches/com.vucod.Fil/snapshots"
end
