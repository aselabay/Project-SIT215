(define (problem Cupcake-ex1)
    (:domain Cupcake)
    (:objects
        arm - robot
        cupcake1 - cupcake
        cupcake2 - cupcake
        table - location
        plate - location
    )

    (:init
        (on arm table)
        (on cupcake1 table)
        (on cupcake2 table)
        (arm-empty)
        (path table plate)
    )

    (:goal 
        (and
            (on cupcake1 plate)
            (on cupcake2 plate)
        )
    )
)