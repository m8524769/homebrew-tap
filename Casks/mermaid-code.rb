# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "91f2fd1d9eec1e29a31efb93f7d64c07dd419f7aa628ae390985b1ac9b408d67",
         intel: "6d6f62f03713764821fb04daa992aac1bc9f54fc8b7b399592409b12cef72ef9"

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
