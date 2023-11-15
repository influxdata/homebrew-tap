class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.3.1"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.3.1-darwin-arm64.zip"
		sha256 "27340886be43704a108625a16a3c897ce0bb1e6f2a8f45d482703e00456b497a"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.3.1-darwin-x86_64.zip"
		sha256 "7aad26466c377b46e49231da99b6033b3c5a7ec0cf0af3eeeae74989762e769d"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
