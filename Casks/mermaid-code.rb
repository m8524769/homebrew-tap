# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.10"
  sha256 arm:   "2678f7c2a2ab928477a99a6c39eedfc851b041ee8da2a513a4cd6f35d6169d28",
         intel: "4f35f8898f59671a9cf73e301610fda7597baeb6e1d91ceb3a897202bda90ffe"

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
