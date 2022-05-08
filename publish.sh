#!/bni/bash -e

./gradlew publishToSonatype closeSonatypeStagingRepository
# Use the command below to automatically release.
./gradlew publishToSonatype closeAndReleaseSonatypeStagingRepository
