# elm-maybe-pipeline

Tired of Maybe.map all the time?
Make your code more understandable and readable with MaybePipeline!

## Usage

Insted of `Maybe.map f ma` use ma `ma ?> f`.

```elm
  list
    |> List.head
    ?> .createdAt
    ?> Date.toTime
```

Insted of `Maybe.andThen ma f` use `ma ?>? f`.

```elm
  laneId
    |> getLaneById board
    ??> \x -> next x lanes
```
