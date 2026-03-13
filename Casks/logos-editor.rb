cask "logos-editor" do
  version "2026.6.1"

  on_arm do
    url "https://github.com/zixiao-labs/logos/releases/download/v#{version}/Logos-2026.6.1-arm64-mac.zip"
    sha256 "0b498b40dd5d96ec3bfff25b2768a1bea4985bd5fbf4fb34be317ceb00f8309c"
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
