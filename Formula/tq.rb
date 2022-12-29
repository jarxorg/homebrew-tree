# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tq < Formula
  desc "tq is a portable command-line JSON/YAML processor."
  homepage "https://github.com/jarxorg/tree#tq"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jarxorg/tree/releases/download/v0.7.2/tree_0.7.2_Darwin_x86_64.tar.gz"
      sha256 "dd6bb3365f8510ca1beb5dda8e7fa80824abb3332569c4ad27427b2b2765dd50"

      def install
        bin.install "tq"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jarxorg/tree/releases/download/v0.7.2/tree_0.7.2_Darwin_arm64.tar.gz"
      sha256 "3f05d582310e07e6d91f1710d678a88e77544f3db0ae324ccea94a3b48aafddd"

      def install
        bin.install "tq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jarxorg/tree/releases/download/v0.7.2/tree_0.7.2_Linux_x86_64.tar.gz"
      sha256 "d4c31b620abb800b75be947d150498c86c4e2933bf68fde655c851b935675636"

      def install
        bin.install "tq"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jarxorg/tree/releases/download/v0.7.2/tree_0.7.2_Linux_arm64.tar.gz"
      sha256 "09254a4e582616e32d05e6bf6096349ba6e62c5fc14cda2af6ed799ad7a72892"

      def install
        bin.install "tq"
      end
    end
  end

  test do
    system "#{bin}/tq --help"
  end
end
