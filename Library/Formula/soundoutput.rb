require 'formula'

class Soundoutput < Formula
  homepage 'https://github.com/neethouse/soundoutput'
  url 'https://github.com/neethouse/soundoutput/archive/1.0.2.tar.gz'
  sha1 '2f93a87497db931e34c261e297e66e9dc25af2bf'

  depends_on :macos => :lion
  depends_on :xcode

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  def test
    system "#{bin}/soundoutput"
  end
end
