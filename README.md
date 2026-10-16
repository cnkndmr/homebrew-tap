# cnkndmr/homebrew-tap

Homebrew casks for [Deskmap](https://github.com/cnkndmr/Deskmap).

```bash
brew install --cask cnkndmr/tap/deskmap
```

Deskmap is not notarized yet, so macOS blocks the first launch: open it once,
then go to System Settings › Privacy & Security and click **Open Anyway**.

## Releasing a new version

Update `version` and `sha256` in `Casks/deskmap.rb`:

```bash
shasum -a 256 Deskmap-<version>.zip
```
