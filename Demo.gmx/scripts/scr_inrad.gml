clocationx=argument0
clocationy=argument1
cradiusx=argument2
cradiusy=argument3
radius=argument4

cvx=(cradiusx-clocationx)
cvy=(cradiusy-clocationy)
clen=(cvx*cvx+cvy*cvy)
if clen<=radius*radius{
    return true
}
else
{
    return false
}
