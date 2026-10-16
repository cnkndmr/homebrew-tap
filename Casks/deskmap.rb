cask "deskmap" do
  version "0.5.0"
  sha256 "c96a74292072ebb06c9f27d3a5665a17dc176ab058f0840a27fa98694f4070e3"

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
