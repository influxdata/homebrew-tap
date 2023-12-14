class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.4.1"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.4.1-darwin-arm64.zip"
		sha256 "c2d236f88b0cf667b057ade9abdb92aa8cb0f26ac05dd03aca27c01206d17144"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.4.1-darwin-x86_64.zip"
		sha256 "1a806193a9f98cf0620ac7b1c5d1c15147b7d58ce872a3451cf8ad8e07105cf2"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
