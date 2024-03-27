class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.7.1"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.7.1-darwin-arm64.zip"
		sha256 "67fade209f8f02b6aab5462fc4cbe618297205f1d8c4545170aa69d11869dde6"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.7.1-darwin-x86_64.zip"
		sha256 "ec0412555e7b5d7c9b21874880164874062d882a3545502894ceb7f8ceb36daf"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
