class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.10.4"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.4-darwin-arm64.zip"
		sha256 "069f3af24d6d8e0647e96f67d23e297d3c298b1727fcc82a93edd359e545eeea"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.4-darwin-x86_64.zip"
		sha256 "c42282103491673198f38fa151d12fc0872afb44e209900fbb182b0f62fa175e"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
