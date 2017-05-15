#  Commanded example application

Using the Extreme adapter ([commanded-extreme-adapter](https://github.com/slashdotdash/commanded-extreme-adapter)) for Greg Young's Event Store.

## Getting started

  1. Install and run the [Event Store](https://geteventstore.com/).

  2. Get dependencies and start an interactive Elixir shell:

```
mix deps.get
iex -S mix
```

  3. Execute the example function to dispatch commands.

```elixir
Example.run()
```
