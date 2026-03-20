class Skybridge < Formula
  desc "SkyBridge CLI headless operator surface"
  homepage "https://github.com/billlza/Skybridge-Compass"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v1.0.1/skybridge-aarch64-apple-darwin.tar.gz"
      sha256 "6a28b2a949017942e61b93ca6fc0e6ea0cb311c1c252babd8c67298e6b66417b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v1.0.1/skybridge-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6dd03944cdb6676043ebfc772e1293cee0036350d22c8d7bf21d792dfef40f41"
    end

    on_intel do
      url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v1.0.1/skybridge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf76343a5792ac33e5abcd7cfd28f6ca75d1fdf877a38a3dbc4c2d73a2c180e2"
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
