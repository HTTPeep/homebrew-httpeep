cask "httpeep" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.11"
  sha256 arm:   "ea70b5729f79f26a34ea6b3b7dcf917ff76841dc36a966fb738f0369adb08b1e",
         intel: "4c06d7aaccbd14cb088c7fd57c7bf02da0fa33c129669d330f5cbc23d09198a3"

  url "https://s1.httpeep.com/v#{version}/HTTPeep_#{version}_#{arch}.dmg"
  name "HTTPeep"
  desc "HTTP and HTTPS proxy debugging tool"
  homepage "https://httpeep.com/"

  livecheck do
    url "https://s1.httpeep.com/latest.json"
    regex(/"version"\s*:\s*"v?(\d+(?:\.\d+)+)"/i)
  end

  app "HTTPeep.app"
  binary "#{appdir}/HTTPeep.app/Contents/MacOS/httpeep-cli"
  binary "#{appdir}/HTTPeep.app/Contents/MacOS/httpeep-cli", target: "hp"

  uninstall quit: "com.httpeep.desktop"
end
