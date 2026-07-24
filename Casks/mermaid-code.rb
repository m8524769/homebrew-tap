# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.11"
  sha256 arm:   "4bf69731eb1e000b387e220aa79e53d6acaf304d8c93dbeb0cce0b39bb6f7c04",
         intel: "196a45b39eaff6c92b338560b7c6d696da3fd165ec63b925d143652a50b70bfd"

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
