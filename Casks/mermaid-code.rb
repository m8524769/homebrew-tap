# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.1"
  sha256 arm:   "214708472fef6d0fdf59eb50ef8029ad89d184e54e205831bc5b20d447668e2a",
         intel: "3c061be95c7bda8fcaeb5ac0c949e9864b2712f29055ec91c376e0988bf71247"

  url "https://github.com/m8524769/mermaid-code/releases/download/v#{version}/Mermaid.Code_#{version}_#{arch}.dmg"
  name "Mermaid Code"
  desc "Local-first Mermaid diagram editor with file manager and multi-tab editing"
  homepage "https://github.com/m8524769/mermaid-code"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mermaid Code.app"
end
