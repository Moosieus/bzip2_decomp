# Development
Since the `bzip2-rs` crate hasn't been kept up to date, this repo's targeting [the git repo directly](native/bzip2_decomp/Cargo.toml).

### [Recommended Flow](https://hexdocs.pm/rustler_precompiled/precompilation_guide.html#recommended-flow)
1. release a new tag
2. push the code to your repository with the new tag: `git push origin main --tags`
3. wait for all NIFs to be built
4. run the `mix rustler_precompiled.download Bzip2 --all --print`
5. release the package to Hex.pm (make sure your release includes the correct files).
