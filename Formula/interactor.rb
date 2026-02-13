class Interactor < Formula
  desc "Browser interactor CLI powered by Playwright"
  homepage "https://github.com/OWNER/REPO"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OWNER/REPO/releases/download/0.1.1/interactor-0.1.1-darwin-arm64.tar.gz"
      sha256 "054674a547606807032da8ec4cccdfe18ad0376cb3439dddd16282d76edb0217"
    else
      url "https://github.com/OWNER/REPO/releases/download/0.1.1/interactor-0.1.1-darwin-x64.tar.gz"
      sha256 "7b964cd517499c0837aacf014d7acee95c572e467dab0fd9c69773cfc79bc56b"
    end
  end

  on_linux do
    url "https://github.com/OWNER/REPO/releases/download/0.1.1/interactor-0.1.1-linux-x64.tar.gz"
    sha256 "203677d0f5d80e7ce05fa03b1c3b043839b77d3624efdf0fea7a29fb9d65f036"
  end

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "interactor"
  end

  test do
    assert_match "No matching events found.", shell_output("#{bin}/interactor find definitely-not-an-event")
  end
end
