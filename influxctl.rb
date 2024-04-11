class Influxctl < Formula
	desc "CLI to manage InfluxDB v3 instances"
	homepage "https://docs.influxdata.com/influxdb/cloud-dedicated/reference/cli/influxctl/"
	version "v2.8.0"

	if Hardware::CPU.arm?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.8.0-darwin-arm64.zip"
		sha256 "90e748c14230959227164bc07dea983d00468e1f65e7e0ca2973a507131513c8"
	end

	if Hardware::CPU.intel?
		url "https://dl.influxdata.com/influxctl/releases/influxctl-v2.8.0-darwin-x86_64.zip"
		sha256 "f1474cbad1cd2f26cd4a4146f97ebfbe644e048bd0ed9f6bd996cdd4336b4ce2"
	end

	def install
		bin.install "influxctl"
	end

	test do
		system "#{bin}/influxctl", "version"
	end
end
