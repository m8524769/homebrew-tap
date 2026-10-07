# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "54211bbdbd3b3e7fdbc81986ee1481f6fa1a949a35d05b4648fb33e0b4f6c228",
         intel: "fcf8c02ed02b528b18d73c55121daa0409e2ed79e0b5cc103d50e87afe2f5353"

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
