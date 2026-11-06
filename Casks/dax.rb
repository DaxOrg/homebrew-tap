cask "dax" do
  version "3.8.5"
  sha256 "4665332a21b3160d7eb8a31e94c4a3b4985d70d7fe7fe7f4120d18600a018940"

  url "https://github.com/DaxOrg/public.macos.getdax.app/releases/download/v#{version}/Dax.dmg",
      verified: "github.com/DaxOrg/public.macos.getdax.app/"
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
