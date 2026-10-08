class Packpub < Formula
  desc "Publish binary packages to Homebrew and the AUR"
  homepage "https://github.com/Vehmloewff/packpub"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Vehmloewff/packpub/releases/download/v0.1.0/packpub-0.1.0-aarch64-apple-darwin.zip"
      sha256 "18a80750f168f3dc0e46868c62fe087accf11268b189734ee44f3292c759dd5c"
    end
    on_intel do
      url "https://github.com/Vehmloewff/packpub/releases/download/v0.1.0/packpub-0.1.0-x86_64-apple-darwin.zip"
      sha256 "af8468d4064fbd75883d8cd50fe3cfc53e9ed89d3bdecf878f385a8c7963a278"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Vehmloewff/packpub/releases/download/v0.1.0/packpub-0.1.0-aarch64-unknown-linux-gnu.zip"
      sha256 "53bcdfa2f9dff1a2b0460bef61e538d507cad422842f247496a5920875c43605"
    end
    on_intel do
      url "https://github.com/Vehmloewff/packpub/releases/download/v0.1.0/packpub-0.1.0-x86_64-unknown-linux-gnu.zip"
      sha256 "2dcf99682add28e5a7f65acc7857071807280cab23883fb9c942aef2443348d8"
    end
  end

  def install
    bin.install Dir["*"]
  end
end
