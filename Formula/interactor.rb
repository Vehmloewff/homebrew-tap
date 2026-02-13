class Interactor < Formula
  desc "Browser interactor CLI powered by Playwright"
  homepage "https://github.com/OWNER/REPO"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OWNER/REPO/releases/download/0.1.2/interactor-0.1.2-darwin-arm64.tar.gz"
      sha256 "c6df31f817ff28ee7f71979b37d3062a9e2c27d707bcceba267718de6bd981b9"
    else
      url "https://github.com/OWNER/REPO/releases/download/0.1.2/interactor-0.1.2-darwin-x64.tar.gz"
      sha256 "8d67da71583939abb4bdc8d6a302101862df1c8df7462399a11025a40c594d83"
    end
  end

  on_linux do
    url "https://github.com/OWNER/REPO/releases/download/0.1.2/interactor-0.1.2-linux-x64.tar.gz"
    sha256 "00d0f8f2e26e39d2dbb32878ad65694cd3730375f751b56384e241be55eee38b"
  end

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "interactor"
  end

  test do
    assert_match "No matching events found.", shell_output("#{bin}/interactor find definitely-not-an-event")
  end
end
