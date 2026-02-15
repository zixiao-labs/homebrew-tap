cask "logos-editor" do
  version "2026.5.7"

  on_arm do
    url "https://github.com/zixiao-labs/logos/releases/download/v#{version}/Logos-2026.5.7-arm64-mac.zip"
    sha256 "f2837b3cd751bab10a973008a7be3774995d2a31fa7e8482c2ab4c1256fc4863"
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
