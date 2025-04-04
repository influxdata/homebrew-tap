class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.10.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.0-darwin-arm64.zip"
		sha256 "1763761100da209f92668ecab8c59ac156e93b5823a821727a991efde216366c"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.0-darwin-x86_64.zip"
		sha256 "34f511f0ffcdc33d694b35c8be8498c54833289cf49e1a5f6468710fa7378a18"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
