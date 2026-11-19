# SPDX-FileCopyrightText: murk contributors
# SPDX-License-Identifier: MIT OR Apache-2.0

class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://murk.interrupted.sh"
  version "0.15.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "99f1438e94478b3f4d9a10fb4df53db36baba0dc29bbe22815cdd9ab0c569f0c"
    end
    on_arm do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d9f8d4ffb5c512900d9101582d12a9b371ff51ec35fe8371fccb9544c7baf1da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0dc8a84b56c3e47a38f89c38f683ffdc60a166a3e81d3e173587b45a9e83f56"
    end
    on_arm do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e9ef9c7994816b63867d5f7da41f5f9e16acf11286d949cd9f70d55fe9435b5"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
