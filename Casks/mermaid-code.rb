# typed: strict
# frozen_string_literal: true

cask "mermaid-code" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "7788573a31d1e83aece0f9b24ec38204594f87e1643ff548e09ce3b13b90d6a2",
         intel: "7116dfabdd57ab5b38cee6a22e0e2bca78ba7debc8da237018675b33eb208275"

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
