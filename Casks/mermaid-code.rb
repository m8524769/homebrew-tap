# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "f0ec50bac3f19f41f79c1e3985e251163f77f954416f90bc690ad33855c42aa0",
         intel: "09766d86ad1c1ae46e2ec945bc5debf6b7c995f26bf0de81dea8a60d37792b5c"

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
