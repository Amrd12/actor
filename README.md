# actor

A new Flutter project.


#  App Structure
-lib
    -core
        -DI
        -Networking (Dio + retrofit)
        -Routing
        -constans
        -Theming
        -widgets
        -local Manager
    -Features
        -feature
            -data
                -models
                -data source (local , remote)
            -domin layer
                -repo
            -logic
                -cubit/state
            -view
                -screens/widgets

# Models    
    -Media model
        -Tv
        -Movie
    -Person
        -data
        -Imges
        -known for
# model flow
    -image model
        -person model
            -detailed person model
        -media model
            -tv
            -movie
# Features
    -Popular Persons
        -Get All popular
        -add to local
    -Media
        -get media by id
    -search
        -search

# Hive Types
    0- persoon model
    1- person detaieled model
    2- movie model
    3-tv model