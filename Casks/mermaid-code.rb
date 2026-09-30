# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.4"
  sha256 arm:   "24d66582bccce53720b5a55922ab0f49d3aa2845cff42a9b164f0b3db43ff295",
         intel: "a5aca12a3a184b33aac0f92550fef0c2882bf1ffe111d3cf1768179457201618"

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
