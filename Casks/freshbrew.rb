cask "freshbrew" do
  version "0.4.0"
  sha256 "3cfb719cedab1b476c68b5ce327a496b4160f5b6a9b25cbd20c2236f86462ed4"

  url "https://github.com/siannsin/FreshBrew/releases/download/v#{version}/FreshBrew-#{version}-universal.dmg"
  name "FreshBrew"
  desc "Menu bar utility for checking and updating Homebrew packages"
  homepage "https://github.com/siannsin/FreshBrew"

  depends_on macos: :sonoma

  app "FreshBrew.app"

  caveats <<~EOS
    FreshBrew is ad-hoc signed and is not Apple-notarized. If macOS blocks the
    first launch, open System Settings > Privacy & Security and choose Open Anyway.
  EOS

  zap trash: [
    "~/Library/Application Support/FreshBrew",
    "~/Library/Preferences/net.siann.freshbrew.plist",
  ]
end
