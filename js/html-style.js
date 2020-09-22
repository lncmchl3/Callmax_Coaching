var menu = document.querySelector(".menu");
var check = document.querySelector("#toggled");
var width = window.matchMedia("(max-width: 1000px)");

const show = () => check.checked === true ? menu.style.display = "block" : menu.style.display = "none";
const mediaQ = (width) => width.matches ? show() : menu.style.display = "block";

mediaQ(width); // Call listener function at run time
width.addListener(mediaQ); // Attach listener function on state changes

// --------------------------------------------------------------

var value = 0;
$(document).ready(function () {
    $('#uname').blur(function () {
        var username = $this.val();
        $.ajax({
            url: "check.jsp",
            method: "POST",
            data: {username: username},
            dataType: "text",
            success: function (html) {
                $('#availability').html(html);
            }
        });
    });
});

function CheckPos(val) {
//        var accountinput = document.getElementById('accountinput');
    var accountinputtitle = document.getElementById('accountinputtitle');
    var addmore = document.getElementById('addmore');
    var r = document.getElementById('removebutton');
    var s = document.getElementById("accountinput");


    if (val === 'TL' || val === 'AM') {

        if (value === 0) {
          // add input box if value if zero
          createFunction();
          }
        else if (value > 1) {
          // deletes input boxes if value is greater than one until one input box left
          $(document).ready(function () {
            while (value !== 1) {
              $("input").remove("#accountinput" + (value - 1));
              value--;
              document.getElementById("accountCounts").value = value;
              }
          });
        }

        r.style.display = 'inline';
        accountinputtitle.style.display = 'block';
        addmore.style.display = 'inline';
      }

    else {
//           accountinput.style.display = 'none';
      $(document).ready(function () {
          while (value !== 0) {
            $("input").remove("#accountinput" + (value - 1));
              value--;
              document.getElementById("accountCounts").value = value;
          }
      });
        accountinputtitle.style.display = 'none';
        addmore.style.display = 'none';
        r.style.display = 'none';
        s.style.visibility = 'none';
    }


}

function confirmPass() {
    var pass1 = document.getElementById("password").value;
    var pass2 = document.getElementById("password2").value;
    var ok = true;
    if (pass1 !== pass2) {
        //alert("Passwords Do not match");
        document.getElementById("password").style.borderColor = "#E34234";
        document.getElementById("password2").style.borderColor = "#E34234";
        return false;
    }
    return ok;
}
function changeback() {
    document.getElementById("password").style.borderColor = "";
    document.getElementById("password2").style.borderColor = "";
}





                  var a = document.getElementById("accountCounts").value;

                  function createFunction() {
                    var x = document.createElement("INPUT");
                    var y = document.createElement("input");
                    var z = document.createElement("br");
                    x.setAttribute("type", "text");
                    x.setAttribute("id", "accountinput" + value);
                    x.setAttribute("name", "accountinput" + value);
                    x.setAttribute("class", "accountInput");
                    var count = value+1;
                    x.setAttribute("placeholder", "Add Account " + count);
                    // y.setAttribute("type", "button");
                    // y.setAttribute("id", "removebutton");
                    // y.setAttribute("name", "removebutton");
                    // y.setAttribute("value", "remove");
                    // y.setAttribute("onClick", "removeFunction()");
                    // document.getElementById("postd").appendChild(x);
                    // document.getElementById("postd").appendChild(z);

                    document.getElementById("addmore").parentNode.insertBefore(x, document.getElementById("removebutton"));
                    // document.getElementById("addmore").parentNode.insertBefore(y, document.getElementById("addmore"));
                    // document.getElementById("addmore").parentNode.insertBefore(z, document.getElementById("removebutton"));
                    value++;
                    document.getElementById("accountCounts").value = value;
                  }

                  // function removeFunction() {
                  //   // Removes an element from the document
                  //   var element = document.getElementById(removebutton);
                  //   element.parentNode.removeChild(element);
                  // }

                  $(document).ready(function () {
                    $("#removebutton").click(function () {
                      if (value !== 0) {
                        $("input").remove("#accountinput" + (value - 1));
                          value--;
                          document.getElementById("accountCounts").value = value;
                      }
                    });
                  });
