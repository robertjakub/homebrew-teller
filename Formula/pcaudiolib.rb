class Pcaudiolib < Formula
  desc "Portable C Audio Library"
  homepage ""
  version "1.2"
  url "https://github.com/espeak-ng/pcaudiolib/releases/download/#{version}/pcaudiolib-#{version}.tar.gz",
      verified: "github.com/espeak-ng/pcaudiolib/"
  sha256 "6fae11e87425482acbb12c4e001282d329be097074573060f893349255d3664b"
  license "GPL-3.0-only"

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "install"
  end

  test do
    system "false"
  end
end
