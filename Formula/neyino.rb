class Neyino < Formula
  desc "The AI coding agent built for the terminal"
  homepage "https://neyino.com"
  version "0.3.5"
  license "MIT"
  depends_on "ripgrep"

  on_macos do
    on_arm do
      url "https://neyino.com/dl/0.3.5/neyino-darwin-arm64"
      sha256 "96153868426a63eb35f0f51923e6394cb11aca1b3d37a6c6cf862e5eb7cea4b3"
    end
    on_intel do
      url "https://neyino.com/dl/0.3.5/neyino-darwin-x64"
      sha256 "f68b32046d4c2daf37778fe3054defa02be682b11eec22c9bc7e457a0b70e7e2"
    end
  end

  on_linux do
    on_arm do
      url "https://neyino.com/dl/0.3.5/neyino-linux-arm64"
      sha256 "b7eb5da3877695a94ee421b9b069be660d3eaa9d5d40824a38ed7025d1c60e52"
    end
    on_intel do
      url "https://neyino.com/dl/0.3.5/neyino-linux-x64"
      sha256 "4a7a50af92af1a639452a900af8536bcfe49db6de0e01ce5225dc10006c6fc29"
    end
  end

  def install
    chmod 0755, cached_download
    bin.install cached_download => "neyino"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/neyino --version")
  end
end
