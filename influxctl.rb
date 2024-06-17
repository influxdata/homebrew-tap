class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.9.2"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.2-darwin-arm64.zip"
		sha256 "c23c17ff16b5b0dcc13c931037588772a1bbc2cccf428a38b17a454f1eaa8204"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.2-darwin-x86_64.zip"
		sha256 "bd6c121b750c68e54b486df156cb41d58afbb6dceab756b1078d672a20511021"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
