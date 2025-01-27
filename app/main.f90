program test
  use cublas
  use test_module
  implicit none

  integer, parameter :: N = 10
  integer :: i
  real*4 :: x_ref(N), y_ref(N), x(N), y(N), a

  a = 2.0

  do i = 1, N
     x(i) = 4.0 * i
     y(i) = 3.0
     x_ref(i) = x(i)
     y_ref(i) = y(i)
  end do

  call saxpy (N, a, x_ref, y_ref)

  !$acc data copyin (x) copy (y)
  !$acc host_data use_device (x, y)
  call cublassaxpy(N, a, x, 1, y, 1)
  !$acc end host_data
  !$acc end data

  do i = 1, N
      print *, y(i), " ", y_ref(i)
     if (y(i) .ne. y_ref(i)) call abort
  end do
end program test
