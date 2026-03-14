cask "seai" do
  version "1.0.0"

  on_arm do
    url "https://github.com/rajendra-jena/seai-release/releases/download/v#{version}/.zip"
    sha256 "8E978FC035DA6DF55C7792A5DC321B94108C97E6C911D8A53166B7DE2277B36A"
  end

  on_intel do
    url "https://github.com/rajendra-jena/seai-release/releases/download/v#{version}/.zip"
    sha256 "REPLACE_WITH_X64_SHA256"
  end

  name ""
  desc "AI agent for software engineering tasks"
  homepage "https://github.com/rajendra-jena/seai-release/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "se.AI By Infosys.app"

  binary "#{appdir}/apx.app/Contents/Resources/bin/seai"
  binary "#{appdir}apx.app/Contents/Resources/bin/seaid"

  uninstall quit: "com.apx.seai"

  zap trash: [
    "~/Library/Application Support/seai",
    "~/Library/Application Support/se.AI",
    "~/Library/Caches/seai",
    "~/.config/seai",
    "~/.local/share/seai",
  ]
end
