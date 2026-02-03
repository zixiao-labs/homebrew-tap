cask "logos-editor" do
  version "2026.5.6"

  on_arm do
    url "https://github.com/zixiao-labs/logos/releases/download/v#{version}/Logos-2026.5.6-arm64-mac.zip"
    sha256 "a48ab987fb3220dd392b5a5b42fdf5b7a39cb7a0f7f350816a45671d8a97fbf3"
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
