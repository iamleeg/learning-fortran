program magnitude
  ! see if a number is between 0 and 1, 1 and 10, or not
  implicit none
  real :: x
  print *,'Enter a real number'
  read *,x
  if (x > 0 .and. x < 1) then
     print *,'It is between 0 and 1'
  else if (x > 1 .and. x < 10) then
     print *,'It is between 1 and 10'
  else
     print *,'It is outside the ranges I know of.'
  end if
end program magnitude
