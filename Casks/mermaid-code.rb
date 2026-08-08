# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "d80ba4395e471fe7e217d134ffd432291378254ddc3546f032b5426af2084672",
         intel: "ed97cc84730e4617ca1f2c986d098a5f01a1784eb3b78a05be6fb5fbb642ae7c"

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
