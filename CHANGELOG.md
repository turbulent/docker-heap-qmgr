# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic
Versioning](http://semver.org/spec/v2.0.0.html).

## [5.0.0] - 2017-11-20
### Changed
- Command to start queue has been changed to `/vol/website/vendor/bin/heap queue:consume [queue]` in accordance with Heap 3.0 change.
- Queue name is now a required environment variable, and it defaults to the value `media`.

## [4.0.1] - 2017-08-29
### Fixed
- Fix `supervisorctl` .ini error
- qmgr's standard output and standard error streams are now properly
  redirected to logfiles in `/vol/logs`.

## [4.0.0] - 2017-06-19
Initial public release.
