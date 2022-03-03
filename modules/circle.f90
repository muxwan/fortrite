module circle
! MODULE circle
! This is a practise module intended for learning about modules in Fortran.
! It contains the following subprograms :
!   CircArea : calculates a circle's area
!   CircPeri : calculates the 'perimeter' (circumference) of a circle

  implicit none
  real, parameter::pi=atan(1.0)*4
  
  contains
  
  ! FUNCTION CircArea
  ! Input : the circle's radius
  ! Output : the circle's area
  function circarea(radius) result(area)
    real,intent(in)::radius
    real::area
    
    area = pi * radius * radius
    return
  end function circarea
  
  ! FUNCTION CircPeri
  ! Input : the circle's radius
  ! Output : the circle's circumference
  function circperi(radius) result(circumference)
    real,intent(in)::radius
    real::circumference
    
    circumference = 2 * pi * radius
    return
  end function circperi

end module circle
