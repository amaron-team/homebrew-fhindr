cask "fhindr" do
  arch arm: "-arm64", intel: ""

  version "1.4.4"

  # Build sha's arm64 and normal dmg
  sha256 arm:   "528e96febcc6157d5a194224e101011133dd9333069a0085cb722192702ef6d1",
         intel: "c802d4b6aefaa24568af05eab5276dc410f16b00ef8082db22bc1f58729fa9ad"

  url "https://github.com/amaron-team/fhindr/releases/download/1.4.4/Fhindr-1.4.2#{arch}.dmg"
  name "Fhindr"
  desc "Visualization tool for FHIR (Fast Healthcare Interoperability Resources)"
  homepage "https://github.com/amaron-team/fhindr"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Fhindr.app"

  zap trash: [
    "~/Library/Application Support/fhindr",
    "~/Library/Preferences/be.amaron.fhindr.plist",
    "~/Library/Saved Application State/be.amaron.fhindr.savedState",
  ]
end
