# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Serra < Formula
  desc "serra - Personal Magic: The Gathering Collection Tracker "
  homepage "https://github.com/noqqe/serra"
  version "3.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noqqe/serra/releases/download/3.2.1/serra_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c3469df5dc2dacbd6aa67db4539c62c4f58e02fc24a18af4b48936c9c56b9714"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/3.2.1/serra_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "e8bd50f9df7776309fd1c8da4e29d1a949a0d9969ad26019e7e57fcd1a749bdb"

      def install
        bin.install "serra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noqqe/serra/releases/download/3.2.1/serra_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5cb550623620a81b38bd851064531cbec6e9ce7b9a13d6458aa832aa362fbf38"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/3.2.1/serra_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "cf8aabbbda10b8840704abb6ee2e3a5107e85fde0389577fdda1c9ab93bb6569"

      def install
        bin.install "serra"
      end
    end
  end

  test do
    system "#{bin}/serra --version"
  end
end
