cask "dax" do
  version "3.9.7"
  sha256 "04a1021be1258e467c07b28a86e74ab87a022a1b7cd52bc418414f04c293997a"

  url "https://github.com/DaxOrg/public.macos.getdax.app/releases/download/v#{version}/Dax.dmg"
  name "Dax"
  desc "Command centre for coding agents, terminals and AI tools"
  homepage "https://getdax.app/"

  livecheck do
    url "https://raw.githubusercontent.com/DaxOrg/public.macos.getdax.app/main/appcast-daxpro.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DaxPro.app"

  zap trash: [
    "~/.dax",
    "~/Library/Application Support/Dax",
    "~/Library/Application Support/DaxPro Migration",
    "~/Library/Caches/app.getdax.DaxPro",
    "~/Library/HTTPStorages/app.getdax.DaxPro",
    "~/Library/HTTPStorages/app.getdax.DaxPro.binarycookies",
    "~/Library/Logs/Dax",
    "~/Library/Preferences/app.getdax.DaxPro.lidhelper.plist",
    "~/Library/Preferences/app.getdax.DaxPro.plist",
    "~/Library/Preferences/app.getdax.DaxPro.ReplacementRepair.plist",
    "~/Library/WebKit/app.getdax.DaxPro",
  ]
end
