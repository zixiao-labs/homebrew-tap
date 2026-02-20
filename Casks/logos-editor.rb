cask "logos-editor" do
  version "2026.5.8"

  on_arm do
    url "https://github.com/zixiao-labs/logos/releases/download/v#{version}/Logos-2026.5.8-arm64-mac.zip"
    sha256 "8f5de11f9f75e73b8318d87912c8fead7bfec2aea2789cf07199a7f44e67e23a"
  end

  on_intel do
    url "https://github.com/zixiao-labs/logos/releases/download/v#{version}/"
    sha256 ""
  end

  name "Logos"
  desc "A Modern, Lightweight Code Editor"
  homepage "https://github.com/zixiao-labs/logos"

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
