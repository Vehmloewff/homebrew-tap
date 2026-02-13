class Interactor < Formula
  desc "Browser interactor CLI powered by Playwright"
  homepage "https://github.com/vehmloewff/interactor"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.3/interactor-0.1.3-darwin-arm64.tar.gz"
      sha256 "891ef7136e5e763e6a05ac0230d7b9987212346ef6f2685f256dd7f493cdc995"
    else
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.3/interactor-0.1.3-darwin-x64.tar.gz"
      sha256 "bdac526724e607020f3c1a4c92dba8ce4c998ae3232b1ee047915cd0ddacc39d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.3/interactor-0.1.3-linux-arm64.tar.gz"
      sha256 "5bbd4b558f0117f1ae571c48f16bebd69ee40254e343fda8e6a214541c9b4c32"
    else
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.3/interactor-0.1.3-linux-x64.tar.gz"
      sha256 "d8e5de2b962dab804f9cabe37adf6c7bca3d395432460ff9572ce2855ec4d559"
    end
  end

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "interactor"
  end

  test do
    assert_match "No matching events found.", shell_output("#{bin}/interactor find definitely-not-an-event")
  end
end
