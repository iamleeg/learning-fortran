program triangles
  !calculate difference in area between two triangles
  implicit none
  real :: h1,b1,h2,b2,a1,a2
  print *, 'Input first triangle height then base:'
  read *, h1,b1
  print *, 'Input second triangle height then base:'
  read *, h2,b2
  call triangle(h1,b1,a1)
  call triangle(h2,b2,a2)
  write (*,10) 'The difference in areas is ',abs(a2-a1)
10 format(a,2f10.3)
end program triangles

subroutine triangle(height,base,area)
  implicit none
  real :: height,base,area
  area = 1./2. * base * height
end subroutine triangle
