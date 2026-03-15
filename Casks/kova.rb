cask "kova" do
  version "0.1.0"

  on_arm do
    sha256 "15094fe2e1a52fbe2ec2de372f2f8e0e676e7a53331e3897fd5634eff1346fb9"
    url "https://github.com/newExpand/kova/releases/download/v#{version}/Kova_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f908cd35c0d1ffd3f518644a6d3f59bdeeef2b499887d19c5957f0b42c25261f"
    url "https://github.com/newExpand/kova/releases/download/v#{version}/Kova_#{version}_x64.dmg"
  end

  name "Kova"
  desc "Native terminal workspace with visual tmux/worktree management and AI agent awareness"
  homepage "https://github.com/newExpand/kova"

  depends_on macos: ">= :ventura"

  app "Kova.app"

  zap trash: [
    "~/.kova",
    "~/Library/Application Support/com.kova.app",
    "~/Library/Caches/com.kova.app",
    "~/Library/WebKit/com.kova.app",
  ]
end
