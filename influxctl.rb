class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.9.3"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.3-darwin-arm64.zip"
		sha256 "ab6b56392482b36f9af5af19d8eb703039ff78832e5a5f31e91c5c629188517a"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.3-darwin-x86_64.zip"
		sha256 "9491c14421da5662fdc23b85660f21609f81c3282ea226d42546170473012be6"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
