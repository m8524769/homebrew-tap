# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "bc251e271346bd0a18c50a350ed4576d1abbc61b19d5c6c18c7118042b982824",
         intel: "81d59978ffa17488c03f1fd595c3c5e524f684f9bfc81d62571ba8733354ac3b"

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
