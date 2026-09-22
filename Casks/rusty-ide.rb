cask "rusty-ide" do
  version "0.1.27"
  sha256 "56e569a0d01673fa8144c94cf593c6f3082a3b2084698ed05bd56c793a209fe4"

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
