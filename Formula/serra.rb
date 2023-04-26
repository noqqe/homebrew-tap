# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Serra < Formula
  desc "serra - Personal Magic: The Gathering Collection Tracker "
  homepage "https://github.com/noqqe/serra"
  version "3.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noqqe/serra/releases/download/3.6.0/serra_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8e11461033ee095f31d522d3c181604a6137968623e282b4f9996e52d3db95c2"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/3.6.0/serra_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "e0e442868a8f5b0c1922246422ef4ff7d1e4672e3252de3d2aa4e2b2f9be18fa"

      def install
        bin.install "serra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noqqe/serra/releases/download/3.6.0/serra_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bd9095a60f003898e12df1a5ba35538ce8481b117bc11b8d9a3b84cfb90cd309"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/3.6.0/serra_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "e733bb0b498dd33d477c6551e273dafe703968c0bf4427844f6bb1e3aa24d459"

      def install
        bin.install "serra"
      end
    end
  end

  test do
    system "#{bin}/serra --version"
  end
end
