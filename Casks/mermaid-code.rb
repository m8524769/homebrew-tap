# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.5"
  sha256 arm:   "857443723d8f92c531e9426a9b1bac58b5efbfb55b3e57d8e8ed2e8e7b4a093f",
         intel: "8957494fea449f523a3403a1959fbfe3ad772554a24d7266bfad003de6c41297"

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
