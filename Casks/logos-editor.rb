cask "logos-editor" do
  version "2026.5.9"

  on_arm do
    url "https://github.com/zixiao-labs/logos/releases/download/v#{version}/Logos-2026.5.9-arm64-mac.zip"
    sha256 "1a41d92b6ba63a2f117f3680c4b49938d483aa74cf0e9792c2a7f91222c7a9ee"
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
