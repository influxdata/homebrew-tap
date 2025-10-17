class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.11.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.11.0-darwin-arm64.zip"
		sha256 "f743e27ac69af8df05bc5f1722c63d1f71b2cc60b5608225779a995d99c250cf"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.11.0-darwin-x86_64.zip"
		sha256 "480cfd22cd4710ae824c0e407585ad538b6f41467ae59f96d9aa48be522bdfd0"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
