class Ldr < Formula
  desc "Runtime-aware local development task launcher"
  homepage "https://github.com/swsw1005/local-dev-launcher"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_arm64.tar.gz"
      sha256 "02df39e85f236e5428d38959c76e7c3861290699bd758626a344e2915b36c145"
    end

    on_intel do
      url "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_amd64.tar.gz"
      sha256 "1e2667911056e139cdf4eb52c021311ecece8ef369238336256abce30894ea3c" 
    end
  end

  def install
    bin.install "ldr"
  end

  test do
    assert_match "ldr #{version}", shell_output("#{bin}/ldr --version")
  end
end