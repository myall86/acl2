{
    let a := 20
    for {
    }
    mylt(a, 40)
    {
        a := myadd(a, 2)
    }
    {
        a := a
        break
        mymstore(0, a)
        a := myadd(a, 10)
    }
    function mylt(a, b) -> c { }
    function myadd(a,b) -> c { }
    function mymstore(a,b) { }
}

// ----
// step: deadCodeEliminator
//
// {
//     let a := 20
//     for { } mylt(a, 40) { a := myadd(a, 2) }
//     {
//         a := a
//         break
//     }
//     function mylt(a, b) -> c { }
//     function myadd(a,b) -> c { }
//     function mymstore(a,b) { }
// }
