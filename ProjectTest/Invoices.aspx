<%@ Page Title="Invoices" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Invoices.aspx.cs" Inherits="ProjectTest.Invoices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.11.3/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.11.3/datatables.min.js"></script>
    <style>
        div.dataTables_wrapper div.dataTables_length select {
        width: 100px;
        display: inline-block;
    }
        
    .table>:not(caption)>*>* {
        text-align: center;
    }
    </style>
    <script>
        // Basic example
        $(document).ready(function () {
            $('#dtBasicExample').DataTable({
                "pagingType": "simple_numbers", // "simple" option for 'Previous' and 'Next' buttons only
                columnDefs: [
                    { orderable: false, targets: [0,1,2,3,-1] }
                ],
                "order": [[4, "desc"]],
                "lengthMenu": [[5, 10, 20, -1],
                [5, 10, 50, "Show all"]],
            });
            $('.dataTables_length').addClass('bs-select');

            $(".dataTables_filter input")
                .attr("placeholder", "Search here...")
                .css({
                    width: "300px",
                    display: "inline-block"
                });

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1>Invoices</h1>
                    </div>
                    <!-- end of col -->
                </div>
                <!-- end of row -->
            </div>
            <!-- end of container -->
        </header>
        <div class="ex-basic-1 pt-5 pb-5">
            <div class="container">
                <table id="dtBasicExample" class="table table-sm" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th class="th-sm">Email

                            </th>
                            <th class="th-sm">Plan

                            </th>
                            <th class="th-sm">Price

                            </th>
                            <th class="th-sm">Payment Method

                            </th>
                            <th class="th-sm">Start Date

                            </th>
                            <th class="th-sm">End Date

                            </th>
                            <th class="th-sm">Status

                            </th>
                        </tr>
                    </thead>
                    <tbody id="tableColumn" runat="server">
                    </tbody>

                </table>
                <br /><br /><br />
            </div>
        </div>
</asp:Content>
