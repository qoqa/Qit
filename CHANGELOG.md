# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.0.14] - 2023-01-12

### Fixed
- Fix `View+ConditionalModifier.swift` import for SwiftUI depending on platform

## [0.0.13] - 2023-01-09

### Added
- Add `UIApplication+Window.swift` to get the first `window` and `rootViewController` from the `connectedScenes`

## [0.0.12] - 2022-12-15

### Added
- Add `View+ConditionalModifier.swift` extension with condition to apply the modifier to the view

## [0.0.11] - 2021-11-09

### Added
- Add `NotificationCenter+Utils.swift` extension with observer functions without passing object

## [0.0.10] - 2021-11-08

### Updated
- Update `UIView+Pin.swift` to force auto layout using `translatesAutoresizingMaskIntoConstraints`

## [0.0.9] - 2021-09-09

### Added
- Add `removeArrangedSubviews(_ views: [UIView])` on `UIStackView+Subviews.swift`

## [0.0.8] - 2021-09-08

### Updated
- Update `ContainerCollectionViewCell`'s viewAttached from public to open to enable override in modules 

## [0.0.7] - 2021-09-02

### Added
- Add `UIStackView+Subviews.swift` extension with a function to remove all arranged subviews

## [0.0.6] - 2021-07-20

### Added
- Add tests to `UIView+Pin.swift`

## [0.0.5] - 2021-07-19

### Added
- Add new functions to `UIView+Pin.swift` in order to pin to a specific view

## [0.0.4] - 2021-04-28

### Updated
- Update `UIButton+AllState.swift` by adding the possibility to reset images for all states

## [0.0.3] - 2021-04-21

### Added
- Add custom margins to `pinToSuperviewEdges(:)`

## [0.0.2] - 2021-02-10

### Added
- Add all states for UIButton

## [0.0.1] - 2021-01-14

### Added
- Add initial Qit implementation
