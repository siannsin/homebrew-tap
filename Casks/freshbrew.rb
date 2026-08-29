cask "freshbrew" do
  version "0.3.0"
  sha256 "851b3edc92eb5682e69d236e18ff56d518c43ecec61dc7aaa62e40fa9044b71e"

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
