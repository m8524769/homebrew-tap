# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.4"
  sha256 arm:   "dbf92adc823392369e0dcd94271bcb79aed6dba80f1cb2e2338d671aaa6889c2",
         intel: "a6c64256e7f47bd103bdaae44990f64756f855506533446c422477b63a2558e1"

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
