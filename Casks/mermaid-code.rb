# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "5cf8d91c130dcc78cbbf60d90656ee61d5466e101ac435653ad3605d46685a6f",
         intel: "496dbf5ccca924f0f197c2ed9dbdf8e51fa3b0fa83c9721b75553d0aeb4a2dd2"

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
