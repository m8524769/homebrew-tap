# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.6"
  sha256 arm:   "507e68ff1551bc8327d5f860545d2ae83dfa7d685ee963d666e7ac1f2b6b983f",
         intel: "476c2804476dc17d2c959411ea015204b640221978919779d43641ae292b5faf"

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
