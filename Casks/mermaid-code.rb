# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "819f30c3dad46ab47d3a0e604c944a3fe64a929b15bd0fb1dcb6db7c684c54e7",
         intel: "d37006f4f3ed696d3de8466ff2a331c8e66c2a04b56640f69126df7b28f99f7e"

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
