#!/bin/bash

# Exit if any command fails
set -e

# Get absolute paths
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
SOURCE_DIR="$PROJECT_DIR/assets/translations"
OUTPUT_DIR="$PROJECT_DIR/lib/generated"

echo "Source directory: $SOURCE_DIR"
echo "Output directory: $OUTPUT_DIR"

# Ensure output directory exists
mkdir -p "$OUTPUT_DIR"

echo "Generating localization keys..."
dart run easy_localization:generate -f keys -S "$SOURCE_DIR" -O "$OUTPUT_DIR" -o locale_keys.g.dart

echo "Generating localization loader..."
dart run easy_localization:generate -f json -S "$SOURCE_DIR" -O "$OUTPUT_DIR" -o codegen_loader.g.dart

echo "Generating asset references..."
dart run build_runner build --delete-conflicting-outputs

echo "Code generation completed successfully!" 