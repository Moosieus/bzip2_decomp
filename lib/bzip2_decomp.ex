defmodule Bzip2 do
  version = Mix.Project.config()[:version]

  use RustlerPrecompiled,
    otp_app: :bzip2_decomp,
    base_url: "https://github.com/Moosieus/bzip2_decomp/releases/download/v#{version}",
    force_build: System.get_env("RUSTLER_BUILD") in ["1", "true"],
    version: version

  @spec decompress(binary()) :: binary() | {:error, String.t()}
  def decompress(_), do: :erlang.nif_error(:nif_not_loaded)

  @spec decompress!(binary()) :: binary()
  def decompress!(data) when is_binary(data) do
    case decompress(data) do
      {:error, reason} -> raise reason
      result -> result
    end
  end
end
