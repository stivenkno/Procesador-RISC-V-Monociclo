.text

_start:

    # t0 = 5
    addi t0, zero, 5

    # t1 = 10
    addi t1, zero, 10

    # t2 = t0 + t1 = 15
    add t2, t0, t1

    # t3 = t2 - t0 = 10
    sub t3, t2, t0

    # verificar si t3 == t1
    beq t3, t1, success

fail:
    # error
    addi a0, zero, -1
    j end

success:
    # éxito
    addi a0, zero, 42

end:
    j end