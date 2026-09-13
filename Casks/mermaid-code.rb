# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.5"
  sha256 arm:   "c9aacbc32d94e4139f538c2e50607bc3ac139bfee0ad955df3a6ad1da3fc687a",
         intel: "ffc831f481a8aac8d43cc6faaf01477917913a54c230019956146886087af2b4"

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
