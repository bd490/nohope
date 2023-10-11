function work() {
    document.getElementById('myInput').value = ''
    document.getElementById('cow').value = ''
}

function empty() {
    document.getElementById('a').value = ''
    document.getElementById('b').value = ''
    document.getElementById('c').value = ''
    document.getElementById('d').value = ''
    document.getElementById('e').value = ''
    document.getElementById('f').value = ''
}


function emailvalid(){
    let name = document.getElementById(("a")).value
    let long=name.length
    if (long < 1){
        document.getElementById('one').innerHTML = 'email is blank'
    }
    else{
        if (name.indexOf('@') > -1){
            if (name.indexOf('.com')> -1){
                document.getElementById('one').innerHTML = ''
                document.getElementById('new').innerHTML = 'email accepted'

            }
            else if (name.indexOf('.net')> -1){
                document.getElementById('one').innerHTML = ''
                document.getElementById('new').innerHTML = 'email accepted'
            }
            else if (name.indexOf('.edu')> -1){
                document.getElementById('one').innerHTML = ''
                document.getElementById('new').innerHTML = 'email accepted'
            }
            else{
                document.getElementById('one').innerHTML = 'your email is missing a .net,.com,or.edu'
                document.getElementById('new').innerHTML = ''

            }
        }
        else{
            document.getElementById('new').innerHTML = ''
            document.getElementById('one').innerHTML = 'your email is missing an @'
        }
    }}

function psswdvalid(){
    let name = document.getElementById(("b")).value
    let long=name.length
    if (long < 1){
        document.getElementById('two').innerHTML = 'Password blank'
    }
    else{
        if (name.indexOf('!') > -1){
            document.getElementById('two').innerHTML = ''
            document.getElementById('new2').innerHTML = 'Password accepted'
        }
        else if (name.indexOf('@') > -1){
            document.getElementById('two').innerHTML = ''
            document.getElementById('new2').innerHTML = 'Password accepted'
        }
        else if (name.indexOf('#') > -1){
            document.getElementById('two').innerHTML = ''
            document.getElementById('new2').innerHTML = 'Password accepted'
        }
        else if (name.indexOf('$') > -1){
            document.getElementById('two').innerHTML = ''
            document.getElementById('new2').innerHTML = 'Password accepted'
        }
        else if (name.indexOf('%') > -1){
            document.getElementById('two').innerHTML = ''
            document.getElementById('new2').innerHTML = 'Password accepted'
        }
        else if (name.indexOf('6') > -1){
            document.getElementById('two').innerHTML = ''
            document.getElementById('new2').innerHTML = 'Password accepted'
        }
        else if (name.indexOf('7') > -1){
            document.getElementById('two').innerHTML = ''
            document.getElementById('new2').innerHTML = 'Password accepted'
        }
        else if (name.indexOf('*') > -1){
            document.getElementById('two').innerHTML = ''
            document.getElementById('new2').innerHTML = 'Password accepted'
        }
        else{
            document.getElementById('two').innerHTML = ''
            document.getElementById('new2').innerHTML = 'Your password must include one of the following special characters !,@,#,$,%,^,&,*,'
        }
    }
}

