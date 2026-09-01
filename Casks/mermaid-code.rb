# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "a1d2363cb1d1634cb47b4fca2e1a27d4afd02fd4d9381f9e8d28ffec11e8de5f",
         intel: "bc7dc13d4695e32a36f3677382690ba9289d65545ca1e270160f5cb61bc235a3"

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
