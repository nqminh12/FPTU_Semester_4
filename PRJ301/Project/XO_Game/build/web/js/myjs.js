flag = true;
canMove = true;
function myfun(x, y, n) {
    var obj = document.getElementById("btn" + (x * n + y));
    if (obj.innerHTML === "" && canMove) {// check co rong va move dc ko
        obj.innerHTML = flag ? "X" : "O";
        obj.classList.add(flag ? "orange" : "aqua");
        canMove = !checkWinVer2(x, y, n, flag);// check xem da co hang nao noi dc chua theo thu tu cheo chinh, ngang, doc, cheo phu
        flag = !flag;
    }   
    //in ra ket qua ng win
    if (!canMove) {
        d = !flag ? "X" : "O";
        var tag = document.getElementById("alert-tag");
        tag.innerHTML = "Result: " + d + " win this game!";
    }
}
//check xem x co nam trong pham vi cho phep ko
function check(x, n) {
    return x >= 0 && x < n;
}

//ver phai viet ca 4 lan check
function checkWinVer0(x, y, n, flag) {
    c = flag ? "X" : "O";
    count = 0;

    // check duong cheo chinh
    for (var i = -4; i < 5; i++) {
        if (check(x + i, n) && check(y + i, n)) { // x xet tu tren xuong, y xet tu trai sang
            if (document.getElementById("btn" + ((x + i) * n + y + i)).innerHTML == c)
                count++;
            else
                count = 0;

            if (count == 5)
                return true;
        }
    }
    // check duong ngang
    for (var i = -4; i < 5; i++) { // x giu nguyen, y xet tu phai sang trai
        if (check(x, n) && check(y + i, n)) {
            if (document.getElementById("btn" + (x * n + y + i)).innerHTML == c)
                count++;
            else
                count = 0;
            if (count == 5)
                return true;
        }
    }
    //check doc
    for (var i = -4; i < 5; i++) {//y giu nguyen, x xet tu tren xuong
        if (check(x + i, n) && check(y, n)) {
            if (document.getElementById("btn" + ((x + i) * n + y)).innerHTML == c)
                count++;
            else
                count = 0;

            if (count == 5)
                return true;
        }
    }
    // check duong cheo phu
    for (var i = -4; i < 5; i++) {
        if (check(x + i, n) && check(y - i, n)) {
            if (document.getElementById("btn" + ((x + i) * n + y - i)).innerHTML == c)  // x xet tu tren xuong, y xet tu phai sang
                count++;
            else
                count = 0;

            if (count == 5)
                return true;
        }
    }
    return false;
}


// gop ca 4 lan check vao lam 1
function checkWinVer1(x,y,n,flag){
    c = flag? "X" : "O";
    count = 0;
    const directions = [
        { dx: 1, dy: 1 },   // Cheo chinh 
        { dx: 1, dy: 0 },   // Ngang
        { dx: 0, dy: 1 },   // Doc
        { dx: 1, dy: -1 }   // Cheo phu 
    ];
    for (const dir of directions) {
        for (let i = -4; i < 5; i++) {
            const newX = x + i * dir.dx;
            const newY = y + i * dir.dy;

            if (check(newX, n) && check(newY, n)) {
                if (document.getElementById("btn" + (newX* n + newY)).innerHTML == c)  // x xet tu tren xuong, y xet tu phai sang
                    count++;
                else
                    count = 0;

                if (count == 5)
                    return true;
            }
        }
    }

    return false;
}
// sau khi check dung boi den hang ket qua
function checkWinVer2(x, y, n, flag) {
    c = flag ? "X" : "O";
    count = 0;
    const directions = [
        {dx: 1, dy: 1}, // Cheo chinh 
        {dx: 1, dy: 0}, // Ngang
        {dx: 0, dy: 1}, // Doc
        {dx: 1, dy: -1}   // Cheo phu 
    ];
    let array = [];
    for (const dir of directions) {
        for (let i = -4; i < 5; i++) {
            const newX = x + i * dir.dx;
            const newY = y + i * dir.dy;
            if (check(newX, n) && check(newY, n)) {
                if (document.getElementById("btn" + (newX * n + newY)).innerHTML == c) {
                    count++;
                    array.push((newX * n + newY));
                } else {
                    count = 0;
                    array = [];
                }
                if (count == 5) {

                    for (var item of array) {
                        if (c == "O") {
                            document.getElementById("btn" + item).classList.add("win_o");
                        }
                        if (c == "X") {
                            document.getElementById("btn" + item).classList.add("win_x");
                        }

                    }
                    return true;
                }
            }
        }
    }

    return false;
}

function resetGame(n) {
    var tagh1 = document.getElementById("alert-tag");
    tagh1.innerHTML = "";
    for (var i = 0; i < n; i++) {
        for (var j = 0; j < n; j++) {
            var obj = document.getElementById("btn" + (i * n + j));
            obj.innerHTML = "";
            obj.classList.remove("orange", "aqua", "win_o", "win_x");
        }
    }
    flag = true;
    canMove = true;
}
