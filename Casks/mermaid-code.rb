# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "ff49fb0294beff571aa4ef7b9e4a96951c3cd49d04493e3789c4efc70635bb78",
         intel: "4f20572b75450f63604e46fce9a8dcd0b0be033827d6d72bed6c12ab055f0023"

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
