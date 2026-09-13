cask "rusty-ide" do
  version "0.1.19"
  sha256 "42d53c4f0c6db5336bde554fc4c274db657e58c83ba335c74ddab2e8200b2ce0"

  url "https://github.com/traian18/rusty/releases/download/v#{version}/Rusty-IDE_#{version}_aarch64.dmg"
  name "Rusty IDE"
  desc "AI-assisted coding IDE"
  homepage "https://github.com/traian18/rusty"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Rusty-IDE.app"

  zap trash: [
    "~/Library/Application Support/com.suciuvictortraian.rusty",
    "~/Library/Caches/com.suciuvictortraian.rusty",
    "~/Library/Preferences/com.suciuvictortraian.rusty.plist",
    "~/Library/Saved Application State/com.suciuvictortraian.rusty.savedState",
  ]
end
