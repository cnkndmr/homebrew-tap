# cnkndmr/homebrew-tap

Homebrew casks for [Deskmap](https://github.com/cnkndmr/Deskmap).

```bash
brew trust cnkndmr/tap   # Homebrew 7 and later, once
brew install --cask cnkndmr/tap/deskmap
```

Deskmap is not notarized yet, so macOS blocks the first launch: open it once,
then go to System Settings › Privacy & Security and click **Open Anyway**.

## Releasing a new version

`version` and `sha256` in `Casks/deskmap.rb` are updated automatically: when a
release is published in [cnkndmr/Deskmap](https://github.com/cnkndmr/Deskmap),
its `Homebrew tap` workflow downloads `Deskmap-<version>.zip`, computes the
checksum and pushes a `deskmap <version>` commit here. To redo it for a tag
(for example after re-uploading the zip), run that workflow by hand from the
Deskmap Actions tab with the tag `v<version>`.

Edit the rest of the cask by hand when the app changes: `depends_on macos:`
(minimum macOS), `app` (bundle name), `zap trash:` (data folder or bundle
identifier) and `desc` / `homepage`.

Check the result with:

```bash
brew update && brew info --cask cnkndmr/tap/deskmap
```
