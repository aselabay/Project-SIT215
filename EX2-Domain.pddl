(define (domain Cupcake-ex2)
    (:requirements :typing) 

    (:types         
        location locatable - object
        bot cupcake unicorn - locatable
        robot - bot
    )

    (:predicates
        (on ?obj - locatable ?loc - location)
        (holding ?arm - locatable ?obj - locatable)
        (eaten ?unicorn - unicorn ?cupcake - cupcake)
        (arm-empty)
        (path ?location1 - location ?location2 - location)
    )

    (:action pick-up
        :parameters
        (?arm - bot
        ?obj - locatable
        ?loc - location)
        :precondition
        (and 
            (on ?arm ?loc) 
            (on ?obj ?loc) 
            (arm-empty)
        )
        :effect
        (and 
            (not (on ?obj ?loc))
            (holding ?arm ?obj)
            (not (arm-empty))
        )
    )

    (:action drop
        :parameters
        (?arm - bot
        ?obj - locatable
        ?loc - location)
        :precondition
        (and 
            (on ?arm ?loc)
            (holding ?arm ?obj)
        )
        :effect
        (and 
            (on ?obj ?loc)
            (arm-empty)
            (not (holding ?arm ?obj))
        )
    )

    (:action move
        :parameters
        (?arm - bot
        ?from - location
        ?to - location)
        :precondition
        (and 
            (on ?arm ?from) 
            (path ?from ?to)
        )
        :effect
        (and 
            (not (on ?arm ?from))
            (on ?arm ?to)
        )
    )

    (:action eat
        :parameters
        (?unicorn - unicorn
        ?cupcake - cupcake
        ?loc - location)
        :precondition
        (and 
            (on ?unicorn ?loc)
            (on ?cupcake ?loc)
        )
        :effect
        (and 
            (eaten ?unicorn ?cupcake)
            (not (on ?cupcake ?loc))
        )
    )
)
