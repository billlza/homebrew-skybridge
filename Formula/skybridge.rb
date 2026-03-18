class Skybridge < Formula
  desc "SkyBridge CLI headless operator surface"
  homepage "https://github.com/billlza/Skybridge-Compass"
  version "1.0.0"

  depends_on arch: :arm64

  on_arm do
    url "https://github.com/billlza/Skybridge-Compass/releases/download/skybridge-cli-v1.0.0/skybridge-aarch64-apple-darwin.tar.gz"
    sha256 "9c4c7b58da24c2689310434f4026151e1d72b55ac258b6e69aa743c0a7a3fc6a"
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
