class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.10.1"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.1-darwin-arm64.zip"
		sha256 "1cd82c74a38334ff14924e7fabb907f08fc5d174fbeb2d66363a44c7360eb182"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.1-darwin-x86_64.zip"
		sha256 "10c899967001ff2845d89710f360bf588bff0f21ebbae237c9b6c586d874ed3f"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
