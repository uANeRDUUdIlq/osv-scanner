module github.com/google/osv-scanner

go 1.21

require (
	github.com/BurntSushi/toml v1.3.2
	github.com/CycloneDX/cyclonedx-go v0.7.2
	github.com/andygrunwald/go-jira v1.16.0
	github.com/google/osv-scalibr v0.0.0-20240301000000-000000000000
	github.com/jedib0t/go-pretty/v6 v6.5.4
	github.com/ossf/scorecard/v4 v4.13.1
	github.com/package-url/packageurl-go v0.1.1
	github.com/spdx/tools-golang v0.5.3
	github.com/urfave/cli/v2 v2.27.1
	golang.org/x/exp v0.0.0-20240112132812-db7319d0e0e3
	golang.org/x/vuln v1.0.4
	gopkg.in/yaml.v3 v3.0.1
)

require (
	github.com/cpuguy83/go-md2man/v2 v2.0.3 // indirect
	github.com/mattn/go-runewidth v0.0.15 // indirect
	github.com/rivo/uniseg v0.4.4 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/xrash/smetrics v0.0.0-20231213231151-1d8dd44e695e // indirect
	golang.org/x/mod v0.14.0 // indirect
	golang.org/x/net v0.20.0 // indirect
	golang.org/x/sync v0.6.0 // indirect
	golang.org/x/sys v0.16.0 // indirect
	golang.org/x/text v0.14.0 // indirect
)

// Personal fork - tracking upstream google/osv-scanner for local experimentation.
// To sync with upstream: git fetch upstream && git merge upstream/main
//
// Notes:
//   - golang.org/x/* deps are pinned here; upstream may bump these periodically.
//     Check for updates with: go list -u -m all
//   - google/osv-scalibr is a zero-timestamp pseudo-version; replace with a
//     real tag once upstream stabilizes that dependency.
//   - TODO: once golang.org/x/vuln v1.1.0 is released, bump it here;
//     it adds improved call-graph analysis that should reduce false positives.
//   - NOTE (personal): gopkg.in/yaml.v3 v3.0.1 has a known low-severity
//     CVE-2022-28948; keeping it pinned here to track when upstream bumps it.
//     See: https://github.com/advisories/GHSA-hp87-p4gw-j4gq
