class Interactor < Formula
  desc "Browser interactor CLI powered by Playwright"
  homepage "https://github.com/vehmloewff/interactor"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.4/interactor-0.1.4-darwin-arm64.tar.gz"
      sha256 "b7e6973403db5a3154a40940a325284966fc8a33150b352f61e6ddb11a090189"
    else
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.4/interactor-0.1.4-darwin-x64.tar.gz"
      sha256 "edb8aaa60c83ef01e65e5237ca6e86e29c260ca68877bab5482872e6fc999464"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.4/interactor-0.1.4-linux-arm64.tar.gz"
      sha256 "f3e5f21a0e0932894b16177f43d726382f70a271391fbcbad00acda133be76c0"
    else
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.4/interactor-0.1.4-linux-x64.tar.gz"
      sha256 "46cfb13f7222307e50f23eee7689b5760ca595087974f9bd8c9736fe615d557a"
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
