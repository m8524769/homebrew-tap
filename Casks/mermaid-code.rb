# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "a4b8e7e83191ce0470574638efc0cf29dc78c8b88684c8d1448dd260e3d6bc93",
         intel: "bc331119ec82d05e6d4205d41544393c35c5429d9e949b018134ec1c286945a7"

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
