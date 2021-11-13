cask "drawio" do
<<<<<<< HEAD
  
   if Hardware::CPU.intel?
    version "14.4.3"
    sha256 "ac050acca9c455dddea4e9221bef22bb8a838107ee39a43ac6f673df8799dcdb"

    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  else
    version "14.4.3"
    sha256 "644988e1ad2fbf7a876189ebaa97796d24c9bc5f9d3c5c335c10730d956e25c1"

    url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-arm64-#{version}.dmg",
        verified: "github.com/jgraph/drawio-desktop/"
  end
  
 
  appcast "https://github.com/jgraph/drawio-desktop/releases.atom"
=======
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "15.7.3"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  if Hardware::CPU.intel?
    sha256 "62e6a8afd22a100021f73fbbefb21c1751dc91a5df23da5b2a8bc7a9ccc2763c"
  else
    sha256 "f3340df9bddcd813c7b3fbdf3cd90dfcbd930d1cfffbb9c071148cb8c9a1c729"
  end

>>>>>>> upstream/master
  name "draw.io Desktop"
  desc "Draw.io is free online diagram software"
  homepage "https://www.diagrams.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "draw.io.app"

  zap trash: [
    "~/Library/Application Support/draw.io",
    "~/Library/Caches/com.jgraph.drawio.desktop",
    "~/Library/Logs/draw.io",
    "~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist",
    "~/Library/Preferences/com.jgraph.drawio.desktop.plist",
    "~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState",
    "~/Library/WebKit/com.jgraph.drawio.desktop",
  ]
end
