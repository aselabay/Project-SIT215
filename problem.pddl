(define (problem Cupcake-simple)
    (:domain Cupcake)
    (:objects
        arm - robot
        cupcake - cupcake
        table - location
        plate - location
    )

    (:init
        (on arm table)
        (on cupcake table)
        (arm-empty)
        (path table plate)
    )

    (:goal 
        (on cupcake plate)
    )
)
