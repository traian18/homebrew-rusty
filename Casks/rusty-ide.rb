cask "rusty-ide" do
  version "0.1.18"
  sha256 "d3a5476869ea088711617160a3be59293fc7367a909d8d76c6e0e02da607c349"

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
