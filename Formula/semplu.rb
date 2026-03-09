class Semplu < Formula
  desc "Ask, enhance, extract, and summarize web pages, files, and media"
  homepage "https://github.com/Asm3r96/semplu"
  url "https://registry.npmjs.org/@asm3r96/semplu/-/semplu-0.1.3.tgz"
  sha256 "5b746610ac8b1632eb04feeefab87829317f7164598d01b8f6be4d2205480cd2"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    (libexec/"bin").env_script_all_files bin, SEMPLU_VERSION: version.to_s
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/semplu --version")
  end
end
