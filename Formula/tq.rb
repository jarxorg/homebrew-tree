# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tq < Formula
  desc "tq is a portable command-line JSON/YAML processor."
  homepage "https://github.com/jarxorg/tree#tq"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jarxorg/tree/releases/download/v0.6.1/tree_0.6.1_Darwin_arm64.tar.gz"
      sha256 "681b0b2330f3147322c08345d043130cb1c2eee05ca688f86a1b6fc6c09db37d"

      def install
        bin.install "tq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jarxorg/tree/releases/download/v0.6.1/tree_0.6.1_Darwin_x86_64.tar.gz"
      sha256 "10c15e8a6ea48ee706f2e4a46ac6659b1f00744354d3f64e16ee10835c275dc4"

      def install
        bin.install "tq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jarxorg/tree/releases/download/v0.6.1/tree_0.6.1_Linux_x86_64.tar.gz"
      sha256 "67dea66b24bca3952435d383ea8c2574a53ba9993ad7f3a0cf470cc2ea42eb32"

      def install
        bin.install "tq"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jarxorg/tree/releases/download/v0.6.1/tree_0.6.1_Linux_arm64.tar.gz"
      sha256 "1ce1dc137c88b2bf4462abbdca5b8a03d6325a8258572c64e7deb1a29c19fb27"

      def install
        bin.install "tq"
      end
    end
  end

  test do
    system "#{bin}/tq --help"
  end
end
