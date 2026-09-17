# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "7258fdca7a35a87e9a1cb0e60446ab4ef581c779fca7b693ffe277b92bc306e8",
         intel: "801a02bf6fb30f1cf47726f28dde4a4702d9a1af2b40435ed17e119a01330e67"

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
