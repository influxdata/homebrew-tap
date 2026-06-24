class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.12.1"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.12.1-darwin-arm64.zip"
		sha256 "9408eba52fe3ef10db1e3341a308b7a0ed2721eab36938da393ba50779651737"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.12.1-darwin-x86_64.zip"
		sha256 "f1071e61bd13fbb580937afd0c86afeccafdac639b19aad8cbd292ebb27ae7f7"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
