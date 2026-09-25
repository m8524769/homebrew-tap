# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.3"
  sha256 arm:   "f8ee98980d0b56830d79a005e13cf3f18e141f63e606cb3986e8053441fa93fe",
         intel: "b8a3acd2045145e3fc363c35abf71879948a1d20374f9f2249f65022d59a965f"

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
