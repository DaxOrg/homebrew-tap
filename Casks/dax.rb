cask "dax" do
  version "3.9.11"
  sha256 "b3c0c22f4978cb202a42f8a0b53e391f76b6e135434fc86aeebd13c5ad0a8464"

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
