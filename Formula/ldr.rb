class Ldr < Formula
  desc "Runtime-aware local development task launcher"
  homepage "https://github.com/swsw1005/local-dev-launcher"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_arm64.tar.gz"
      sha256 "cb612b9f041fe208d376baba179cee535cd34603267b387403c7fe4b63fd5f90"
    end

    on_intel do
      url "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_amd64.tar.gz"
      sha256 "5a3e5e5fd8e5724f03b7bfda972d7aa303a45e1683f4abb5d16b5c2c814e7fa8"
    end
  end

  def install
    bin.install "ldr"
  end

  test do
    assert_match "ldr #{version}", shell_output("#{bin}/ldr --version")
  end
end
