defmodule Generator.CLI do
  def main([_] = args) do
    Enum.map(args, fn arg ->
      case arg do
        "uuid" ->
          IO.puts(UUID.uuid4())

        "cpf" ->
          IO.puts(CPF.generate())
      end
    end)
  end

  def main(_any) do
    IO.puts("""
    basic commands:
      cpf \t\tgenerate a valid cpf
      uuid\t\tgenerate a valid uuid4

    usage:
      generator [command]
    """)
  end
end
