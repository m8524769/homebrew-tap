# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.6"
  sha256 arm:   "062b459c153d1336637bdb74198f14a19a22d7462fbc86021c3c8e1f98f62dac",
         intel: "893b85d6a577e094c926dcb0b813b224f1202b30da3219a6298a6bd914bd81ee"

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
