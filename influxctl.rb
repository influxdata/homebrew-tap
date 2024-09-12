class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.9.7"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.7-darwin-arm64.zip"
		sha256 "79ea7e3242de79dfd3f8b7c32ccbc3c72edf9ead0fe97cf86be314923874ff14"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.7-darwin-x86_64.zip"
		sha256 "80d948a60881d3e05a851207aefb1b05b86bf519d06a21669afce1da51741961"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
