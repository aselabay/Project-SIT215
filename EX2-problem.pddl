(define (problem Cupcake-ex2)
    (:domain Caupcake-ex2)
    (:objects
        arm - robot
        cupcake1 - cupcake
        unicorn - unicorn
        table - location
        plate - location
    )

    (:init
        (on arm table)
        (on cupcake1 table)
        (on unicorn table)
        (arm-empty)
        (path table plate)
    )

    (:goal 
        (eaten unicorn cupcake1)
    )
)
