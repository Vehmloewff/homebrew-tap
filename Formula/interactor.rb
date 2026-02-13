class Interactor < Formula
  desc "Browser interactor CLI powered by Playwright"
  homepage "https://github.com/OWNER/REPO"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OWNER/REPO/releases/download/0.1.3/interactor-0.1.3-darwin-arm64.tar.gz"
      sha256 "59515259f6cd4c95a2f5b34ab41354ce19f682f49e32eb181d33976159862951"
    else
      url "https://github.com/OWNER/REPO/releases/download/0.1.3/interactor-0.1.3-darwin-x64.tar.gz"
      sha256 "ddc27d09dd7f064940a3fa5d2c60044a0ebcfb5c8263699c725427fbe3f49d07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OWNER/REPO/releases/download/0.1.3/interactor-0.1.3-linux-arm64.tar.gz"
      sha256 "6064990dd4668329191a2c5f854cea2447daa841c704bc8289af4dee3cdbb0eb"
    else
      url "https://github.com/OWNER/REPO/releases/download/0.1.3/interactor-0.1.3-linux-x64.tar.gz"
      sha256 "23d3955f6a9a4460e287de9789ef900876f510b298a1d111a24416a10df55fa3"
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
