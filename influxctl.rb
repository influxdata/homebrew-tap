class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.1.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.1.0-darwin-arm64.zip"
		sha256 "ca4a257085ebbbc8e1e4e7077cd1b84c75402b555b9c100d9d4a8816f76267f2"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.1.0-darwin-x86_64.zip"
		sha256 "923dc19ea4ff96531c05920e57fd7771f6da3bc56caeca1027e8d81fd28e8ad8"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
