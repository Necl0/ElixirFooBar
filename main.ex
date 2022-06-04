defmodule Foobar do
  def logic(counter) do
    if counter==200 do
      IO.puts(counter)
    else
      cond do
        rem(counter, 5) == 0 and rem(counter, 7) == 0-> IO.puts("foobar")
        rem(counter, 5) == 0-> IO.puts("foo")
        rem(counter, 7) == 0-> IO.puts("bar")
        rem(counter, 5) != 0 and rem(counter, 7) != 0 -> IO.puts(counter)
      end
      logic(counter+1)
    end
  end
end

# Always start at 1
Foobar.logic(1)
