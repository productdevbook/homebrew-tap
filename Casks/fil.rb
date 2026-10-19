cask "fil" do
  version "0.3.0"
  sha256 "49ec10f1a0fe3c474127677e2426cfa077c40e99b87edc980d9da4d39feea1f6"

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
  zsh_completion "completions/_fil"
  bash_completion "completions/fil.bash"
  fish_completion "completions/fil.fish"
  manpage "man/fil.1"

  zap trash: "~/Library/Caches/com.vucod.Fil/snapshots"
end
