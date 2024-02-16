class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.4.4"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.4.4-darwin-arm64.zip"
		sha256 "20cfb0b0fb264e29f43e0035b21f421776613ce326eccd90fe65824735fb9715"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.4.4-darwin-x86_64.zip"
		sha256 "37bd263e8002dbfd0d1de14fb83f5009cb1749a721b796cc479af55b4754cd91"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
