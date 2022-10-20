# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Serra < Formula
  desc "serra - Personal Magic: The Gathering Collection Tracker "
  homepage "https://github.com/noqqe/serra"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noqqe/serra/releases/download/1.2.1/serra_1.2.1_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "db933d3a5653bb6b99912c03dfe958656bc88a4376d9eddea4a9d11416861e82"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/1.2.1/serra_1.2.1_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "256ff6d6edafbb63387c42125e65326276f9f159edc326ec732c54959336b9a6"

      def install
        bin.install "serra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noqqe/serra/releases/download/1.2.1/serra_1.2.1_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "05ee28e78dc79074574c0c451bb6bf3e0a2570b54e19f743d33e0fb282b55792"

      def install
        bin.install "serra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/serra/releases/download/1.2.1/serra_1.2.1_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "fab0fe485577718fe8535ebf29685ec73f32fc15318e2c9df544f471f9a87993"

      def install
        bin.install "serra"
      end
    end
  end

  test do
    system "#{bin}/serra --version"
  end
end
