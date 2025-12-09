class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.12.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.12.0-darwin-arm64.zip"
		sha256 "9418b6da82fa8b56b240aff14695bc1d00b37862eecac374825b4a9512aa5d6b"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.12.0-darwin-x86_64.zip"
		sha256 "aaa18fa7e61b879f29b7846256f3a4bb019311f5b9168246293f8517a81dc32a"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
