    /* Function to generate combination of password */
    debugger;
    let ciddisabled=document.getElementById("courseid");
    debugger;
    function generateP() {
    var pass = '';
    var str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' +
    'abcdefghijklmnopqrstuvwxyz0123456789@#$';
    var ma=Math.floor(((Math.random()+1000)*Math.random()+1)/2);
    var va=Math.floor (Math.random());

    for (let i = 1; i <= 8; i++) {
    var char = Math.floor(Math.random()
    * str.length + 1);

    pass += str.charAt(char)
}

    return ma+pass+va;
}


    $(document).ready(()=>{
        debugger;
        $("#buttonaddon2").click(()=>{
            //alert("buuton id");
            debugger;
            ciddisabled.value=generateP();
            debugger;

        });

        debugger;
        $("#course").on("input",function(){
            $(this).css({
                'text-transform': 'uppercase'
            })
        });

        debugger;
        $("#myfrom").on("submit",(e)=>{
            e.stopImmediatePropagation();
            e.preventDefault();
            ciddisabled.disabled=false;
            let cid=$("input[name='cid']").val();
            let cname=$("input[name='cname']").val();
            let ctype= $("select[name='ctype']").val();
            let cfile=$("input[type='file']").val();
            debugger;
            console.log("name is ="+cname);
            console.log("cid is"+cid);
            console.log("ctype is"+ctype);
            console.log("file is"+cfile);
            debugger;

            //hide all data
            debugger;
            (function (){
                $("#row").hide();
                $("#imgClick").removeClass("from-image");
            })();
            debugger;
            //row add in table

            (function () {
                let i=0;
                debugger;
                var make="<tr>\n" +
                    "                    <th scope=\"row\">"+cid+"</th>\n" +
                    "                    <td>"+cname+"</td>\n" +
                    "                    <td>"+ctype+"</td>\n" +
                    "                    <td>\n" +
                    "                        <form action=\"index\" method=\"post\" class=\"d-inline-flex\">\n" +
                    `                            <input type=\"hidden\" value=${i}>\n` +
                    "                            <button type=\"submit\" class=\"btn btn-outline-primary\">Edit</button>\n" +
                    "                        </form>\n" +
                    "                        <button class=\"btn btn-warning btnDelete\" onmouseenter=manu("+cid+")>Delete</button>\n" +
                    "                    </td>\n" +
                    "\n" +
                    "                </tr>";
                debugger;
                tableBody = $("table tbody");
                debugger;
                tableBody.prepend(make);
                debugger;
            })();
            // $.ajax({
            //     url:"Addcourse",
            //     type:"POST",
            //     data: new FormData(document.getElementById("myfrom")),
            //     contentType:false,
            //     processData:false,
            //     success: function (result){
            //         (function (){
            //             let successImage=document.getElementById("success");
            //             successImage.src="static_folder/images/success.gif";
            //             setTimeout(()=>{
            //                 let successImage=document.getElementById("success");
            //                 successImage.src="static_folder/images/waiting.gif";
            //             },100)
            //
            //             console.log(result);
            //             setTimeout(()=>{
            //                 $("#imgClick").addClass("from-image");
            //                 $("#row").show();
            //                 $("#staticBackdrop").modal("hide");
            //
            //             },5000);
            //
            //         })();
            //     },
            //     error:function (error,thorewn) {
            //         alert("fails");
            //     },
            //     statusCode: {
            //         404: function() {
            //             alert( "page not found" );
            //         }
            //     }
            // });
            //


        });


    });





