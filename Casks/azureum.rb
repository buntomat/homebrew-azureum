cask "azureum" do
  version "1.5"
  sha256 "4395a9b2acc7934f288782b5476b747709231a915b9777661bc8ead4074b81d9"

  url "https://azureum.de/files/Azureum-#{version}.dmg"
  name "Azureum"
  desc "Globus und Karte für macOS mit freien Geodaten"
  homepage "https://azureum.de"

  livecheck do
    url "https://azureum.de/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Azureum.app"

  zap trash: [
    "~/Library/Application Support/de.azureum.app",
    "~/Library/Caches/de.azureum.app",
    "~/Library/HTTPStorages/de.azureum.app",
    "~/Library/Preferences/de.azureum.app.plist",
    "~/Library/Saved Application State/de.azureum.app.savedState",
  ]
end
