import ProjectDescription

let targets: [Target] = [
    Target(
        name: "HaebitCommonModels",
        platform: .iOS,
        product: .framework,
        bundleId: "com.seunghun.haebitcommonmodels",
        deploymentTarget: .iOS(targetVersion: "16.0", devices: [.iphone]),
        sources: ["HaebitCommonModels/Sources/**"],
        dependencies: [],
        settings: .settings(base: ["SWIFT_STRICT_CONCURRENCY": "complete"])
    ),
    Target(
        name: "HaebitCommonModelsTests",
        platform: .iOS,
        product: .unitTests,
        bundleId: "com.seunghun.haebitcommonmodels.tests",
        deploymentTarget: .iOS(targetVersion: "16.0", devices: [.iphone]),
        sources: ["HaebitCommonModelsTests/Sources/**"],
        dependencies: [
            .target(name: "HaebitCommonModels")
        ],
        settings: .settings(
            base: [
                "DEVELOPMENT_TEAM": "5HZQ3M82FA",
                "SWIFT_STRICT_CONCURRENCY": "complete"
            ],
            configurations: [],
            defaultSettings: .recommended
        )
    )
]

let project = Project(
    name: "HaebitCommonModels",
    organizationName: "seunghun",
    targets: targets
)
