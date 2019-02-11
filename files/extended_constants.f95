program extended_constants
  implicit none
  integer, parameter :: ikind = selected_real_kind(p=18)
  real (kind=ikind) :: val,x,y
  val=10/3
  print *,val ! integer maths
  x=10.0
  y=3.0
  val=x/y
  print *,val ! extended precision
  val=10.0_ikind/3
  print *,val ! explicit precision real constant
  val=10.0/3.0
  print *,val ! default precision real constants
  val = .12345678901234567890
  print *,val ! default precision again
  val = .12345678901234567890_ikind
  print *,val ! extended precision const
end program extended_constants
