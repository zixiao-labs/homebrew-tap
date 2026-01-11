cask "logos-editor" do
  version "2026.4.1"

  on_arm do
    url "https://github.com/Zixiao-System/logos/releases/download/v#{version}/Logos-2026.4.1-arm64-mac.zip"
    sha256 "00bd0fbf3de343e8325b744ab10dbe4d5457e60950d7a878c300489e4af44c04"
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
