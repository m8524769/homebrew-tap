# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "cfb34de18f2ab90b7831f0d449cd5237d34636bf7616eb58ae340e5f23172cc8",
         intel: "23d2e1cd11b1a44ff4ec17c7d4e386c647708f630120a538b8bed0bede0fb670"

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
