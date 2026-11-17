cask "dax" do
  version "3.10.0"
  sha256 "ee1733d5cd4ac3f36adb48e224b40cab56b80778702fba00e2fbc213be5a5fda"

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
