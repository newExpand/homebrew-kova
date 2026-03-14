cask "kova" do
  version "0.1.0"
  sha256 "18781f5ef9e607d755523eb40880b2c42e6cb2c1d39c7c7d710152fc2b0a95cf"

  url "https://github.com/newExpand/kova/releases/download/v#{version}/Kova_#{version}_aarch64.dmg"
  name "Kova"
  desc "Native terminal workspace with visual tmux/worktree management and AI agent awareness"
  homepage "https://github.com/newExpand/kova"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Kova.app"

  zap trash: [
    "~/.kova",
    "~/Library/Application Support/com.kova.app",
    "~/Library/Caches/com.kova.app",
    "~/Library/WebKit/com.kova.app",
  ]
end
