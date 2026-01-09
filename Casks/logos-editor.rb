cask "logos-editor" do
  version "2026.3.1"

  on_arm do
    url "https://github.com/Zixiao-System/logos/releases/download/v#{version}/Logos-2026.3.1-arm64-mac.zip"
    sha256 "d8163a1c9fb1771c70751759a9ee18c9f5c90a37a57708dd81e5118211ab0276"
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