function namevalid(){
    let name = document.getElementById(("c")).value
    let long=name.length
    if (long < 1){
        document.getElementById('three').innerHTML = 'firstname is blank'
    }

    else
    {
        let name = document.getElementById(("c")).value
        let y = 0;
        for (let i = 0; i < name.length; i++) {
            let x = name.charAt(i);
            if (!isNaN(x)) {
                y = 1
            }
        }
        if (y == 1) {
            document.getElementById('three').innerHTML = 'firstname can not contain a number'
        }else if (name.indexOf('!') > -1){
            document.getElementById('three').innerHTML = ''
            document.getElementById('new3').innerHTML = 'firstname can not contain special characters'
        }else if (name.indexOf('@') > -1){
            document.getElementById('three').innerHTML = ''
            document.getElementById('new3').innerHTML = 'firstname can not contain special characters'}
        else if (name.indexOf('#') > -1){
            document.getElementById('three').innerHTML = ''
            document.getElementById('new3').innerHTML = 'firstname can not contain special characters'}
        else if (name.indexOf('$') > -1){
            document.getElementById('three').innerHTML = ''
            document.getElementById('new3').innerHTML = 'firstname can not contain special characters'}
        else if (name.indexOf('%') > -1){
            document.getElementById('three').innerHTML = ''
            document.getElementById('new3').innerHTML = 'firstname can not contain special characters'}
        else if (name.indexOf('^') > -1){
            document.getElementById('three').innerHTML = ''
            document.getElementById('new3').innerHTML = 'firstname can not contain special characters'}
        else if (name.indexOf('&') > -1){
            document.getElementById('three').innerHTML = ''
            document.getElementById('new3').innerHTML = 'firstname can not contain special characters'}
        else if (name.indexOf('*') > -1){
            document.getElementById('three').innerHTML = ''
            document.getElementById('new3').innerHTML = 'firstname can not contain special characters'}
        else {
            document.getElementById('new3').innerHTML = 'firstname is accepted'
            document.getElementById('three').innerHTML=""
        }
    }
}

function lastvalid() {
    let name = document.getElementById(("d")).value
    let y = 0;
    let long = name.length
    if (long < 1) {
        document.getElementById('four').innerHTML = 'lastname is blank'
    } else {
        for (let i = 0; i < name.length; i++) {
            let x = name.charAt(i);
            if (!isNaN(x)) {
                y = 1
            }
        }
        if (y == 1) {
            document.getElementById('four').innerHTML = 'lastname can not contain a number'
        }
        else if (name.indexOf('!') > -1){
            document.getElementById('four').innerHTML = ''
            document.getElementById('new4').innerHTML = 'lastname can not contain special characters'}
        else if (name.indexOf('@') > -1){
            document.getElementById('four').innerHTML = ''
            document.getElementById('new4').innerHTML = 'lastname can not contain special characters'}
        else if (name.indexOf('#') > -1){
            document.getElementById('four').innerHTML = ''
            document.getElementById('new4').innerHTML = 'lastname can not contain special characters'}
        else if (name.indexOf('$') > -1){
            document.getElementById('four').innerHTML = ''
            document.getElementById('new4').innerHTML = 'lastname can not contain special characters'}
        else if (name.indexOf('%') > -1){
            document.getElementById('four').innerHTML = ''
            document.getElementById('new4').innerHTML = 'lastname can not contain special characters'}
        else if (name.indexOf('^') > -1){
            document.getElementById('four').innerHTML = ''
            document.getElementById('new4').innerHTML = 'lastname can not contain special characters'}
        else if (name.indexOf('&') > -1){
            document.getElementById('four').innerHTML = ''
            document.getElementById('new4').innerHTML = 'lastname can not contain special characters'}
        else if (name.indexOf('*') > -1){
            document.getElementById('four').innerHTML = ''
            document.getElementById('new4').innerHTML = 'lastname can not contain special characters'}
        else {
            document.getElementById('new4').innerHTML = 'last name is accepted'
            document.getElementById('four').innerHTML = ''
        }
    }
}
function Bollege(){
    let name = document.getElementById(("e")).value
    let y = 0;
    let long = name.length
    if (long < 1) {
        document.getElementById('five').innerHTML = 'college is blank'
    } else {
        document.getElementById('five').innerHTML = 'college is accepted'
    }
}
function Bajor(){
    let name = document.getElementById(("f")).value
    let y = 0;
    let long = name.length
    if (long < 1) {
        document.getElementById('six').innerHTML = 'major is blank'
    } else {
        document.getElementById('six').innerHTML = 'major is accepted'
    }
}
