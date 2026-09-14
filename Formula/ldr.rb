class Ldr < Formula
  desc "Runtime-aware local development task launcher"
  homepage "https://github.com/swsw1005/local-dev-launcher"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_arm64.tar.gz"
      sha256 "e062b584e907a6af375a06c433c3aae3b5478040fd8a469acbf475cf42fc3a50"
    end

    on_intel do
      url "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_amd64.tar.gz"
      sha256 "f1f4d848d98931c7348e7345ba6b9df69b42536099245bfd4432799bd28be6e6" 
    end
  end

  def install
    bin.install "ldr"
  end

  test do
    assert_match "ldr #{version}", shell_output("#{bin}/ldr --version")
  end
end