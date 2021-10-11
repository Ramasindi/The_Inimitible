<%@ Page Title="PastPapers" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="PastPapers.aspx.cs" Inherits="ProjectTest.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Header -->
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <h1>Official Exam Past Papers</h1>


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



    <div class="ex-basic-1 pt-5 pb-5">
        <div class="container text-center">
            <div>

                <h5 class="pp" style="text-align: center">Download Grade 12 National Senior Certificate (NSC) past examination papers for 2018, 2019 & 2020 with memos and answer books where applicable.
                          Use these previous exam papers to revise and prepare for the upcoming NSC exams. 
                           This way you can find out what you already know and what you don't know.</h5>
            </div>



            <!--------------------------Accounting       ---------------------------------------------
                       ----------------------  Accounting        -------------------------------------------------
                          ------------------   Accounting           ----------------------------------------------->
            <div class="dropdown" id="Accounting" style="width: 100%">

                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("acc").style.display = "block";
                    }
                </script>

                <button class="dropbtn" style="background-color: #2f4f4f">Accounting </button>
                <div class="dropdown-content" id="acc">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20Nov%202018%20Eng.pdf?alt=media&token=ffd1ad51-d40a-4ed9-988e-f22caf75ea75" style="color: darkblue">Accounting P1 Nov 2020</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20Nov%202018%20FINAL%20Memo%20Eng..pdf?alt=media&token=e2bccf4d-6f1b-407e-99f0-d2529fe14ce6" style="color: darkblue">Accounting P1 Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20P2%20Nov%202020%20Eng.pdf?alt=media&token=de0c8a5c-af9c-49a5-93a6-7f2d63b9a2fd" style="color: darkblue">Accounting P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20P2%20Nov%202020%20Memo%20Eng.pdf?alt=media&token=ebe8740c-14a4-4d36-b2fe-d6923a3ccc73" style="color: darkblue">Accounting P2 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20Nov%202019%20Nov%202019%20Memo%20Eng%20(1).pdf?alt=media&token=ea545eed-19e5-41ea-86e6-0956ab01f179" style="color: darkblue">Accounting Nov 2019 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20Nov%202019%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=70894ea5-2f50-4720-b0e8-017af9d4fee8" style="color: darkblue">Accounting Nov 2019 Nov 2019 Memo Eng</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20Nov%202019%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=70894ea5-2f50-4720-b0e8-017af9d4fee8" style="color: darkblue">Accounting P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20Nov%202019%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=70894ea5-2f50-4720-b0e8-017af9d4fee8" style="color: darkblue">Accounting P2 Nov 2020 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->

                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20Nov%202018%20Eng.pdf?alt=media&token=ffd1ad51-d40a-4ed9-988e-f22caf75ea75" style="color: darkblue">NSC June 2018 Accounting Paper 1 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20Nov%202018%20FINAL%20Memo%20Eng..pdf?alt=media&token=e2bccf4d-6f1b-407e-99f0-d2529fe14ce6" style="color: darkblue">Accounting Nov 2018 FINAL Memo Eng</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20Nov%202019%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=70894ea5-2f50-4720-b0e8-017af9d4fee8" style="color: darkblue">Accounting P2 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAccounting%20Nov%202019%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=70894ea5-2f50-4720-b0e8-017af9d4fee8" style="color: darkblue">Accounting P2 Nov 2018 Memo</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Accounting     ---------------------------------------------------------------->
                </div>
            </div>
            <br />




            <!--------------------------Business Studies       ---------------------------------------------
                       ----------------------  Business Studies        -------------------------------------------------
                          ------------------   Business Studies           ----------------------------------------------->
            <div class="dropdown" id="Business Studies" style="width: 100%">

                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("bs").style.display = "block";
                    }
                </script>

                <button class="dropbtn">Business Studies </button>
                <div class="dropdown-content" id="bs">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FBusiness%20Studies%20P1%20Nov%202020%20Eng.pdf?alt=media&token=92373c51-e35d-45a6-808d-cfb28835b5f0" style="color: darkblue">Business Studies Nov 2020</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FBusiness%20Studies%20P1%20Nov%202020%20Eng%20Memo.pdf?alt=media&token=37fb130e-c405-45ab-8400-8c16dba32583" style="color: darkblue">Business Studies SC Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FBusiness%20Studies%20P2%20NSC%20Nov%202020%20Eng%20(2).pdf?alt=media&token=7087be86-51d6-476d-bf7e-42dff0233858" style="color: darkblue">Business Studies P2 NSC Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FBusiness%20Studies%20P2%20Nov%202020%20Eng%20Memo.pdf?alt=media&token=64829bb3-66aa-4e5f-bb68-98190bbc0db2" style="color: darkblue">Business Studies P2 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FBusiness%20Studies%20Nov%202019%20Eng.pdf?alt=media&token=84431564-e08e-4272-84d1-9fc6f58e03c3" style="color: darkblue">Business Studies Nov 2019 Eng.pdf </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FBusiness%20Studies%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=3afa32d4-098b-434c-b089-e3601ef6f4fc" style="color: darkblue">Business Studies Nov 2019 Memo</a>


                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->

                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FBusiness%20Studies%20Nov%202018%20Eng.pdf?alt=media&token=cc171cef-2446-4526-a181-46e4d9276e39" style="color: darkblue">Business Studies Nov 2018 Eng.pdf </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FBusiness%20Studies%20Nov%202018%20FINAL%20Memo%20Eng..pdf?alt=media&token=3a62970f-6b4a-49d9-b915-39e7dc705b17" style="color: darkblue">Business Studies Nov 2018 FINAL Memo Eng.</a>


                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Business Studies     ---------------------------------------------------------------->
                </div>
            </div>



            <br />



            <!--------------------------Mathematics       ---------------------------------------------
                       ----------------------  Mathematics        -------------------------------------------------
                          ------------------   Mathematics           ----------------------------------------------->
            <div class="dropdown" id="Mathematics" style="width: 100%">

                <%--<div class="dropdown" id="Mathematics">--%>
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("math").style.display = "block";
                    }
                </script>

                <button class="dropbtn" style="background-color: #2f4f4f">Mathematics </button>
                <div class="dropdown-content" id="math">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P1%20Nov%202020%20Eng.pdf?alt=media&token=08e3f078-66fb-4aab-b5e8-ed33539e3db7" style="color: darkblue">Mathematics P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P1%20Nov%202020%20Memo%20Afr%20%26%20Eng.pdf?alt=media&token=fdbbe42a-682a-4325-9543-aad6f51e08a0" style="color: darkblue">Mathematics P1 Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P2%20Nov%202020%20Eng.pdf?alt=media&token=c9b1d6d1-0205-48c2-829c-eecd5abf4333" style="color: darkblue">Mathematics P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P2%20Nov%202020%20Memo%20Afr%20%26%20Eng.pdf?alt=media&token=c71ec36e-69b2-46f3-ae87-b318714274b9" style="color: darkblue">Mathematics P2 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P1%20Nov%202019%20Eng.pdf?alt=media&token=fbcc7a77-6851-4bea-a50c-f19b0c442e53" style="color: darkblue">Mathematics P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P1%20Nov%202019%20Memo%20Afr%20%26%20Eng.pdf?alt=media&token=58f6dca9-c686-4600-9cd0-9967ad5d47b5" style="color: darkblue">Mathematics P1 Nov 2019 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P2%20Nov%202019%20Eng.pdf?alt=media&token=0f6e01c2-17e6-4740-919c-d666f1a3f6f3" style="color: darkblue">Mathematics P2 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P2%20Nov%202019%20Memo%20Afr%20%26%20Eng%20(1).pdf?alt=media&token=3afc8275-9337-4e1a-b52c-eb16a254c1bd" style="color: darkblue">Mathematics P2 Nov 2019 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P1%20Nov%202018%20Eng.pdf?alt=media&token=436c3071-e22b-4420-8816-0e097b9f6981" style="color: darkblue">Mathematics P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P1%20Nov%202018%20FINAL%20Memo%20Afr%20%26%20Eng..pdf?alt=media&token=ff2ef100-eaa2-4253-b159-04efce57ad49" style="color: darkblue">Mathematics P1 Nov 2018 FINAL Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P2%20Nov%202018%20Eng.pdf?alt=media&token=9b18c867-55d2-4199-9482-e3096f0fb367" style="color: darkblue">Mathematics P2 Nov 2018</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P2%20Nov%202018%20FINAL%20Memo%20Afr%20%26%20Eng..pdf?alt=media&token=74aa9c5f-c4ae-46bf-bb27-91b01f64688b" style="color: darkblue">Mathematics P2 Nov 2018 FINAL Memo</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Mathematics     ---------------------------------------------------------------->
                </div>
            </div>
            <br />


            <!--------------------------Geography      ---------------------------------------------
                       ----------------------  Geography        -------------------------------------------------
                          ------------------   Geography           ----------------------------------------------->
            <div class="dropdown" id="Geography" style="width: 100%">
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("geogs").style.display = "block";
                    }
                </script>

                <button class="dropbtn" onclick="RemainOnScreen()">Geography </button>
                <div class="dropdown-content" id="geogs">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P1%20Nov%202020%20Eng.pdf?alt=media&token=fc5122f2-6d64-4450-bc0c-65fa0130fdcc" style="color: darkblue">Geography P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P1%20Nov%202020%20Annexure%20Eng.pdf?alt=media&token=4cff7b9a-2ac2-4f2c-b81b-007199ccb6ecf" style="color: darkblue">Annexure P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P1%20Nov%202020%20Memo%20Eng%20(2).pdf?alt=media&token=2362097f-79dc-45cd-8eb6-8d75e322019a" style="color: darkblue">Geography P1 Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P2%20Nov%202020%20Eng.pdf?alt=media&token=c489d4ef-160e-4581-a935-73ce046d777b" style="color: darkblue">Geography P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P2%20Nov%202020%20Memo%20Eng%20(2).pdf?alt=media&token=47951e68-f026-4048-888a-ef3a99e9de72" style="color: darkblue">Geography P2 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P1%20Nov%202019%20Eng.pdf?alt=media&token=9e2ad0cc-3c2c-4af9-ab9f-632df7d31719" style="color: darkblue">Geography P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P1%20Nov%202019%20Annexure%20Eng.pdf?alt=media&token=d4892f30-6b2f-4ca0-860d-8866789bb9b0" style="color: darkblue">Annexure P1 Nov 2019</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P1%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=d7f436cc-4532-4ead-afec-05bf39c53c2f" style="color: darkblue">Geography P1 Nov 2019 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P2%20Nov%202019%20Eng.pdf?alt=media&token=f76bce6c-5390-423f-9408-30ce36ac9845" style="color: darkblue">Geography P2 Nov 2019 </a>
                    <a href="./assets/papers/Geography P2 Nov 2019 Memo Eng.pdf" style="color: darkblue">Geography P2 Nov 2019 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P1%20Nov%202018%20Eng.pdf?alt=media&token=2f1ef8e1-130c-4cb5-b3ff-0a892d8d53bd" style="color: darkblue">Geography P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P1%20Nov%202018%20FINAL%20Memo%20Eng..pdf?alt=media&token=cdbdd393-9602-41b7-906e-fd6cc2ee36d8" style="color: darkblue">Geography P1 Nov 2018 FINAL Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P2%20Nov%202018%20Eng.pdf?alt=media&token=aeafa53f-eba6-48d7-a801-8afb8c76124b" style="color: darkblue">Geography P2 Nov 2018</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FGeography%20P2%20Nov%202018%20FINAL%20Memo%20Eng..pdf?alt=media&token=076dfede-df24-4cf8-9c08-a166d6d0c209" style="color: darkblue">Geography P2 Nov 2018 FINAL Memo</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Geography     ---------------------------------------------------------------->
                </div>
            </div>
            <br />




            <!--------------------------Life Sciences      ---------------------------------------------
                       ----------------------  Life Sciences         -------------------------------------------------
                          ------------------   Life Sciences            ----------------------------------------------->
            <div class="dropdown" id="Life Sciences" style="width: 100%">
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("ls").style.display = "block";
                    }
                </script>

                <button class="dropbtn" onclick="RemainOnScreen()" style="background-color: #2f4f4f">Life Sciences  </button>
                <div class="dropdown-content" id="ls">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P1%20Nov%202020%20Eng.pdf?alt=media&token=b0e7876f-3b8c-4dea-9413-9b92044a518b" style="color: darkblue">Life Sciences P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P1%20Nov%202020%20Memo%20Eng.pdf?alt=media&token=d94e9011-fe53-4085-abb8-b09f01231e5f" style="color: darkblue">Life Sciences P1 Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P2%20Nov%202020%20Eng%20(2).pdf?alt=media&token=0e39470a-9040-4523-9782-4ef079903faf" style="color: darkblue">Life Sciences P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P2%20Nov%202020%20Memo%20Eng.pdf?alt=media&token=0e5c4089-f616-4427-bcd2-b7929fd5b7fc" style="color: darkblue">Life Sciences P2 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P1%20Nov%202019%20Eng.pdf?alt=media&token=262fc742-f66b-43ee-ab58-90dc517e1bfd" style="color: darkblue">Life Sciences P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P1%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=e7e33dc9-4c1b-42d1-a5a6-0204dc4d7949" style="color: darkblue">Life Sciences P1 Nov 2019 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P2%20Nov%202019%20Eng.pdf?alt=media&token=b3e61979-4a61-420c-88ac-4b88078b8f2f" style="color: darkblue">Life Sciences P2 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P2%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=4eb658bc-19f0-4151-a9a7-b18a0304302c" style="color: darkblue">Life Sciences P2 Nov 2019 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P1%20Nov%202018%20Eng.pdf?alt=media&token=ea042571-c799-47ee-8044-6d8fb4cb60aa" style="color: darkblue">Life Sciences P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P1%20Nov%202018%20FINALMemo%20Eng..pdf?alt=media&token=6c4e7ce8-2166-4028-8561-a46a06690309" style="color: darkblue">Life Sciences P1 Nov 2018 FINAL Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P2%20Nov%202018%20Eng.pdf?alt=media&token=9391f9c0-a81c-4fe7-b373-070ab16e31f2" style="color: darkblue">Life Sciences P2 Nov 2018</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FLife%20Sciences%20P2%20Nov%202018%20FINAL%20Memo%20Eng..pdf?alt=media&token=04e2f8f6-ae73-4461-b90d-ce6415cb54a2" style="color: darkblue">Life Sciences P2 Nov 2018 FINAL Memo</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Life Sciences      ---------------------------------------------------------------->
                </div>
            </div>
            <br />







            <!--------------------------Physical Sciences      ---------------------------------------------
                       ----------------------  Physical Sciences         -------------------------------------------------
                          ------------------   Physical Sciences            ----------------------------------------------->
            <div class="dropdown" id="Physical Sciences" style="width: 100%">
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("ps").style.display = "block";
                    }
                </script>

                <button class="dropbtn" onclick="RemainOnScreen()">Physical Sciences  </button>
                <div class="dropdown-content" id="ps">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P1%20Nov%202020%20Eng.pdf?alt=media&token=77a021e9-5dfb-41f8-896d-3b9cd2414760" style="color: darkblue">Physical Sciences P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P1%20Nov%202020%20Eng%20%26%20Afr%20Memo.pdf?alt=media&token=e5ce3fde-34ae-4409-adac-61527ddb09c1" style="color: darkblue">Physical Sciences P1 Nov 2020 Eng & Afr Memo.pdf</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P2%20Nov%202020%20Eng.pdf?alt=media&token=32db8953-f6ed-4bb0-bc75-e004cee4d71d" style="color: darkblue">Physical Sciences P2 Nov 2020</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P2%20Nov%202020%20Eng%20%26%20Afr%20Memo.pdf?alt=media&token=fe72e479-8482-4e8f-a264-9d8b50bc2d9b" style="color: darkblue">Physical Sciences P2 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P1%20Nov%202019%20Eng.pdf?alt=media&token=b4b43972-f871-489f-86d4-36e37d2eb282" style="color: darkblue">Physical Sciences P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P1%20Nov%202019%20Memo%20Afr%20%26%20Eng.pdf?alt=media&token=2ea5b8dd-3da6-4ea7-a55f-c6cd8a0a1730" style="color: darkblue">Physical Sciences P1 Nov 2019 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P2%20Nov%202019%20Eng.pdf?alt=media&token=901907f0-21c9-469e-ab22-d128c2f8c4c0" style="color: darkblue">Physical Sciences P2 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P2%20Nov%202019%20Memo%20Afr%20%26%20Eng.pdf?alt=media&token=6b8dbbcb-45c4-4c40-a4a9-34133d6d58c5" style="color: darkblue">Physical Sciences P2 Nov 2019 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P1%20Nov%202018%20Eng.pdf?alt=media&token=5d4954f4-216c-4543-9ab3-185c32b7c03b" style="color: darkblue">Physical Sciences P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P1%20Nov%202018%20Eng.pdf?alt=media&token=5d4954f4-216c-4543-9ab3-185c32b7c03b" style="color: darkblue">Physical Sciences P1 Nov 2018 FINAL Memo Afr & Eng.pdf</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P2%20Nov%202019%20Memo%20Afr%20%26%20Eng.pdf?alt=media&token=6b8dbbcb-45c4-4c40-a4a9-34133d6d58c5" style="color: darkblue">Physical Sciences P2 Nov 2018</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FPhysical%20Sciences%20P2%20Nov%202018%20FINAL%20Memo%20Afr%20%26%20Eng..pdf?alt=media&token=44365d3e-2e89-4b1b-80b0-28993adefac2" style="color: darkblue">Physical Sciences P2 Nov 2018 FINAL Memo Afr & Eng.pdf</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Physical Sciences      ---------------------------------------------------------------->
                </div>
            </div>
            <br />








            <!--------------------------Agricultural Sciences      ---------------------------------------------
                       ----------------------  Agricultural Sciences        -------------------------------------------------
                          ------------------   Agricultural Sciences           ----------------------------------------------->
            <div class="dropdown" id="Agricultural Sciences" style="width: 100%">
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("as").style.display = "block";
                    }
                </script>

                <button class="dropbtn" onclick="RemainOnScreen()" style="background-color: #2f4f4f">Agricultural Sciences </button>
                <div class="dropdown-content" id="as">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P1%20Nov%202020%20Eng.pdf?alt=media&token=a26c25ab-5f91-428c-9748-9e5ef87db274" style="color: darkblue">Agricultural Sciences P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P1%20Nov%202020%20Memo%20Eng.pdf?alt=media&token=b6831c89-001a-4a99-b4db-fcb7926e7fb8" style="color: darkblue">Agricultural Sciences P1 Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P2%20Nov%202020%20Eng.pdf?alt=media&token=898b5cd4-f107-4606-82e7-dee886a91597" style="color: darkblue">Agricultural Sciences P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P2%20Nov%202020%20Memo%20Eng.pdf?alt=media&token=16eb80fb-f8be-4a3f-9ebf-a70220f7ab8e" style="color: darkblue">Agricultural Sciences P2 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P1%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=00423390-56b5-498c-b494-49eaa09925e9" style="color: darkblue">Agricultural Sciences P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P1%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=00423390-56b5-498c-b494-49eaa09925e9" style="color: darkblue">Agricultural Sciences P1 Nov 2019 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P2%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=8c325a45-a0b8-4a97-8931-642f3bf93b26" style="color: darkblue">Agricultural Sciences P2 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P2%20Nov%202019%20Memo%20Eng.pdf?alt=media&token=8c325a45-a0b8-4a97-8931-642f3bf93b26" style="color: darkblue">Agricultural Sciences P2 Nov 2019 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P2%20Nov%202018%20Eng.pdf?alt=media&token=4732e839-a7ec-450c-9233-98f9e02b69d7" style="color: darkblue">Agricultural Sciences P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P2%20Nov%202018%20Eng.pdf?alt=media&token=4732e839-a7ec-450c-9233-98f9e02b69d7" style="color: darkblue">Agricultural Sciences P1 Nov 2018 FINAL Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P2%20Nov%202018%20Eng.pdf?alt=media&token=4732e839-a7ec-450c-9233-98f9e02b69d7" style="color: darkblue">Agricultural Sciences P2 Nov 2018</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAgricultural%20Sciences%20P2%20Nov%202018%20FINAL%20Memo%20Eng.pdf?alt=media&token=9bd719a8-c398-4761-acbd-f6acc1d98605" style="color: darkblue">Agricultural Sciences P2 Nov 2018 FINAL Memo</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Agricultural Sciences     ---------------------------------------------------------------->
                </div>
            </div>
            <br />






            <!--------------------------Mathematical Literacy      ---------------------------------------------
                       ----------------------  Mathematical Literacy        -------------------------------------------------
                          ------------------   Mathematical Literacy           ----------------------------------------------->
            <div class="dropdown" id="Mathematical Literacy" style="width: 100%">
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("ml").style.display = "block";
                    }
                </script>

                <button class="dropbtn" onclick="RemainOnScreen()">Mathematical Literacy </button>
                <div class="dropdown-content" id="ml">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="./https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P1%20Eng.pdf?alt=media&token=eb726ed8-d3e9-4cab-9e6f-1dffd2cd2df1" style="color: darkblue">Mathematical Literacy P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P1%20(ADDENDUM)%20Eng%20.pdf?alt=media&token=8ea9cce5-5d6f-467e-aee9-28fcdd190629" style="color: darkblue">Mathematical Literacy P1 (ADDENDUM)</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P1%20Nov%202020%20Memo%20Afr%20%20Eng.pdf?alt=media&token=a5175597-71b2-4142-b247-b7e58971ac6f" style="color: darkblue">Mathematical Literacy P1 Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P2%20Nov%202020%20Eng.pdf?alt=media&token=ad923f3e-1949-41d1-b0c7-306468df28d7" style="color: darkblue">Mathematical Literacy P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P2%20Nov%202020%20Addendum%20Eng.pdf?alt=media&token=479dc36e-3648-4560-839b-a5246940cf2b" style="color: darkblue">Mathematical Literacy P2 (ADDENDUM)</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P2%20Nov%202020%20Memo%20Afr%20%26%20Eng.pdf?alt=media&token=e199fb10-0a71-42ca-9e09-3470c71b7534" style="color: darkblue">Mathematical Literacy P2 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P1%20Nov%202019%20Eng.pdf?alt=media&token=49b01056-2f03-4acb-a5d9-a0111744a5e3" style="color: darkblue">Mathematical Literacy P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P1%20Nov%202019%20Addendum%20Eng.pdf?alt=media&token=9709d7d2-fe3e-4e86-a57c-56d1edee412b" style="color: darkblue">Mathematical Literacy P1 (ADDENDUM)</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P1%20Nov%202019%20Memo%20Afr%20%26%20Eng.pdf?alt=media&token=a502edf9-fb52-4621-80dd-bb62a93f1829" style="color: darkblue">Geography P1 Nov 2019 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="./assets/papers/Mathematical Literacy P2 Nov 2019 Eng.pdf" style="color: darkblue">Mathematical Literacy P2 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P2%20Nov%202020%20Addendum%20Eng.pdf?alt=media&token=479dc36e-3648-4560-839b-a5246940cf2b" style="color: darkblue">Mathematical Literacy P2 (ADDENDUM)</a>
                    <a href="./assets/papers/Mathematics P2 Nov 2019 Memo Afr & Eng (1).pdf" style="color: darkblue">Mathematical Literacy P2 Nov 2019 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P1%20Nov%202018%20Eng.pdf?alt=media&token=73f6e42d-f390-4f00-9ec5-cfe3fd0369d5" style="color: darkblue">Mathematical Literacy P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P1%20Nov%202018%20Addendum%20Eng.pdf?alt=media&token=2403a50d-f2b3-4c20-a9af-582601ff2167" style="color: darkblue">Mathematical Literacy P1 (ADDENDUM)</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematics%20P1%20Nov%202018%20FINAL%20Memo%20Afr%20%26%20Eng..pdf?alt=media&token=ff2ef100-eaa2-4253-b159-04efce57ad49" style="color: darkblue">Mathematical Literacy P1 Nov 2018 FINAL Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P2%20Nov%202018%20Eng.pdf?alt=media&token=dd5c48d7-996b-447c-9ee2-99a4b3d4d115" style="color: darkblue">Mathematical Literacy P2 Nov 2018</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P2%20Nov%202020%20Addendum%20Eng.pdf?alt=media&token=479dc36e-3648-4560-839b-a5246940cf2b" style="color: darkblue">Mathematical Literacy P2 (ADDENDUM)</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FMathematical%20Literacy%20P2%20Nov%202018%20FINAL%20Memo%20Afr%20%26%20Eng..pdf?alt=media&token=3fc446be-64bc-41c5-b3db-70a989e371a3" style="color: darkblue">Mathematical Literacy P2 Nov 2018 FINAL Memo</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Mathematical Literacy     ---------------------------------------------------------------->
                </div>
            </div>
            <br />






            <!--------------------------Tourism      ---------------------------------------------
                       ----------------------  Tourism        -------------------------------------------------
                          ------------------   Tourism           ----------------------------------------------->
            <div class="dropdown" id="Tourism" style="width: 100%">
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("t").style.display = "block";
                    }
                </script>

                <button class="dropbtn" onclick="RemainOnScreen()" style="background-color: #2f4f4f">Tourism </button>
                <div class="dropdown-content" id="t">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FTourism%20Nov%202020%20Eng.pdf?alt=media&token=54d5d299-10a9-426b-8429-cb8027ad6399" style="color: darkblue">Tourism P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FTourism%20Nov%202020%20Memo%20Eng.pdf?alt=media&token=4a749909-055e-4022-9321-2c229160157d" style="color: darkblue">Tourism P1 Nov 2020 Memo</a>

                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FTourism%20Nov%202019%20Eng.pdf?alt=media&token=7c20ad1c-b1b9-45bc-bd69-234f015e566a" style="color: darkblue">Tourism P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FTourism%20May-June%202019%20Memo%20Eng.pdf?alt=media&token=1e440d2a-df2c-4cbb-9d0e-ffd1a74660e0" style="color: darkblue">Tourism P1 Nov 2019 Memo</a>


                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FTourism%20Nov%202018%20Eng.pdf?alt=media&token=1aff333c-8cab-4cae-9fa6-d917efcb3983" style="color: darkblue">Tourism P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FTourism%20Nov%202018%20FINAL%20Memo%20Eng.pdf?alt=media&token=9e7c820b-1313-446c-b93a-e7f870977642" style="color: darkblue">Tourism P1 Nov 2018 FINAL Memo</a>


                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Tourism     ---------------------------------------------------------------->
                </div>
            </div>
            <br />






            <!-------------------------- English First Additional Language      ---------------------------------------------
                       ----------------------   English First Additional Language        -------------------------------------------------
                          ------------------    English First Additional Language           ----------------------------------------------->
            <div class="dropdown" id=" English First Additional Language" style="width: 100%">
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("fal").style.display = "block";
                    }
                </script>

                <button class="dropbtn" onclick="RemainOnScreen()">English First Additional Language </button>
                <div class="dropdown-content" id="fal">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P1%20Nov%202020.pdf?alt=media&token=06c6c1b0-9b93-4e70-a604-291be9dc8780" style="color: darkblue">English First Additional Language P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P1%20Nov%202020%20Memo.pdf?alt=media&token=3f3cb2c8-5824-4fc8-8a7d-5427093acc19" style="color: darkblue">English First Additional Language P1 Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P2%20Nov%202020.pdf?alt=media&token=ff30696f-b6dc-431d-aeb4-b7641fd35026" style="color: darkblue">English First Additional Language P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P2%20Nov%202020%20Memo.pdf?alt=media&token=44aa996b-07cd-482d-9d85-3172479c9500" style="color: darkblue">English First Additional Language P2 Nov 2020 Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P3%20Nov%202020.pdf?alt=media&token=a316b506-356b-4e0c-968f-9c03fa4948e7" style="color: darkblue">English First Additional Language P3 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P3%20Nov%202020%20Memo.pdf?alt=media&token=631a3fd5-3327-4ee5-b692-3c6fba25889c" style="color: darkblue">English First Additional Language P3 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P1%20May-June%202019.pdf?alt=media&token=147dd008-a6cb-475b-a92f-b56d905d3d35" style="color: darkblue">English First Additional Language P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P1%20May-June%202019.pdf?alt=media&token=147dd008-a6cb-475b-a92f-b56d905d3d35" style="color: darkblue">English First Additional Language P1 Nov 2019 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P2%20May-June%202019.pdf?alt=media&token=e2752d72-e3f7-41f5-a93d-e4e7b6e6c553" style="color: darkblue">English First Additional Language P2 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P2%20May-June%202019%20Memo.pdf?alt=media&token=908bb394-7ddc-47e0-bdca-5ee3789b4803" style="color: darkblue">English First Additional Language P2 Nov 2019 Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P3%20Nov%202019.pdf?alt=media&token=e18a2079-beb7-4181-b93c-08067c6f1fb4" style="color: darkblue">English First Additional Language P3 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P3%20Nov%202020%20Memo.pdf?alt=media&token=631a3fd5-3327-4ee5-b692-3c6fba25889c" style="color: darkblue">English First Additional Language P3 Nov 2019 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P1%20Nov%202018.pdf?alt=media&token=8ccf94a8-9c0d-468b-a2fc-348f9e746967" style="color: darkblue">English First Additional Language P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P1%20Nov%202018%20Final%20%20Memo.pdf?alt=media&token=8b0413e2-5dbd-4b0b-8427-625505e5b900" style="color: darkblue">English First Additional Language P1 Nov 2018 FINAL Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P2%20Nov%202018.pdf?alt=media&token=a71e1864-d85b-469d-8b0c-3c21c37f7f1d" style="color: darkblue">English First Additional Language P2 Nov 2018</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P2%20Nov%202020%20Memo.pdf?alt=media&token=44aa996b-07cd-482d-9d85-3172479c9500" style="color: darkblue">English First Additional Language P2 Nov 2018 FINAL Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P3%20Nov%202018.pdf?alt=media&token=74cb5bad-f184-47f8-81f6-1807dcd05702" style="color: darkblue">English First Additional Language P3 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P3%20Nov%202018%20FINAL%20Memo..pdf?alt=media&token=b216d9f6-fa41-48dc-98de-8816b2595dfe" style="color: darkblue">English First Additional Language P3 Nov 2020 Memo</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of English First Additional Language     ---------------------------------------------------------------->
                </div>
            </div>
            <br />







            <!-------------------------- English Home Language      ---------------------------------------------
                       ----------------------   English Home Language        -------------------------------------------------
                          ------------------   English Home Language           ----------------------------------------------->
            <div class="dropdown" id="English Home Language" style="width: 100%">
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("ehl").style.display = "block";
                    }
                </script>

                <button class="dropbtn" onclick="RemainOnScreen()" style="background-color: #2f4f4f">English Home Language </button>
                <div class="dropdown-content" id="ehl">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P1%20Nov%202020.pdf?alt=media&token=845632b0-77f9-4b8c-a15b-77875a517fb8" style="color: darkblue">English Home Language P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P1%20Nov%202020%20Memo.pdf?alt=media&token=3f5d7b1b-e016-492a-be40-7eade5607b95" style="color: darkblue">English Home Language P1 Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P2%20Nov%202020.pdf?alt=media&token=c1b1b16f-61c8-4762-b6a1-aa21eb04375e" style="color: darkblue">English Home Language P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P2%20Nov%202020%20Memo.pdf?alt=media&token=9ea36403-1243-41a7-8083-0a669a500466" style="color: darkblue">English Home Language P2 Nov 2020 Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P3%20Nov%202020.pdf?alt=media&token=a316b506-356b-4e0c-968f-9c03fa4948e7" style="color: darkblue">English Home Language P3 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P3%20Nov%202020%20Memo.pdf?alt=media&token=631a3fd5-3327-4ee5-b692-3c6fba25889c" style="color: darkblue">English Home Language P3 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P1%20Nov%202019.pdf?alt=media&token=135aaf7f-56c7-4119-965a-d223d657657c" style="color: darkblue">English Home Language P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P1%20Nov%202019%20FINAL%20Memo.pdf?alt=media&token=1e3b835c-2bf8-4e77-8fa1-26cf1fe1bc30" style="color: darkblue">English Home Language P1 Nov 2019 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P2%20Nov%202019.pdf?alt=media&token=97cbe80b-5784-4e43-abff-ed15d1ba8153" style="color: darkblue">English Home Language P2 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P2%20Nov%202019%20FINAL%20Memo.pdf?alt=media&token=a40f847a-9691-41e7-b8c3-1297ba47209c" style="color: darkblue">English Home Language P2 Nov 2019 Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P3%20Nov%202019.pdf?alt=media&token=e18a2079-beb7-4181-b93c-08067c6f1fb4" style="color: darkblue">English Home Language P3 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P3%20Nov%202019%20FINAL%20Memo.pdf?alt=media&token=7b4cb122-9739-472f-8251-58417bcf4b59" style="color: darkblue">English Home Language P3 Nov 2019 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P1%20Nov%202018.pdf?alt=media&token=f366f9d0-3856-4696-abbe-823e193cbc0e" style="color: darkblue">English Home Language P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P1%20Nov%202018%20FINAL%20Memo..pdf?alt=media&token=eff188b2-83d6-45b8-9e6d-45c657938848" style="color: darkblue">English Home Language P1 Nov 2018 FINAL Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P2%20Nov%202018.pdf?alt=media&token=c5dd7b94-0116-45ef-ba5b-c3db4a730a59" style="color: darkblue">English Home Language P2 Nov 2018</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20HL%20P2%20Nov%202018%20FINAL%20Memo.pdf?alt=media&token=7fcf2ee1-c7b2-4fbf-9d5a-d839c4c234fa" style="color: darkblue">English First Additional Language P2 Nov 2018 FINAL Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P3%20Nov%202018.pdf?alt=media&token=8f402f65-a13a-4a0e-884a-f17235bdbf95" style="color: darkblue">English Home Language P3 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FEnglish%20FAL%20P3%20Nov%202018%20FINAL%20Memo..pdf?alt=media&token=b216d9f6-fa41-48dc-98de-8816b2595dfe" style="color: darkblue">English Home Language P3 Nov 2018 Memo</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of English Home Language     ---------------------------------------------------------------->
                </div>
            </div>
            <br />





            <!-------------------------- Afrikaans Home Language      ---------------------------------------------
                       ----------------------   Afrikaans Home Language        -------------------------------------------------
                          ------------------   Afrikaans Home Language           ----------------------------------------------->
            <div class="dropdown" id="Afrikaans Home Language" style="width: 100%">
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("ahl").style.display = "block";
                    }
                </script>

                <button class="dropbtn" onclick="RemainOnScreen()">Afrikaans Home Language </button>
                <div class="dropdown-content" id="ahl">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20Nov%202020.pdf?alt=media&token=1a3a01f6-0ca5-4b90-b61f-318403b2a8fe" style="color: darkblue">Afrikaans Home Language P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20Nov%202020%20Memo.pdf?alt=media&token=8aa73231-416a-4eec-8814-a6f17ad32428" style="color: darkblue">Afrikaans Home Language P1 Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20Nov%202020.pdf?alt=media&token=0e6b9acb-62e2-4db9-9107-348a72c21e14" style="color: darkblue">Afrikaans Home Language P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20Nov%202020%20Memo.pdf?alt=media&token=b0ead3db-985e-407a-a218-d4ca0730b156" style="color: darkblue">English Home Language P2 Nov 2020 Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20Nov%202020.pdf?alt=media&token=fed0d6f5-c224-4163-a821-fed5bc1b0be4" style="color: darkblue">Afrikaans Home Language P3 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20Nov%202020%20Memo.pdf?alt=media&token=f5d67cd1-a1fd-46ad-b956-732b5ee66146" style="color: darkblue">Afrikaans Home Language P3 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20May-June%202019.pdf?alt=media&token=3a460e03-78ab-48f7-9447-307c14bce7b6" style="color: darkblue">Afrikaans Home Language P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20May-June%202019%20Memo.pdf?alt=media&token=a94be0a6-0dff-4d8e-9aa7-d0b4a1e7822f" style="color: darkblue">Afrikaans Home Language P1 Nov 2019 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20May-June%202019.pdf?alt=media&token=a5b0cecb-065f-4bdb-b941-196ed537ab75" style="color: darkblue">Afrikaans Home Language P2 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20May-June%202019%20Memo.pdf?alt=media&token=96a77570-aed0-405e-85aa-b23589279a73" style="color: darkblue">Afrikaans Home Language P2 Nov 2019 Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20May-June%202019.pdf?alt=media&token=2b5bb12c-75f4-48d7-92ae-e342015a2ee6" style="color: darkblue">Afrikaans Home Language P3 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20May-June%202019%20Memo.pdf?alt=media&token=8ea9a826-1ef7-4422-8a50-cccf70eba435" style="color: darkblue">Afrikaans Home Language P3 Nov 2020 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20Nov%202018.pdf?alt=media&token=b516d8e2-71a8-40b3-8c32-d3b421ef0d88" style="color: darkblue">Afrikaans Home Language P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20Nov%202018.pdf?alt=media&token=b516d8e2-71a8-40b3-8c32-d3b421ef0d88" style="color: darkblue">Afrikaans Home Language P1 Nov 2018 FINAL Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20Nov%202018.pdf?alt=media&token=4d2d5956-b6b9-4c01-be1d-aef3493232e0" style="color: darkblue">Afrikaans Home Language P2 Nov 2018</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20Nov%202020%20Memo.pdf?alt=media&token=b0ead3db-985e-407a-a218-d4ca0730b156" style="color: darkblue">Afrikaans First Additional Language P2 Nov 2018 FINAL Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20Nov%202018.pdf?alt=media&token=5a08ee85-3e1f-44aa-9513-b6bb028f47b2" style="color: darkblue">Afrikaans Home Language P3 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20May-June%202018%20Memo.pdf?alt=media&token=a32b3367-af07-4c5e-8c72-93c4b2e1b991" style="color: darkblue">Afrikaans Home Language P3 Nov 2020 Memo</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Afrikaans Home Language     ---------------------------------------------------------------->
                </div>
            </div>
            <br />





            <!-------------------------- Afrikaans First Additional Language      ---------------------------------------------
                       ----------------------   Afrikaans First Additional Language        -------------------------------------------------
                          ------------------   Afrikaans First Additional Language           ----------------------------------------------->
            <div class="dropdown" id="Afrikaans First Additional Language" style="width: 100%">
                <script>
                    function RemainOnScreen() {
                        console.log("test");
                        document.getElementById("afl").style.display = "block";
                    }
                </script>

                <button class="dropbtn" onclick="RemainOnScreen()" style="background-color: #2f4f4f">Afrikaans First Additional Language </button>
                <div class="dropdown-content" id="afl">
                    <!-- 2020 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20Nov%202020.pdf?alt=media&token=1a3a01f6-0ca5-4b90-b61f-318403b2a8fe" style="color: darkblue">Afrikaans First Additional Language P1 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20Nov%202020%20Memo.pdf?alt=media&token=8aa73231-416a-4eec-8814-a6f17ad32428" style="color: darkblue">Afrikaans First Additional Language P1 Nov 2020 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20Nov%202020.pdf?alt=media&token=0e6b9acb-62e2-4db9-9107-348a72c21e14" style="color: darkblue">Afrikaans First Additional Language P2 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20Nov%202020%20Memo.pdf?alt=media&token=b0ead3db-985e-407a-a218-d4ca0730b156" style="color: darkblue">English First Additional Language P2 Nov 2020 Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20Nov%202020.pdf?alt=media&token=fed0d6f5-c224-4163-a821-fed5bc1b0be4" style="color: darkblue">Afrikaans First Additional Language P3 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20Nov%202020%20Memo.pdf?alt=media&token=f5d67cd1-a1fd-46ad-b956-732b5ee66146" style="color: darkblue">Afrikaans First Additional Language P3 Nov 2020 Memo</a>
                    <!--------------------------- End of 2020 Papers         ------------------------------------------------------------>
                    <!--              End Of 2020 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2020      ---------------------------------------------------------------->


                    <!-- 2019 Papers -->

                    <!-- Paper1 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20May-June%202019.pdf?alt=media&token=3a460e03-78ab-48f7-9447-307c14bce7b6" style="color: darkblue">Afrikaans First Additional Language P1 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20May-June%202019%20Memo.pdf?alt=media&token=a94be0a6-0dff-4d8e-9aa7-d0b4a1e7822f" style="color: darkblue">Afrikaans Home Language P1 Nov 2019 Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20May-June%202019.pdf?alt=media&token=a5b0cecb-065f-4bdb-b941-196ed537ab75" style="color: darkblue">Afrikaans First Additional Language P2 Nov 2019 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20May-June%202019%20Memo.pdf?alt=media&token=96a77570-aed0-405e-85aa-b23589279a73" style="color: darkblue">Afrikaans First Additional Language P2 Nov 2019 Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20May-June%202019.pdf?alt=media&token=2b5bb12c-75f4-48d7-92ae-e342015a2ee6" style="color: darkblue">Afrikaans First Additional Language P3 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20May-June%202019%20Memo.pdf?alt=media&token=8ea9a826-1ef7-4422-8a50-cccf70eba435" style="color: darkblue">Afrikaans First Additional Language P3 Nov 2020 Memo</a>
                    <!--------------------------- End of 2019 Papers         ------------------------------------------------------------>
                    <!--              End Of 2019 ----------------------------------------------------->

                    <!---------------------------------------- End Of 2019     ---------------------------------------------------------------->

                    <!-- 2018 Papers -->

                    <!-- Paper1 And memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20Nov%202018.pdf?alt=media&token=b516d8e2-71a8-40b3-8c32-d3b421ef0d88" style="color: darkblue">Afrikaans First Additional Language P1 Nov 2018 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P1%20Nov%202018.pdf?alt=media&token=b516d8e2-71a8-40b3-8c32-d3b421ef0d88" style="color: darkblue">Afrikaans First Additional Language P1 Nov 2018 FINAL Memo</a>

                    <!-- Paper2 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20Nov%202018.pdf?alt=media&token=4d2d5956-b6b9-4c01-be1d-aef3493232e0" style="color: darkblue">Afrikaans First Additional Language P2 Nov 2018</a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P2%20Nov%202020%20Memo.pdf?alt=media&token=b0ead3db-985e-407a-a218-d4ca0730b156" style="color: darkblue">Afrikaans First Additional Language P2 Nov 2018 FINAL Memo</a>

                    <!-- Paper3 And Memo-->
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20Nov%202018.pdf?alt=media&token=5a08ee85-3e1f-44aa-9513-b6bb028f47b2" style="color: darkblue">Afrikaans First Additional Language P3 Nov 2020 </a>
                    <a href="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/papers%2FAfrikaans%20HL%20P3%20May-June%202018%20Memo.pdf?alt=media&token=a32b3367-af07-4c5e-8c72-93c4b2e1b991" style="color: darkblue">Afrikaans First Additional Language P3 Nov 2020 Memo</a>
                    <!--------------------------- End of 2018 Papers         ------------------------------------------------------------>
                    <!--              End Of 2018 ----------------------------------------------------->

                    <!---------------------------------------- End Of Afrikaans First Additional Language     ---------------------------------------------------------------->
                </div>
            </div>
            <br />



        </div>

    </div>
    <!-- end of container -->

    <!-- end of ex-basic-1 -->
    <!-- end of basic -->

</asp:Content>
