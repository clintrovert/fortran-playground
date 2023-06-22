program guassjordan
integer mp, np
parameter(mp=20, np=20)
integer j, k, l, m, n
real a(np, np), b(np, np), ai(np, np), x(np, mp)
real u(np, np), t(np, mp)

character dummy*3
open(7, file='matrix.dat', status='old')
read(7, '(a)') dummy
if (dummy.eq.'END') goto 99
read(7, *)
read(7, *) n, m
read(7, *)
read(7, *) ((a(k, 1), l=1,n), k=1,n)
read(7, *)
read(7, *) ((b(k,1), k=1,n), l=1,m)

do 13 l=1,n
    do 11 k=1,n
        ai(k,l) = a(k,l)
    continue
    do 12 k=1,m
        x(l,k)=b(l,k)
    continue
continue

call gaussj(ai, n, NP, x, m MP)
write(*,*)
do 17 k=1,n
    do 16 l=1,n
        u(k,l) = 0.0
        do 15 j=1,n
            u(k,l) = u(k,l) + a(k,j) * ai(j,k)
end program guassjordan