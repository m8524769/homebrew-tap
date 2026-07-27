# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.13"
  sha256 arm:   "4983d57aa7b7a81e01ff885e18049623560061df045bd4081dc4fcc4272943f8",
         intel: "5c0521037ba21a67760f2b30f73193e4d5e2fed0435fad4627a63f84257c2317"

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
