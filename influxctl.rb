class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.9.8"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.8-darwin-arm64.zip"
		sha256 "ede70ee979d874571e99923c946fd2ef3de219566cff433782c93f7a82bb5e4f"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.9.8-darwin-x86_64.zip"
		sha256 "075e0da6e62bc4de4955f6bd21702daa102fa33ec37585f6874d828b207cf27d"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
