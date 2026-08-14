# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "609f1d52b718fa18001f3c3268f334bcf5eb4af0c737a19422d58891e7f3f749",
         intel: "86e5a7cd83a693a0844a1b00cef4de8441acd651c3ecda5b257bc23a2aefa068"

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
