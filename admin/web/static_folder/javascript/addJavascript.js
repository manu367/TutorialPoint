let cid=document.getElementById("courseid");
    /* Function to generate combination of password */

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
        $("#buttonaddon2").click(()=>{
            //alert("buuton id");
            cid.value=generateP();

        });

        $("#course").on("input",function(){
            $(this).css({
                'text-transform': 'uppercase'
            })
        });

        $("#myfrom").on("submit",(e)=>{
            e.stopImmediatePropagation();
            e.preventDefault();
            cid.disabled=false;

            //hide all data
            (function (){
                $("#row").hide();
                $("#imgClick").removeClass("from-image");
            })();
            //row add in table
            (function () {
                let i=0;
                var make="<tr>\n" +
                    "                    <th scope=\"row\">123</th>\n" +
                    "                    <td>java</td>\n" +
                    "                    <td>teach</td>\n" +
                    "                    <td><img alt=\"\" src=\"static_folder/images/\"  width=\"50\" height=\"50\" class=\"img-thumbnail img-fluid\"></td>\n" +
                    "                    <td>\n" +
                    "                        <form action=\"index\" method=\"post\" class=\"d-inline-flex\">\n" +
                    `                            <input type=\"hidden\" value=${i}>\n` +
                    "                            <button type=\"submit\" class=\"btn btn-outline-primary\">Edit</button>\n" +
                    "                        </form>\n" +
                    "                        <button class=\"btn btn-warning\">Delete</button>\n" +
                    "                    </td>\n" +
                    "\n" +
                    "                </tr>";
                tableBody = $("table tbody");
                tableBody.prepend(make);
            })();
            $.ajax({
                url:"Addcourse",
                type:"POST",
                data: new FormData(document.getElementById("myfrom")),
                contentType:false,
                processData:false,
                success: function (result){
                    (function (){
                        let successImage=document.getElementById("success");
                        successImage.src="static_folder/images/success.gif";
                        setTimeout(()=>{
                            let successImage=document.getElementById("success");
                            successImage.src="static_folder/images/waiting.gif";
                        },100)

                        console.log(result);
                        setTimeout(()=>{
                            $("#imgClick").addClass("from-image");
                            $("#row").show();
                            $("#staticBackdrop").modal("hide");

                        },5000);

                    })();
                },
                error:function (error,thorewn) {
                    alert("fails");
                },
                statusCode: {
                    404: function() {
                        alert( "page not found" );
                    }
                }
            });



        });


    });





