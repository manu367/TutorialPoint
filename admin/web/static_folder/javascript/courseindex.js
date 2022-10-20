function generateP() {
    var pass = '';
    var str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' +
        'abcdefghijklmnopqrstuvwxyz0123456789@#$';
    var ma=Math.floor(((Math.random()+1000)*Math.random()+1)/2);
    var va=Math.floor(Math.random());

    for (let i = 1; i <= 8; i++) {
        var char = Math.floor(Math.random()
            * str.length + 1);

        pass += str.charAt(char)
    }

    return ma+pass+va;
}
let index=document.getElementById("indexid");
let indexButton=document.getElementById("btn");

$(document).ready(()=>{
    $("#buttonindex").click((e)=>{
        index.value=generateP();
    });
});