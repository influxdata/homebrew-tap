class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.9.1"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.1-darwin-arm64.zip"
		sha256 "a36124c8374c916a0a6c18f05fe7d47c31a24842f73acdc6ee96a1f6eb95f7b5"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.1-darwin-x86_64.zip"
		sha256 "0b6fa68ac7ed855d74a5f90faf7b69a1de35b8c7576643e33768cc406d7b612f"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
