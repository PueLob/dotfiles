function fish_greeting
# Color
    set -l white (set_color white)
    set -l shel (set_color 00aff0)

# Friendly Interactive SHell
    echo $shel'███████'$white"╗"$shel'██'$white"╗"$shel'███████'$white"╗"$shel'██'$white"╗  "$shel'██'$white"╗"
    echo $shel'██'$white"╔════╝"$shel'██'$white"║"$shel'██'$white"╔════╝"$shel'██'$white"║  "$shel'██'$white"║"
    echo $shel'█████'$white"╗  "$shel'██'$white"║"$shel'███████'$white"╗"$shel'███████'$white"║"
    echo $shel'██'$white"╔══╝  "$shel'██'$white"║"$white"╚════"$shel'██'$white"║"$shel'██'$white"╔══"$shel'██'$white"║"
    echo $shel'██'$white"║     "$shel'██'$white"║"$shel'███████'$white"║"$shel'██'$white"║  "$shel'██'$white"║"
    echo $white"╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝"
    echo $shel'F'$white"riendly "$shel'I'$white"nteractive "$shel'SH'$white"ell"
end
