# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Veilig < Formula
  desc "veilig - written in go"
  homepage "https://github.com/noqqe/veilig"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noqqe/veilig/releases/download/v1.4.1/veilig_1.4.1_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2e527e05a2e03ca06b70b755b150a491bdf0e7ace2ebc924eb5d403b44cfc347"

      def install
        bin.install "veilig"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/veilig/releases/download/v1.4.1/veilig_1.4.1_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a37bc8aa03591b2b51ccfa2bda4288161ecefc210bce1b230861ec46f14e67f8"

      def install
        bin.install "veilig"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/noqqe/veilig/releases/download/v1.4.1/veilig_1.4.1_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "58c8cde5406456d22a76a9045b07fb00ad3300046f2111555f276e2fe8785283"

      def install
        bin.install "veilig"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/noqqe/veilig/releases/download/v1.4.1/veilig_1.4.1_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "16df69f40a56bfd416ded240e9c66fdcbabd2371a2464cbda0be53547ea54546"

      def install
        bin.install "veilig"
      end
    end
  end

  conflicts_with "veilig"

  test do
    system "#{bin}/veilig --version"
  end
end
