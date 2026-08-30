# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "12e4fef29741f3a6db13f9affdaf3979c58dcd95431a17bcc26e66c7ba3e9f3b",
         intel: "14c33628f15185316fd58a8221296c6aa770e655abe13db3e1805c907b751400"

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
