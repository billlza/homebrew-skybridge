class Skybridge < Formula
  desc "SkyBridge CLI headless operator surface"
  homepage "https://github.com/billlza/Skybridge-Compass"
  version "0.2.3"

  depends_on arch: :arm64

  on_arm do
    url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v0.2.3/skybridge-aarch64-apple-darwin.tar.gz"
    sha256 "b86d69242065548d09f5d1d41eda1e391cb372dea038c9370337f55562257eee"
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
