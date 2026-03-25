# typed: false
# frozen_string_literal: true

class Spork < Formula
  desc "Spork CLI"
  homepage "https://sporkops.com"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sporkops/cli/releases/download/v0.2.0/spork_darwin_arm64.tar.gz"
      sha256 "96d651d2d64976993f5d5f6944800bbbbd6df68ad9870247769ad41e1b11bb7e"
    end

    on_intel do
      url "https://github.com/sporkops/cli/releases/download/v0.2.0/spork_darwin_amd64.tar.gz"
      sha256 "9dca19307a27bc8cb6260f5ffc314d98cfb8af2fcdeae673af21002db4430075"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sporkops/cli/releases/download/v0.2.0/spork_linux_arm64.tar.gz"
      sha256 "a94b1d21002c0fa3488f5c290fc118330e1e19b66cacc0181a7466bb2bc2fdd7"
    end

    on_intel do
      url "https://github.com/sporkops/cli/releases/download/v0.2.0/spork_linux_amd64.tar.gz"
      sha256 "879238ed5998a21b246ba54e399439d2f01c3b3b68d0ccf66f5f5a2280f78910"
    end
  end

  def install
    bin.install "spork"
  end

  test do
    system bin/"spork", "--version"
  end
end
