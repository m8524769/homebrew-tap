# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.6"
  sha256 arm:   "fa9da5125dfe33c8d952f095d8b8bd962f80f388f63e5f056f739c9247fbfaf9",
         intel: "2b634106f4bf2ea6b50bb7054e60bbb9d5d9fc41b9f162b1cfc3eb07b12cde10"

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
