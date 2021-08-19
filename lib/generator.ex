defmodule Generator.CLI do
  def main([_] = args) do
    Enum.map(args, fn arg ->
      case arg do
        "uuid" ->
          IO.puts(UUID.uuid4())

        "cpf" ->
          IO.puts(Brcpfcnpj.cpf_generate())

        "cnpj" ->
          IO.puts(Brcpfcnpj.cnpj_generate())
      end
    end)
  end

  def main(_any) do
    IO.puts("""
    basic commands:
      cnpj\t\tgenerate a valid cnpj
      cpf \t\tgenerate a valid cpf
      uuid\t\tgenerate a valid uuid4

    usage:
      generator [command]
    """)
  end
end
