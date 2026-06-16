class Skybridge < Formula
  desc "SkyBridge CLI headless operator surface"
  homepage "https://github.com/billlza/Skybridge-Compass"
  version "0.1.0"

  depends_on arch: :arm64

  on_arm do
    url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v0.1.0/skybridge-aarch64-apple-darwin.tar.gz"
    sha256 "ef17dc3cf0697fad14fed089fb6594413accbf19021271fc8abf42199077ad62"
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
