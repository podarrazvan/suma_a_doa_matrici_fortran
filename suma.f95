program suma

implicit none

integer,allocatable,save :: A(:,:), B(:,:), S(:,:)
integer:: l,c,i,j
open(1, file="m1.text",status="old")
open(2, file="m2.text",status="old")
open(3, file="rezultat.text", status="unknown")

!citim liniile si coloanele 

read(1,*)l,c

!alocam spatiu matriciilor

allocate(A(l,c))
allocate(B(l,c))
allocate(S(l,c))
!adaugam numerele in matrice

read(1,*) ((A(i,j),j=1,c),i = 1,l)
read(2,*) ((B(i,j),j=1,c),i = 1,l)

!suma
do i = 1, l
  do j = 1,c
   S(i,j) = A(i,j) + B(i,j)
  enddo
enddo
write(3,*)"Suma celor 2 matrici este " 
write(3,*)((S(i,j), j=1,c),i = 1,l) 

end program
