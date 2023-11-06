class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.3.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.3.0-darwin-arm64.zip"
		sha256 "2fe283c9feeb50985b23502b32d33b956b9f7dd33ae9dd4a76ebbec405237ad3"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.3.0-darwin-x86_64.zip"
		sha256 "2757c7cb8dcdc909fe0ebfff47226def09d36ad0a05af2a2a3f4350c2e7cf8e0"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
