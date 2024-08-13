class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.9.5"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.5-darwin-arm64.zip"
		sha256 "464bdd7489f05015e55c31f545eb3c428489e64c5e2d7c52e29efe21e1f73b16"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.5-darwin-x86_64.zip"
		sha256 "aa6a6296f73a215943c563eb6d405eb270e30d0d3ba8fba9b4451e77719fbe4c"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
