# SPDX-FileCopyrightText: murk contributors
# SPDX-License-Identifier: MIT OR Apache-2.0

class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://murk.interrupted.sh"
  version "0.14.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a8d2afaf3379114a3376f60e8eefe750299ff376e0a93e641230e6c0c0e4537a"
    end
    on_arm do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "667918bfdfd49827dd07d8309d534d715ca2808b53170f2fdf8747afd5078c69"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79c8d6c622e6d9daf0bd7e4b6cb68e0d69dd5d35de5268c7a98f06a8db657e34"
    end
    on_arm do
      url "https://github.com/interrupted-sh/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "74a197e1072098bdfd9d2611b3c9220d932354269567f4e8e85600e5e91b15fd"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
