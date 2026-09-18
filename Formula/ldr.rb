class Ldr < Formula
  desc "Runtime-aware local development task launcher"
  homepage "https://github.com/swsw1005/local-dev-launcher"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_arm64.tar.gz"
      sha256 "1b44786043da16883e8bc10db2688cb5ccb73c3e7198e5f5438fa7585768b3e9"
    end

    on_intel do
      url "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_amd64.tar.gz"
      sha256 "acb3417021200cfde9be9e0a8170fba783ad2868f5e5de7ac0f7520db3672cfc" 
    end
  end

  def install
    bin.install "ldr"
  end

  test do
    assert_match "ldr #{version}", shell_output("#{bin}/ldr --version")
  end
end