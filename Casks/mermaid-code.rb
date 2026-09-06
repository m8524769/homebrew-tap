# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "5185a9a31b076994f815e24c6d73ef0f727c9e285b14685a7887554ca9f90ce4",
         intel: "f6699585443e20ff27284f3a170bed14bb8e68a1dfa2e38b999b76a8fdbd1dd4"

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
