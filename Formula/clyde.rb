# typed: false
# frozen_string_literal: true

class Clyde < Formula
  desc "Terminal-based UI for monitoring Project Calico network flows in real-time"
  homepage "https://github.com/doucol/clyde/"
  version "0.4.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/doucol/clyde/releases/download/v0.4.4/clyde_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "42c5e7470a87b001e5c36b2509fcb0b2629100bbe1a15fca0b6b45cd27fa0a82"

      def install
        bin.install "clyde"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/doucol/clyde/releases/download/v0.4.4/clyde_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5dceae6cb7dd8d86700363aba237f4780a2da501a3adb70dc47c85bb747ba176"

      def install
        bin.install "clyde"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/doucol/clyde/releases/download/v0.4.4/clyde_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "39794a1a08f35bb7249e7db2ec723a98c5ce657cc1b43cc6d0c264680071b671"
      def install
        bin.install "clyde"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/doucol/clyde/releases/download/v0.4.4/clyde_linux_arm64.tar.gz", using: CurlDownloadStrategy
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
