# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "b2cc3133894c7bfcea2c4e6f4828148ee205cf70e0ddb63070659e864eae71cc",
         intel: "5d9a07c43be881c7633112d0e933055e2bac4353177acdcb6d258267f3bd15e0"

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
