cask "fhindr" do
  arch arm: "-arm64", intel: ""

  version "1.5.0"

  # Build sha's arm64 and normal dmg
  sha256 arm:   "8457d0e7b0265074d40be5cbf421486f84ac4ac6eff4a51a470cf9af49360bbe",
         intel: "728fd839969494b508bca0258eb8fa19494bb3074818aafaead303a95ac1a225"

  url "https://github.com/amaron-team/fhindr/releases/download/#{version}/Fhindr-#{version}#{arch}.dmg"
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
