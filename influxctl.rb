class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.10.3"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.3-darwin-arm64.zip"
		sha256 "b7af7de3622e4b200fd74056070785bb6927013c8f7dc8dbe3f01755f4549421"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.10.3-darwin-x86_64.zip"
		sha256 "5156d0ada021ffb2c108bf1b670c08dd92409a992bfac96d7e856a71f937f00e"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
