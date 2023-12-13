class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.4.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.4.0-darwin-arm64.zip"
		sha256 "80ab2fc76133e4a0a9428388c0e6e6167ab8a7640a5f61928709872fa0a0bcd7"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.4.0-darwin-x86_64.zip"
		sha256 "88ac6f75fa15a2c0096faca7ed120ff96a897b8e53378bde54722bb715e3b9ec"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
