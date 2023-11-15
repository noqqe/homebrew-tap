# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tijd < Formula
  desc "time tool for working remote with the world"
  homepage "https://github.com/noqqe/tijd"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noqqe/tijd/releases/download/0.2.1/tijd_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fccbf80341ff1587095655a2de3e0d1ff2a59fba0b70395c3dc0b8c976740a65"

      def install
        bin.install "tijd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/tijd/releases/download/0.2.1/tijd_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "1f3aa1977c9f6d093416fe1fed966437e52a7196a931920a411b2d1adecc9b1e"

      def install
        bin.install "tijd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noqqe/tijd/releases/download/0.2.1/tijd_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ba23c912ff3575eb8f0235d3c7408b797f675067111255f02232e58527e81d72"

      def install
        bin.install "tijd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/tijd/releases/download/0.2.1/tijd_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "dde3294768e0d1ed33526f81956db777853a73ab8122c97919c5472c7089b915"

      def install
        bin.install "tijd"
      end
    end
  end
end
