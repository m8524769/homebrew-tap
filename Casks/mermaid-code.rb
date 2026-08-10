# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.7"
  sha256 arm:   "8a2af33688bbe89d93001bc8f555269f24b4727636b76239ee338245692f244c",
         intel: "df858bfca894a7604cb3cea55c7b92360ed92c09ae1fb66db0aa5f6eb5d34177"

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
