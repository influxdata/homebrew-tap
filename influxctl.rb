class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.4.3"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.4.3-darwin-arm64.zip"
		sha256 "141fff306ce43263b036088f22315818c07756f47981a85eeacb8bd1f88108a4"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.4.3-darwin-x86_64.zip"
		sha256 "5b29bb00b62453924781e2077afece7da1d16e38c5bf88efb82f5460a770195a"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
