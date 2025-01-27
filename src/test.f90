module test_module
  implicit none
  private

  public :: say_hello, saxpy
contains
  subroutine say_hello
    print *, "Hello, test!"
  end subroutine say_hello
subroutine saxpy (nn, aa, xx, yy)
implicit none 
  integer :: nn
  real*4 :: aa, xx(nn), yy(nn)
  integer i
  real*4 :: t
  !$acc routine

  do i = 1, nn
    yy(i) = yy(i) + aa * xx(i)
  end do
end subroutine saxpy
end module test_module
