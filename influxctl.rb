class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.5.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.5.0-darwin-arm64.zip"
		sha256 "8cf14a39b52f292f652833df414b85ca8be1ff45092f51ef9e597e76a9965d0d"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.5.0-darwin-x86_64.zip"
		sha256 "7d02c0416d686fca7b21955dee2be0c681867824f666a1e9586079aa00573cd0"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
