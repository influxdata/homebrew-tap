class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.9.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.0-darwin-arm64.zip"
		sha256 "c3731fa6a837545144f8afd10484fc6c2860fdc862ba83cc9687551c96ffb5ab"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.0-darwin-x86_64.zip"
		sha256 "ca957027c04e70e01b56fd548aaeac65f71c59a77dc350872c2523afe17e5609"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
