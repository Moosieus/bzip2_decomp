defmodule Bzip2 do
  use Rustler,
    otp_app: :bzip2_decomp

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
