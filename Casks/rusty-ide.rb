cask "rusty-ide" do
  version "0.1.47"
  sha256 "a24a152dec599acacc1b14a92e73c6f1cb9f00bff86c429769154164abf622ca"

  url "https://github.com/traian18/rusty-ide/releases/download/v#{version}/Rusty-IDE_#{version}_aarch64.dmg"
  name "Rusty IDE"
  desc "AI-assisted coding IDE"
  homepage "https://github.com/traian18/rusty-ide"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Rusty-IDE.app"

  zap trash: [
    "~/Library/Application Support/com.rusty.ide",
    "~/Library/Caches/com.rusty.ide",
    "~/Library/Preferences/com.rusty.ide.plist",
    "~/Library/Saved Application State/com.rusty.ide.savedState",
  ]
end
