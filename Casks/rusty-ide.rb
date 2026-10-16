cask "rusty-ide" do
  version "0.1.58"
  sha256 "afd81ce05ff940ed2bacf8223fc4008cb5eb831be4d99fdfe5c4656f3c0d1dbf"

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
