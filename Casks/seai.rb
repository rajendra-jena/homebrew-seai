cask "seai" do
  version "1.0.0"

  on_arm do
    url "https://github.com/rajendra-jena/seai-release/releases/download/v#{version}/se.AI.By.Infosys-darwin-arm64-#{version}.zip"
    sha256 "9c9b577ac96ae59bb10ce00a861276f6849d119cce835af6428280625b479401"
  end

  on_intel do
    url "https://github.com/rajendra-jena/seai-release/releases/download/v#{version}/se.AI.By.Infosys-darwin-x64-#{version}.zip"
    sha256 "REPLACE_WITH_X64_SHA256"
  end

  name "se.AI By Infosys"
  desc "AI agent for software engineering tasks"
  homepage "https://github.com/rajendra-jena/seai-release/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "se.AI By Infosys.app"

  binary "#{appdir}/se.AI By Infosys.app/Contents/Resources/bin/seai"
  binary "#{appdir}/se.AI By Infosys.app/Contents/Resources/bin/seaid"

  uninstall quit: "com.infosys.seai"

  zap trash: [
    "~/Library/Application Support/seai",
    "~/Library/Application Support/se.AI",
    "~/Library/Caches/seai",
    "~/.config/seai",
    "~/.local/share/seai",
  ]
end
