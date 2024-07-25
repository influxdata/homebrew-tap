class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.9.4"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.4-darwin-arm64.zip"
		sha256 "cf14a13cece1e694766c0c57efc3c2797fe5d77e6bc2a4094eb182da6efc9f04"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.4-darwin-x86_64.zip"
		sha256 "3dc427f356de02db84cf1fa615fc99a6f87aec860bb911352b08df62e871aa80"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
