class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.2.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.2.0-darwin-arm64.zip"
		sha256 "2e902f4e268352ab05b9ee77fa11f34df7a43a1fde4c49bd959038676c54f197"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.2.0-darwin-x86_64.zip"
		sha256 "021f3fa38ca0b06c483d022012413b4705616b3afe6c24941611545f9a75a65d"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
