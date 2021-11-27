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

  version "15.8.4"

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  if Hardware::CPU.intel?
    sha256 "a61717c988164c13c4a2c9607f998c40325e619b6911601c8b07c92cdd074c7a"
  else
    sha256 "be4b9bc59b7ff7d4f1d60c53cfb6201b510eddef6b3d76648be5dbf7ab36e954"
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
