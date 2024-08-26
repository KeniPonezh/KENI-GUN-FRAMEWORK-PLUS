//simple timer!
tt_timer+=1
// move in & move out
if offsetx<=0 & tt_timer <= 120{
offsetx-=(offsetx/10)
}

if tt_timer > 120{
offsetx+=((offsetx/2))
}