# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Serra < Formula
  desc "serra - Personal Magic: The Gathering Collection Tracker "
  homepage "https://github.com/noqqe/serra"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noqqe/serra/releases/download/3.0.0/serra_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cd9c864521d782e80c3093e212f625c51dbe81574b4def995207dcdee1bba42f"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/3.0.0/serra_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "88db2ca7b91ec297a39b20e9454014ac1f78b1e4f62369ceda5f54a12b7b5b0d"

      def install
        bin.install "serra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noqqe/serra/releases/download/3.0.0/serra_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4fac34db348e412fa0a95259699aaa5c7e249d4ff4b1fe9aab0bddfb75627b39"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/3.0.0/serra_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "b61e948388c63a1a4691bcc5fe014e9948d31742b6c6a61a73a207fb2d17b959"

      def install
        bin.install "serra"
      end
    end
  end

  test do
    system "#{bin}/serra --version"
  end
end
