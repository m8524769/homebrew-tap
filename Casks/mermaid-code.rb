# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "8f81e25e1957ff850132c07cdb27e2e59e9ed03e52daf8b3c67fb85e75658b9c",
         intel: "2576c655ef22ef35388e52fe3373655639f3c2626964caa8646f7722c4b7b31a"

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
