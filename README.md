# bzip2_decomp
An Elixir NIF for [bzip2-rs](https://github.com/paolobarbolini/bzip2-rs).
- Works standalone with no dependency on libbzip2.
- Precompiled binaries available via [rustler_precompiled](https://github.com/philss/rustler_precompiled).
- MIT licensed.

## Installation
Add `:bzip2_decomp` to your list of dependencies in `mix.exs`:

<!-- BEGIN: VERSION -->
```elixir
def deps do
  [
    {:bzip2_decomp, "~> 0.1.0"}
  ]
end
```
<!-- END: VERSION -->

Documentation is available on [HexDocs](https://hexdocs.pm/bzip2_decomp/readme.html) and may also be generated with [ExDoc](https://github.com/elixir-lang/ex_doc).

## Usage
```elixir
Bzip2.decompress(encoded_data)
```

## Acknowledgments
Special thanks to [crypdough.eth](https://github.com/crypdoughdoteth) for providing the Rust expertise to make this package possible.
