cask "rusty-ide" do
  version "0.1.64"
  sha256 "cfe724160d2b8db17a62bfb5b0db2d2bc7ff1e4004de169764e53ee22b21911e"

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
