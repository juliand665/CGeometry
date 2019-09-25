// swift-tools-version:5.1

import PackageDescription

let package = Package(
	name: "CGeometry",
	products: [
		.library(
			name: "CGeometry",
			targets: ["CGeometry"]
		),
	],
	dependencies: [],
	targets: [
		.target(
			name: "CGeometry",
			dependencies: []
		),
		.testTarget(
			name: "CGeometryTests",
			dependencies: ["CGeometry"]
		),
	]
)
