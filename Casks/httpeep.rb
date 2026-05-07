cask "httpeep" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.7"
  sha256 arm:   "c90867bead1438ff82686e7f15dcc08bb9977ac7977882c3e915f7d65f5ad4f3",
         intel: "14a2a51e50cf44dd1e1f7d0c97e3ba690e1db16b2b0d6ab15f557f8a61516292"

  url "https://s1.httpeep.com/v#{version}/HTTPeep_#{version}_#{arch}.dmg",
      verified: "s1.httpeep.com/"
  name "HTTPeep"
  desc "HTTP and HTTPS proxy debugging tool"
  homepage "https://httpeep.com/"

  livecheck do
    url "https://s1.httpeep.com/latest.json"
    regex(/"version"\s*:\s*"v?(\d+(?:\.\d+)+)"/i)
  end

  app "HTTPeep.app"

  uninstall quit: "com.httpeep.desktop"
end
