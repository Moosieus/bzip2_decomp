# bzip2_decomp
An Elixir NIF for [bzip2-rs](https://github.com/paolobarbolini/bzip2-rs).

## Features
- Works standalone with no dependency on libbzip2
- Precompiled binaries available via [rustler_precompiled](https://github.com/philss/rustler_precompiled)
- MIT licensed

## Installation
If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bzip2_decomp` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bzip2_decomp, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/bzip2_decomp>.

## Scratch notes:
Target this commit: https://github.com/paolobarbolini/bzip2-rs/tree/82e3cbb4ea6cb4249a43f90b06ae1a5e94f06a9f
