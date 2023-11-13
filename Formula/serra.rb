# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Serra < Formula
  desc "serra - Personal Magic: The Gathering Collection Tracker "
  homepage "https://github.com/noqqe/serra"
  version "3.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noqqe/serra/releases/download/3.13.0/serra_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "823c17a22fec519f9a31471a0f174db10f4e82380b5e09b2503460d9769f9a12"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/3.13.0/serra_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "0edd30fcdb47212775c18e659249c47d7c456ec3ca56af0bd3ae0a3ec319f0b6"

      def install
        bin.install "serra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noqqe/serra/releases/download/3.13.0/serra_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8c918a3e34ab679425dc0b3682ecda11186a68b1df225ee31d5ab45a27bef825"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/3.13.0/serra_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "6eddec356486731d954b59baa89fb3a5094a29c6ddceb606214c2919f9d92911"

      def install
        bin.install "serra"
      end
    end
  end

  test do
    system "#{bin}/serra --version"
  end
end
