# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.4"
  sha256 arm:   "dab7505e748bb007dc031b6001d61c88ae157ef4304c04c3d4a0fdab0515b3cb",
         intel: "2b1724169051adf42fe8586966f3eb40d0ceefaa2ad5f1b95a1ce15120849a15"

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
