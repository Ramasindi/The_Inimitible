<%@ Page Title="Find Tutor" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="TutorSearch.aspx.cs" Inherits="ProjectTest.TutorSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>

/*the container must be positioned relative:*/
.autocomplete {
  margin-right: -5px;
  position: relative;
  display: inline-block;
}

input {
  width: 100%;
  border: 3px solid #00B4CC;
  border-right: none;
  padding: 5px;
  height: 35px;
  border-radius: 5px 0 0 5px;
  outline: none;
}

.autocomplete-items {
  position: absolute;
  border: 1px solid #d4d4d4;
  border-bottom: none;
  border-top: none;
  z-index: 99;
  /*position the autocomplete items to be the same width as the container:*/
  top: 100%;
  left: 0;
  right: 0;
}

.autocomplete-items div {
  padding: 10px;
  cursor: pointer;
  background-color: #fff; 
  border-bottom: 1px solid #d4d4d4; 
}

/*when hovering an item:*/
.autocomplete-items div:hover {
  background-color: #e9e9e9; 
}

/*when navigating through the items using the arrow keys:*/
.autocomplete-active {
  background-color: DodgerBlue !important; 
  color: #ffffff; 
}
.searchButton {
  width: 40px;
  height: 36px;
  border: 1px solid #00B4CC;
  background: #00B4CC;
  text-align: center;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
         <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1>Find A Tutor</h1>
                    </div>
                    <!-- end of col -->
                </div>
                <!-- end of row -->
            </div>
            <!-- end of container -->
        </header>
        <!-- end of ex-header -->
        <!-- end of header -->
        <!-- Basic -->
        <div class="ex-basic-1 pt-5 pb-5" style="overflow: auto;">
            <div class="container text-center" style="height: 500px;">
                    <div class="autocomplete" style="width:400px;">
                        <input id="myInput" type="text" name="myCountry" placeholder="Search Tutor by subject">
                      </div>
                      <button type="button" onclick="chosenSub()" class="searchButton">
                        <i class="fa fa-search"></i>
                     </button>
                <br /><br /><br />
                <div style="float: left; width: 400px;">                   
                    <div class="card bg-light text-dark">
                        <h5>Tutors</h5>
                        <div class="card-body" style="text-align: left;" id="tutors">
                               
                        </div>
                      </div>
                </div>
            </div>
            <script>
                //handling input
                function chosenSub() {
                    document.getElementById("tutors").innerHTML = "";
                    if (myInput.value === "") {
                        alertToast("error", "Search field is empty");
                    } else {
                        var searchInp = myInput.value.toLowerCase();
                        var searchStr = "";
                        if (searchInp.startsWith("agr") || searchInp.startsWith("ge")) {
                            searchStr = "Agricultural";
                        } else if (searchInp.startsWith("de") || searchInp.startsWith("mu") || searchInp.startsWith("vis")) {
                            searchStr = "Arts";
                        } else if (searchInp.startsWith("is") || searchInp.startsWith("ts") || searchInp.startsWith("x") || searchInp.startsWith("afr") || searchInp.startsWith("si") || searchInp.startsWith("so") || searchInp.startsWith("eng")) {
                            searchStr = "Languages";
                        } else if (searchInp.startsWith("ma")) {
                            searchStr = "Maths";
                        } else if (searchInp.startsWith("sc") || searchInp.startsWith("li") || searchInp.startsWith("ph") || searchInp.startsWith("com") || searchInp.startsWith("engin") || searchInp.startsWith("inf")) {
                            searchStr = "Sciences";
                        } else if (searchInp.startsWith("acc") || searchInp.startsWith("int") || searchInp.startsWith("econ")) {
                            searchStr = "Services";
                        } else if (searchInp.startsWith("his") || searchInp.startsWith("cons") || searchInp.startsWith("tou")) {
                            searchStr = "Social";
                        } else {
                            alertToast("error", "No Tutor found.");
                            return;
                        }
                        console.log(searchStr);
                        firebase.database().ref("Subjects/" + searchStr).on('value', function (snap) {
                            if (snap.exists()) {
                                snap.forEach(function (node) {
                                    console.log(node.val().email);
                                    document.getElementById("tutors").innerHTML += "<p> <b>Email address: </b>  " + node.val().email+" <a href='LiveSession.aspx' style='color: blue; float: right'>Call This Tutor</a></p>";
                                });                                                              
                            } else {
                                alertToast("error", "No Tutor found.");
                            }
                            
                        });
                         
                    }
                    
                }
                function autocomplete(inp, arr) {
                    var currentFocus;
                    inp.addEventListener("input", function (e) {
                        var a, b, i, val = this.value;
                        closeAllLists();
                        if (!val) { return false; }
                        currentFocus = -1;
                        a = document.createElement("DIV");
                        a.setAttribute("id", this.id + "autocomplete-list");
                        a.setAttribute("class", "autocomplete-items");
                        this.parentNode.appendChild(a);
                        for (i = 0; i < arr.length; i++) {
                            if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                                b = document.createElement("DIV");   
                                b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                                b.innerHTML += arr[i].substr(val.length);
                                b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                                b.addEventListener("click", function (e) {
                                    inp.value = this.getElementsByTagName("input")[0].value;
                                    closeAllLists();
                                });
                                a.appendChild(b);
                            }
                        }
                    });
                    /*execute a function presses a key on the keyboard:*/
                    inp.addEventListener("keydown", function (e) {
                        var x = document.getElementById(this.id + "autocomplete-list");
                        if (x) x = x.getElementsByTagName("div");
                        if (e.keyCode == 40) {
                            currentFocus++;
                            /*and and make the current item more visible:*/
                            addActive(x);
                        } else if (e.keyCode == 38) { 
 
                            currentFocus--;
                            /*and and make the current item more visible:*/
                            addActive(x);
                        } else if (e.keyCode == 13) {
                            /*If the ENTER key is pressed, prevent the form from being submitted,*/
                            e.preventDefault();
                            if (currentFocus > -1) {
                                /*and simulate a click on the "active" item:*/
                                if (x) x[currentFocus].click();
                            }
                        }
                    });
                    function addActive(x) {
                        /*a function to classify an item as "active":*/
                        if (!x) return false;
                        /*start by removing the "active" class on all items:*/
                        removeActive(x);
                        if (currentFocus >= x.length) currentFocus = 0;
                        if (currentFocus < 0) currentFocus = (x.length - 1);
                        /*add class "autocomplete-active":*/
                        x[currentFocus].classList.add("autocomplete-active");
                    }
                    function removeActive(x) {
                        for (var i = 0; i < x.length; i++) {
                            x[i].classList.remove("autocomplete-active");
                        }
                    }
                    function closeAllLists(elmnt) {
                        var x = document.getElementsByClassName("autocomplete-items");
                        for (var i = 0; i < x.length; i++) {
                            if (elmnt != x[i] && elmnt != inp) {
                                x[i].parentNode.removeChild(x[i]);
                            }
                        }
                    }
                    document.addEventListener("click", function (e) {
                        closeAllLists(e.target);
                    });
                }

                var subjects = ["Mathematics", "Geography", "Life Science", "Physical Science", "Agricultural Sciences", "IsiXhosa", "IsiZulu", "Sotho", "Tswana", "Tshivenda", "Computer Literacy and Technology", "Economic and Management Sciences", "Design", "Engineering Graphics and Design", "Information Technology", "Music", "History", "Afrikaans", "Visual Arts", "Xitsonga", "Siswati", "Accounting", "Consumer Studies", "Tourism","International Studies"];
                
                autocomplete(document.getElementById("myInput"), subjects);
            </script>
        </div>
    </form>
</asp:Content>