program circle_test
! PROGRAM circle_test
! This program uses the "circle" module from "circle.f90" to test its functions

  use circle
  implicit none
  real::radius
  
  write (*,*) "Enter radius of the circle: "
  read (*,*) radius
  write (*,*) "Area = ", circarea(radius)
  write (*,*) "Circumference = ", circperi(radius)
  
end program circle_test
