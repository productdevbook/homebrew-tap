cask "fil" do
  version "0.2.0"
  sha256 "6d26d6258b7aa45970b93d35ef19d61fe188c4f383c9e8562297949782e176ed"

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
