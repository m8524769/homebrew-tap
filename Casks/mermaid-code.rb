# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.7"
  sha256 arm:   "67f40fb424c83cda04e03b0233784ed1dec895ce616642a79dcee622cb44f20e",
         intel: "9c7a996d5ddeabf6f5fa35d9095366e40e1d08e077a717074115a64e05d3bace"

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
