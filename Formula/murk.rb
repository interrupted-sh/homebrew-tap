# SPDX-FileCopyrightText: murk contributors
# SPDX-License-Identifier: MIT OR Apache-2.0

class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://murk.interrupted.sh"
  version "0.15.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1a440aa154ce96efab623465caf3ad39d8c70e0ddf280908d33f0f54878f4705"
    end
    on_arm do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "32364ad32e7c1a25d848e4a6ece0ec862ed8791c3dce89fdf0ef264ec3f6bc65"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d03178f800f6e9b30c654d913979e6a2c576815db435d79071ccc026d32fe4f"
    end
    on_arm do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03eddedb6af2beb954abff6ec4ab2761bfb8dc569f985209377931114d7ccc11"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
