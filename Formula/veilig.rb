# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Veilig < Formula
  desc "veilig - written in go"
  homepage "https://github.com/noqqe/veilig"
  version "0.0.3"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/noqqe/veilig/releases/download/v0.0.3/veilig_0.0.3_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
    sha256 "fe33143d9d0407c647ae82878f39b45647dd54eaa5bc2ca8f0f9acb30b4ac22f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/noqqe/veilig/releases/download/v0.0.3/veilig_0.0.3_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
    sha256 "189ed723a8394f2ad8e70c80c41f452244fc70b9a43066c432170bc172c4abb3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/noqqe/veilig/releases/download/v0.0.3/veilig_0.0.3_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
    sha256 "edb791fb7bf2bbed70234a4d9d4976ebc3584a9d372e155c2a5f96acd84cd3d4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/noqqe/veilig/releases/download/v0.0.3/veilig_0.0.3_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
    sha256 "f3e75da9399f6dc211fbf525baa093402fcea432d91528585e85345a10de2f82"
  end

  conflicts_with "veilig"

  def install
    bin.install "veilig"
  end

  test do
    system "#{bin}/veilig --version"
  end
end
