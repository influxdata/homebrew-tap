class Influxctl < Formula
    desc "CLI to manage InfluxDB v3 instances"
    homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
    version "2.0.4"

    if Hardware::CPU.arm?
        url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.0.4-darwin-arm64.zip"
        sha256 "2809e27f7597470334b5ae43a365c8b44b9ccd70c91a0a40aed910e5b7a34c4f"
    end

    if Hardware::CPU.intel?
        url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.0.4-darwin-x86_64.zip"
        sha256 "d69c04d168813cb0357e15e75656924d6460295dc8174e1d7449bbe92704eeea"
    end

    def install
        bin.install "influxctl"
    end

    test do
        system "#{bin}/influxctl", "version"
    end
end
