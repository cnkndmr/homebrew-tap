cask "deskmap" do
  version "0.6.0"
  sha256 "54d9979424176235bac92ffcd183ff23c90c526f5f14d31247f3ad5b3c4cec62"

  url "https://github.com/cnkndmr/Deskmap/releases/download/v#{version}/Deskmap-#{version}.zip"
  name "Deskmap"
  desc "Keeps every window on the right display, desktop and layout"
  homepage "https://github.com/cnkndmr/Deskmap"

  depends_on macos: :ventura

  app "Deskmap.app"

  zap trash: [
    "~/Library/Application Support/Deskmap",
    "~/Library/Preferences/com.deskmap.app.plist",
  ]
end
