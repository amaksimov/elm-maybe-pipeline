module MaybePipeline exposing (..)

{-| Extra helpers providing pipeline functionality for Maybe types.


# Extra helpers providing pipeline functionality for Maybe types

@docs (?>) (??>)

-}


{-| Insted of Maybe.map f ma use ma ?> f.
-}
(?>) : Maybe a -> (a -> b) -> Maybe b
(?>) lx f =
    case lx of
        Just lx ->
            Just (f lx)

        Nothing ->
            Nothing
infixl 0 ?>


{-| Insted of Maybe.andThen ma f use ma ??> f.
-}
(??>) : Maybe a -> (a -> Maybe b) -> Maybe b
(??>) ma f =
    case ma of
        Just a ->
            f a

        Nothing ->
            Nothing
infixl 0 ??>
