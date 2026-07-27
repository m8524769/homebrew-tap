# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.12"
  sha256 arm:   "4d3fce169994cf94d3f532a859d6d01eb8a5f7b5b381eb8da8b977ce905f113d",
         intel: "aa4fd5a80ba89d27122f3010b49a60f40183735bcd92b731a0c75098d2b809a9"

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
