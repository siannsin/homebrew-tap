cask "freshbrew" do
  version "0.2.0"
  sha256 "80508295046c658882dbdb58c0d21739b2afa740fc0d03c1ca18dc1c666ee18e"

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
