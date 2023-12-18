class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.4.2"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.4.2-darwin-arm64.zip"
		sha256 "f4ecd9048a13b3401e861391a317f2138d47d2fc1605c4ba5fc0cf3098145ec7"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.4.2-darwin-x86_64.zip"
		sha256 "8608f1b4e9e848a453dd89424acf6f770c84fdd2f0ff1f34e0a283d16b94e601"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
