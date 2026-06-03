#!/usr/bin/env sh
set -eu

GRADLE_VERSION=9.5.1
DIST_ROOT="${HOME}/.gradle/wrapper/dists/gradle-${GRADLE_VERSION}-bin"
GRADLE_HOME="${DIST_ROOT}/gradle-${GRADLE_VERSION}"

if [ ! -x "${GRADLE_HOME}/bin/gradle" ]; then
  mkdir -p "${DIST_ROOT}"
  ZIP_PATH="${DIST_ROOT}/gradle-${GRADLE_VERSION}-bin.zip"
  if [ ! -f "${ZIP_PATH}" ]; then
    if command -v curl >/dev/null 2>&1; then
      curl -L "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" -o "${ZIP_PATH}"
    elif command -v wget >/dev/null 2>&1; then
      wget "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" -O "${ZIP_PATH}"
    else
      echo "curl ou wget e necessario para baixar o Gradle na primeira execucao." >&2
      exit 1
    fi
  fi
  unzip -q "${ZIP_PATH}" -d "${DIST_ROOT}"
fi

exec "${GRADLE_HOME}/bin/gradle" "$@"
