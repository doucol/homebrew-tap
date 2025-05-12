class Clyde < Formula
  desc "Terminal-based UI for monitoring Project Calico network flows in real-time"
  homepage "https://github.com/doucol/clyde"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/doucol/clyde/releases/download/v#{version}/clyde_Darwin_arm64.tar.gz"
      sha256 "3145f5adb9850b80c4f9e699f5f7dd01b621306a3ac60e98e740427b09b4ae96"
    end
    on_intel do
      url "https://github.com/doucol/clyde/releases/download/v#{version}/clyde_Darwin_x86_64.tar.gz"
      sha256 "370413c1a6654b5544186406130b4494695d9a613811a3961693fba2e3617c8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doucol/clyde/releases/download/v#{version}/clyde_Linux_arm64.tar.gz"
      sha256 "5f2d8bab1a95bf784ac829f919298230cbf903a1d583ffe334444d2cff37f89f"
    end
    on_intel do
      url "https://github.com/doucol/clyde/releases/download/v#{version}/clyde_Linux_x86_64.tar.gz"
      sha256 "745609c75fdb3840feb82c4f680ece00cbe2d34c7d3c041f49ee592f9a32c177"
    end
  end

  def install
    bin.install "clyde"
  end

  test do
    assert_match "clyde", shell_output("#{bin}/clyde --help")
  end
end
