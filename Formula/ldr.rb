  class Ldr < Formula
    desc "Runtime-aware local development task launcher"
    homepage "https://github.com/swsw1005/local-dev-launcher"
    version "0.1.0"

    on_macos do
      on_arm do
        url
        "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_arm64.tar.gz"
        sha256 "9f3bd6f93f0f9690ad7472d0bdf5bc3a98080ef8027b8840e2fcf988c02588ea"
      end

      on_intel do
        url
        "https://github.com/swsw1005/local-dev-launcher/releases/download/v#{version}/ldr_#{version}_darwin_amd64.tar.gz"
        sha256 "08da0b1f480aca252d82d3986c0b43b54c98dfda4c4b93b4eb2957833b41bd8f"
      end
    end

    def install
      bin.install "ldr"
    end

    test do
      assert_match "ldr #{version}", shell_output("#{bin}/ldr --version")
    end
  end