# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "b2c84b49eb84afff0a2585dcfe3a044b49c9641c0018c9a83660150d957dd30d",
         intel: "6bd27ab5b06e9065537480c6d7d69e3d5841e6618152c769ae15535d388801fa"

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
