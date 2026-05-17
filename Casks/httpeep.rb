cask "httpeep" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.12"
  sha256 arm:   "4e60233d4bec13232c9a59f152df35d98805fd78733c85e397efdd681eabdaad",
         intel: "a2474387e9524bd3d652cd429c200ca16288781ed61c552aac9b6e52b12df66d"

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
