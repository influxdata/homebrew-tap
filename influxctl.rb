class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.7.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.7.0-darwin-arm64.zip"
		sha256 "7863ad5b3ca14bfd436373eb6697b831be41935164498aff8efe6717884bebff"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.7.0-darwin-x86_64.zip"
		sha256 "3c65978c48623d18a2c1f20b5c5363d4fa841c6a06553cb39317ac5edd7fed9c"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
