# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.8"
  sha256 arm:   "c2fe28509cfa8a0ab7297fa02a06386ce686fb8e825ca2af944a1ec1dceea93d",
         intel: "4843188ee00ef9258e69aa717bc4c70c22c7729a3210b6431845436ff5097eb9"

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
