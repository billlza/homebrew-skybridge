class Skybridge < Formula
  desc "SkyBridge CLI headless operator surface"
  homepage "https://github.com/billlza/Skybridge-Compass"
  version "1.0.2"

  on_macos do
    on_arm do
      url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v1.0.2/skybridge-aarch64-apple-darwin.tar.gz"
      sha256 "60eb4e2c876008434340789b64c37d3dc88e53236ce1c52d452e23c585d88f3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v1.0.2/skybridge-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e74fe23c82a11e2ca98bd385f302f33e6bae3e041c13bf1d6b5c4611d09c5ac5"
    end

    on_intel do
      url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v1.0.2/skybridge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fdbc8b1fdb35cf15f42ac005240e525d26ffe36ca6bf97fa4a32749f10678967"
    end
  end

  def install
    bin.install "skybridge"
  end

  test do
    output = shell_output("#{bin}/skybridge version")
    assert_match version.to_s, output
    assert_match "phase_5_signaling_plane", output
  end
end
