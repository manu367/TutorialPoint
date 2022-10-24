let WIDTH;


function myFunction(x) {
    x.classList.toggle("change");
}

setInterval(()=>{
    checkwidth();
},1);


function checkwidth(){
    let mobileNav=document.getElementById("mobile-nav");
    //console.log(mobileNav);
    var width=$("#mobile-nav").width();
    if(width<=500){
        // console.log("width="+width);
        $("#mobile-nav").show();

    }else if(width>500){
        $("#mobile-nav").hide();
    }
}



