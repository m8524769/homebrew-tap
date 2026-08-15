# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "18c2d2511ed03277dcf569661ac151d28a7ae7564226d982cb03022f6af78cba",
         intel: "0d9c3e4912b5f52373011e08f69aa2254ef2b688bceb0b0dd649d28c492cc9fb"

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
