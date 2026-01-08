cask "logos" do
  version "2026.2.1"

  on_arm do
    url "https://github.com/Zixiao-System/logos/releases/download/v#{version}/Logos-2026.2.1-arm64-mac.zip"
    sha256 "c7fb45608e9a22fac6029a25039641161047b4d011c13feaec826109aa0ca7bc"
  end

  on_intel do
    url "https://github.com/Zixiao-System/logos/releases/download/v#{version}/"
    sha256 ""
  end

  name "Logos"
  desc "A Modern, Lightweight Code Editor"
  homepage "https://github.com/Zixiao-System/logos"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Logos.app"

  zap trash: [
    "~/Library/Application Support/logos",
    "~/Library/Caches/io.zixiao.logos",
    "~/Library/Preferences/io.zixiao.logos.plist",
    "~/Library/Saved Application State/io.zixiao.logos.savedState",
  ]
end
