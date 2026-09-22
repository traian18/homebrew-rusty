cask "rusty-ide" do
  version "0.1.25"
  sha256 "3e4c6c968129f8adc3b57742c7c73c0a6a9ce29b941886858ff48ec4b0998ed4"

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
