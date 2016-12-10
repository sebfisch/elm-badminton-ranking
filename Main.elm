module Main exposing (..)

import Html
import List


type alias Model =
    { club : Club }


type alias Club =
    { name : String, members : List Player }


type alias Player =
    { licenseId : String, name : String }


type Msg
    = Msg


ktvMembers : List Player
ktvMembers =
    [ { name = "Jan Rasehorn", licenseId = "???" }
    , { name = "Sebastian Fischer", licenseId = "???" }
    ]


model : Model
model =
    { club = { name = "Kieler TV", members = ktvMembers } }


update : Msg -> Model -> Model
update msg model =
    model


view : Model -> Html.Html Msg
view model =
    let
        memberItem player =
            Html.li [] [ Html.text player.name ]
    in
        Html.div []
            [ Html.h1 [] [ Html.text model.club.name ]
            , Html.ol [] (List.map memberItem model.club.members)
            ]


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = model
        , update = update
        , view = view
        }
