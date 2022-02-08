defmodule CachedFib do

  def fib(n), do: Cache.run(fn cache -> cached_fib(n, cache) end)

  def cached_fib(n, cache) do
    Cache.get(
      cache,
      n,
      fn ->
        cached_fib(n - 2, cache) + cached_fib(n - 1, cache)
      end
    )
  end

end