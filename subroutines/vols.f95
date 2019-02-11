program vols
  !calculate difference in volume of two spheres
  implicit none
  real :: rad1,rad2,vol1,vol2
  character :: response
  do
     print *, 'Please enter the two radii'
     read *, rad1, rad2
     call volume(rad1, vol1)
     call volume(rad2, vol2)
     write (*,10) 'The difference in volumes is ',abs(vol1-vol2)
10   format(a,2f10.3)
     print *, 'Any more? Y for yes, anything else for no'
     read *,response
     if (response /= 'Y' .and. response /= 'y') stop
  end do
end program vols


subroutine volume(rad,vol)
  implicit none
  real :: rad,vol,pi
  pi = 4.0*atan(1.0)
  vol = 4./3.*pi*(rad**3)
end subroutine volume
