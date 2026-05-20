cask "httpeep" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.13"
  sha256 arm:   "2bec82a9e24b075178cf29dd8571397140d7a5f17ca018e3ab58298b5e828b36",
         intel: "e96a34a7a9efc463aaa411821a4262ef34c1874e5aabbb6abbef962618b045d9"

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
