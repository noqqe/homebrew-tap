# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Serra < Formula
  desc "serra - Personal Magic: The Gathering Collection Tracker "
  homepage "https://github.com/noqqe/serra"
  version "3.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noqqe/serra/releases/download/3.8.0/serra_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "19ca99147ce1b3ecda07de67fe7a3281a0b3c4491b03d0596d6414b3f3d128b8"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/3.8.0/serra_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "190cb44c43bf91585fc98cff9846da931d63bd4f7d6cb0a4822c7f69014f99e6"

      def install
        bin.install "serra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/3.8.0/serra_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "429a33ff77abe249a6637d31d4071eca399141cd68380bd45226ae310ec8eadd"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noqqe/serra/releases/download/3.8.0/serra_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d3c2c99830c621860d1c87fea400f8bf370a5ec3339ab7d482a8d4e21f7e7c0a"

      def install
        bin.install "serra"
      end
    end
  end

  test do
    system "#{bin}/serra --version"
  end
end
