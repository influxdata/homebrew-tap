class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.10.2"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.2-darwin-arm64.zip"
		sha256 "7c62b16527d9670e89a1d42edc17bd62abdbf67379a59a54f95a7006cd61911d"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.2-darwin-x86_64.zip"
		sha256 "f24a22c75db54c2ae7bb21fbc6206b831883bce09b27e17f29b03031abb0b2b7"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
