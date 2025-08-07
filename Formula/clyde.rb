# typed: false
# frozen_string_literal: true

class Clyde < Formula
  desc "Terminal-based UI for monitoring Project Calico network flows in real-time"
  homepage "https://github.com/doucol/clyde/"
  version "0.4.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/doucol/clyde/releases/download/v0.4.4/clyde_0.4.4_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "42c5e7470a87b001e5c36b2509fcb0b2629100bbe1a15fca0b6b45cd27fa0a82"

      def install
        bin.install "clyde"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/doucol/clyde/releases/download/v0.4.4/clyde_0.4.4_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5dceae6cb7dd8d86700363aba237f4780a2da501a3adb70dc47c85bb747ba176"

      def install
        bin.install "clyde"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/doucol/clyde/releases/download/v0.4.13/clyde_0.4.13_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "69897f881af8e33ae66c951e2387055ddf6ff23cf75e750c78d2541c0cf9d342"
      def install
        bin.install "clyde"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/doucol/clyde/releases/download/v0.4.4/clyde_0.4.4_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "600d369ff69aadd566d28633b983f36a8503aa774370e61f7f9debf2b80eb82a"
      def install
        bin.install "clyde"
      end
    end
  end

  test do
    assert_match "v0.4.4", shell_output("#{bin}/clyde version")
  end
end
