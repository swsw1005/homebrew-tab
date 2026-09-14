class Ldr < Formula
  desc "Runtime-aware local development task launcher"
  homepage "https://github.com/swsw1005/local-dev-launcher"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_arm64.tar.gz"
      sha256 "59801ae625cce46d34c80b542cb729848158c4dc7439eca1fda224224e76ed86"
    end

    on_intel do
      url "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_amd64.tar.gz"
      sha256 "d07aeff29ed78836e0955d7c22abae8341c02d7e3d7f3d52763550450d906efe" 
    end
  end

  def install
    bin.install "ldr"
  end

  test do
    assert_match "ldr #{version}", shell_output("#{bin}/ldr --version")
  end
end