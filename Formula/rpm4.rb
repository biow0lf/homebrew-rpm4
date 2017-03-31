class Rpm4 < Formula
  desc "A GNU archiving program"
  homepage "http://rpm.org"
  url "http://ftp.rpm.org/releases/rpm-4.13.x/rpm-4.13.0.1.tar.bz2"
  sha256 "27fc7ba7d419622b1ce34d6507aa70b0808bc344021d298072a0c2ec165f9b0d"

  #depends_on "nss"
  #depends_on "nspr"
  # libarchive
  
  # berkeley-db@4

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", '--verbose', '--with-beecrypt', '--without-archive', '--with-external-db', '--without-lua'
    system "make", "install"
  end

  test do
  end
end

