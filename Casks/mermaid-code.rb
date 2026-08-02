# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "787de88666982013fd1bcb89f1fe6eb7be8700347b07f6cada674e5d9bea8998",
         intel: "565289a2b661bb4499eae124749a88bea1a9810bc4bb55c4b010de94892800b3"

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
