jour = 0

<+s::
{
    Send, {Shift Up}

    Sleep, 20

    Send, {d Up}

    Sleep, 20

    Send, {q Up}

    Sleep, 20

    Send, {Space Up}

    Sleep, 20
    
    Reload

    return
}

b::
{  
    Loop {
        Send, {Shift Down}
        Send, {d Down}

        Sleep, 650

        Send, {Space Down}
        Sleep, 20
        Send, {Space Up}

        Loop 4 {
            Sleep, 900

            Send, {Space Down}
            Sleep, 20
            Send, {Space Up}
        }

        Sleep, 800

        Send, {d Up}

        Send, {q Down}

        Sleep, 100

        Loop 5 {
            Sleep, 880

            Send, {Space Down}
            Sleep, 20
            Send, {Space Up}
        }

        Sleep, 650

        Send, {q Up}

        Send, {d Down}

        Send, {Space Down}
        Sleep, 20
        Send, {Space Up}

        Sleep, 400

        Send, {d Up}

        Send, {Shift Up}

        Sleep, 100

        if (jour == 0) {
        jour = 1
        run cmd /c date 11-02-2025,,hide
        }
        else {
            jour = 0
            run cmd /c date 10-02-2025,,hide
        }
    }

    return
}