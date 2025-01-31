class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.9.9"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.9-darwin-arm64.zip"
		sha256 "726fdec16457558f36dcd1fb44932350ac8ced9a082c3bf72c5e09a81e6afb36"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.9-darwin-x86_64.zip"
		sha256 "fb0ad2e3435a88d97f0e22f742eb9e0794dfe3faf3d37d5ee2dd61c74b1e06b1"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
