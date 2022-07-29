require "formula"

class Duckdns < Formula
  homepage "https://github.com/hybras/duckdns"
  url "https://github.com/hybras/duckdns/archive/1.0.tar.gz"
  sha256 "87108c4bafb4d5b9c66dfb3cd3efa9f0cb152981ef40d763a11230247d48484c"
  
  depends_on "tailscale"

  def install
    bin.install 'duckdns'
  end

  test do
    system bin/"duckdns"
  end
  
  service do
    run bin/"duckdns"
    run_type :interval
    interval 300
    log_path var / "log" / "duckdns.log"
    error_log_path var / "log" / "duckdns.log"
  end
  
end

