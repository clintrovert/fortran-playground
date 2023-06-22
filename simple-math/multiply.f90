program hello
  ! This is a comment line; it is ignored by the compiler
  print *, multiply(3, 4)
end program hello

integer function multiply(a, b)
    implicit none
    integer, intent(in) :: a
    integer, intent(in) :: b

    multiply = a * b
end function multiply