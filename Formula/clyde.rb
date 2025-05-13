class Clyde < Formula
  desc "Terminal-based UI for monitoring Project Calico network flows in real-time"
  homepage "https://github.com/doucol/clyde"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/doucol/clyde/releases/download/v#{version}/clyde_Darwin_arm64.tar.gz"
      sha256 "51b763e2f7b0a49de77d0fbe88f02b1034bd48e470e1888f0024b889394ab633"
    end
    on_intel do
      url "https://github.com/doucol/clyde/releases/download/v#{version}/clyde_Darwin_x86_64.tar.gz"
      sha256 "5b67effdd5377a464fa7e9ce8b2d3caab0dc23166366d376b58f00649d889802"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doucol/clyde/releases/download/v#{version}/clyde_Linux_arm64.tar.gz"
      sha256 "89c0594a979c1c160296408ad494138ead00ea835aadce2f68502c170379fa81"
    end
    on_intel do
      url "https://github.com/doucol/clyde/releases/download/v#{version}/clyde_Linux_x86_64.tar.gz"
      sha256 "6f6fd18a36610ce1274193b7c427e8cb21d746761b789b8d8a53edcecf34d183"
    end
  end

  def install
    bin.install "clyde"
  end

  test do
    assert_match "clyde", shell_output("#{bin}/clyde --help")
  end
end
