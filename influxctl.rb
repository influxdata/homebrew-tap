class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.6.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.6.0-darwin-arm64.zip"
		sha256 "c2c5fb49128763d3804a07937ecf8a1f789005a4c40ee152993dad0405e75ac2"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.6.0-darwin-x86_64.zip"
		sha256 "cea03700b76da7139528ecd818fe2040451ec7b9eb8fe4299b681ba2c71b5fdb"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
