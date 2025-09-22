#!/bin/bash

# Flutter Release Build Script
# Usage: ./build_release.sh [build_number]
# Example: ./build_release.sh 20250922
# Note: APK will be created in build/app/outputs/flutter-apk/app-release.apk

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

info() { echo -e "${BLUE}[INFO]${NC} $1"; }
success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
error() { echo -e "${RED}[ERROR]${NC} $1"; }

# Validate environment
if ! command -v flutter &> /dev/null; then
    error "Flutter not found in PATH"
    exit 1
fi

if [ ! -f "pubspec.yaml" ]; then
    error "pubspec.yaml not found. Run from project root."
    exit 1
fi

if [ -z "$1" ]; then
    error "Build number required"
    echo "Usage: ./build_release.sh [build_number]"
    echo "Example: ./build_release.sh 20250922"
    exit 1
fi

BUILD_NUMBER="$1"
VERSION=$(grep "^version:" pubspec.yaml | sed 's/version: *//g' | tr -d '\r\n')

if [ -z "$VERSION" ]; then
    error "Could not extract version from pubspec.yaml"
    exit 1
fi

info "Building version $VERSION with build number $BUILD_NUMBER"

# Build process
info "Cleaning..."
flutter clean

info "Getting dependencies..."
flutter pub get

info "Building release APK..."
flutter build apk --release --build-number="$BUILD_NUMBER"

# Verify build
APK_PATH="build/app/outputs/flutter-apk/app-release.apk"
if [ ! -f "$APK_PATH" ]; then
    error "Build failed - APK not found"
    exit 1
fi

APK_SIZE=$(du -h "$APK_PATH" | cut -f1)
success "Build completed successfully!"
success "APK: $APK_PATH ($APK_SIZE)"
success "Version: $VERSION"
success "Build Number: $BUILD_NUMBER"

info "APK ready for distribution at: $APK_PATH"