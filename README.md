# semantic-release-gradle-sonatype-example

An example setup for [Semantic Release](https://github.com/semantic-release/semantic-release) on a Gradle Java project
with publishing to Sonatype Maven Central.

`.releaserc` contains the Semantic Release config.
`package.json` and `package-lock.json` contain module dependencies for Semantic Release.
These can be set up by running `npm init` followed by `npm install -D <module>` commands.
While this example is for a Java project on Gradle, NPM and Node are needed for Semantic Release to work.

Semantic Release is a NodeJS tool for releasing software.

Set `GH_TOKEN` environment variable.

Remove `version` from `build.gradle`, as the versioning plugin takes care of that.

Set up gradle.properties for signing and publishing configs.
Good guide [here](https://www.albertgao.xyz/2018/01/18/how-to-publish-artifact-to-maven-central-via-gradle/).

Why NodeJS?
https://github.com/KengoTODA/gradle-semantic-release-plugin
https://github.com/tschulte/gradle-semantic-release-plugin
It's not about NodeJS, it's about the tool.

At least node 14.17 is needed, see [version requirements](https://github.com/semantic-release/semantic-release/blob/master/docs/support/node-version.md).
```shell
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
```

Recommended is to squash commits

In `publishCmd` replace `closeSonatypeStagingRepository` with `closeAndReleaseSonatypeStagingRepository` for actual release.

* https://github.com/semantic-release/semantic-release
    * https://semantic-release.gitbook.io/semantic-release
    * https://github.com/semantic-release/cli
* https://github.com/DanySK/git-sensitive-semantic-versioning-gradle-plugin
* https://github.com/gradle-nexus/publish-plugin
* https://docs.gradle.org/current/userguide/publishing_maven.html
* https://docs.gradle.org/current/userguide/signing_plugin.html
* https://www.albertgao.xyz/2018/01/18/how-to-publish-artifact-to-maven-central-via-gradle/
* https://github.com/semantic-release/exec
* https://github.com/semantic-release/commit-analyzer
* https://github.com/semantic-release/release-notes-generator
* https://github.com/semantic-release/github
* [Angular commit message format](https://github.com/angular/angular/blob/main/CONTRIBUTING.md#-commit-message-format)
