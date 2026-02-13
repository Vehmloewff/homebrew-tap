class Interactor < Formula
  desc "Browser interactor CLI powered by Playwright"
  homepage "https://github.com/vehmloewff/interactor"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.5/interactor-0.1.5-darwin-arm64.tar.gz"
      sha256 "7d160ba56ff8f5d0446d64c4fe5e26bac51d3b9275d34bdacb98b5f968b84fb4"
    else
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.5/interactor-0.1.5-darwin-x64.tar.gz"
      sha256 "6cf3f43c984c3dae90688a237004c07d7a480fe791adebbe9579c466c567abd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.5/interactor-0.1.5-linux-arm64.tar.gz"
      sha256 "dd58d068484cef24d5bbf54ff5ba43bb492e6e5b35f5d1e6ca1e9ca1d8262e98"
    else
      url "https://github.com/vehmloewff/interactor/releases/download/0.1.5/interactor-0.1.5-linux-x64.tar.gz"
      sha256 "605368eaedc16ebeddc243dd372ba5694a8cf6b1dc99bf78427da83419de3fa2"
    end
  end

  def install
    bin.install "interactor"
  end

  test do
    assert_match "No matching events found.", shell_output("#{bin}/interactor find definitely-not-an-event")
  end
end
