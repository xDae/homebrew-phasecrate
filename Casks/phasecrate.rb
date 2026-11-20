# Homebrew cask for PhaseCrate. Template: scripts/release-mac.sh fills 0.1.5 and
# 6a2c8d785f5c424abb889742969398f090390a88f496888ad1b446a9a66ce186 and publishes the result to the xDae/homebrew-phasecrate tap on every release.
cask "phasecrate" do
  version "0.1.5"
  sha256 "6a2c8d785f5c424abb889742969398f090390a88f496888ad1b446a9a66ce186"

  url "https://downloads.phasecrate.io/mac/studio/PhaseCrate-#{version}-aarch64.dmg"
  name "PhaseCrate"
  desc "Crate manager for vinyl DJs and record collectors"
  homepage "https://phasecrate.io/"

  livecheck do
    url "https://downloads.phasecrate.io/mac/studio/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # The app updates itself (Settings → About); Homebrew leaves it alone between releases.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "PhaseCrate.app"

  zap trash: [
    "~/Library/Application Support/app.phasecrate.studio",
    "~/Library/Caches/app.phasecrate.studio",
    "~/Library/Logs/app.phasecrate.studio",
    "~/Library/WebKit/app.phasecrate.studio",
  ]
end
