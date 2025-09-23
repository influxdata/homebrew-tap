class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.10.5"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.5-darwin-arm64.zip"
		sha256 "0de3d0a6114e6b50cfa313829639c568de14e36b8adcc3505aaea3811656a14d"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.5-darwin-x86_64.zip"
		sha256 "fb4e1c6b1f90a59f6717f6be61d7cf4e4c8a056e52170e25524b45386da2848a"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
