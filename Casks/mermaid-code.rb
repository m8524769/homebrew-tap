# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "8f31c369b90ad1bbae690c6d25ccbd4e250c86c124ffc586ccffecfaf4099eaf",
         intel: "f9c100ce189400a119a1107f9906024da8042a6392178f7e8a9ed2b8b6a2fdc0"

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
