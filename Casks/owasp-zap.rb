cask "owasp-zap" do
  version "2.11.0"
  sha256 "881391488199ee8f87ed52aa7bd43993a3993b9931d3418c0dfa5dfedb92c854"

  url "https://github.com/zaproxy/zaproxy/releases/download/v#{version}/ZAP_#{version}.dmg",
      verified: "github.com/zaproxy/zaproxy/"
  name "OWASP Zed Attack Proxy"
  name "ZAP"
  desc "Free and open source web app scanner"
  homepage "https://www.zaproxy.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OWASP ZAP.app"

  zap trash: [
    "~/Library/Application Support/ZAP",
    "~/Library/Preferences/org.zaproxy.zap.plist",
  ]
end
