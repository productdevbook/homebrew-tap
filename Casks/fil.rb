cask "fil" do
  version "0.1.0"
  sha256 "19f8e81ff6ed2623aa15180cebc1cdf11be6996b3259083980bed2e2c57e70c8"

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
