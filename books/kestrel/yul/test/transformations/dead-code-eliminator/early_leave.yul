{
    function f() -> x {
        let a := 20
        for {
        }
        mylt(a, 40)
        {
            a := myadd(a, 2)
        }
        {
            a := a
            leave
            mymstore(0, a)
            a := myadd(a, 10)
        }
        x := 9
    }
    mypop(f())
    function mylt(a, b) -> c { }
    function myadd(a,b) -> c { }
    function mymstore(a,b) { }
    function mypop(a) { }
}

// ----
// step: deadCodeEliminator
//
// {
//     function f() -> x
//     {
//         let a := 20
//         for { } mylt(a, 40) { a := myadd(a, 2) }
//         {
//             a := a
//             leave
//         }
//         x := 9
//     }
//     mypop(f())
//     function mylt(a, b) -> c { }
//     function myadd(a,b) -> c { }
//     function mymstore(a,b) { }
//     function mypop(a) { }
// }
