cask "kova" do
  version "0.1.0"

  on_arm do
    sha256 "18781f5ef9e607d755523eb40880b2c42e6cb2c1d39c7c7d710152fc2b0a95cf"
    url "https://github.com/newExpand/kova/releases/download/v#{version}/Kova_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "ad7427e4a530aabb094a56f47108c89e52e18faace6fe988e2129bfb53a15aef"
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
