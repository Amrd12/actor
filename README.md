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
    -Image model
        -Media model
            -Tv model
            -Movie  model
        -Person
           -Person Detailed Model
           
# model inheritance flow
    -image model
        -person model
            -detailed person model
        -media model
            -tv
            -movie
# Features
    -images
    -Popular Persons
    -Media
    -search

# Hive Types
    0- persoon model
    1- person detaieled model
    2- movie model
    3-tv model