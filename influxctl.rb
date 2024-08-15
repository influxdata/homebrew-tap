class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.9.6"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.6-darwin-arm64.zip"
		sha256 "cdbe47774d6b95794d8c0b46ffc4b6b3f744740f0d7c67ffdeb993b4cc75a1d8"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.6-darwin-x86_64.zip"
		sha256 "feb01a36f34aa7b0ebe0955d56270c1d4fba4fa8de91ce163e237abd2e5f19b7"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
