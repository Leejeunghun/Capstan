<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
   
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Daum/2019-07-01/ㅇㅇ"  Font-Bold="True" Font-Names="경기천년제목 Medium" ForeColor="black" Font-Size="Large"></asp:Label>
     <style>
      body {
            
        }

        #mynetwork {
            font-family: "경기천년제목 Medium";
            font: 20pt;
            width: 1210px;
            height: 450px;
            border: 1px solid #ffffff;
            background-color: #ffffff;
        }
        .auto-style5 {
            width: 972px;
            height: 234px;
        }
        .auto-style6 {
            width: 873px;
            height: 636px;
        }
    .auto-style9 {
        height: 415px;
        width: 395px;
    }
    </style>
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.css" rel="stylesheet" type="text/css" />


<div id="mynetwork" class="auto-style6">
<script type="text/javascript">
    var color = 'gray';
    var len = undefined;

    var nodes = [
        { id: 0, label: "ㅇ", group: 0 },
        {id: 1, label: "ㅇ", group: 1},
        {id: 2, label: "ㅇ", group: 2},
        { id: 3, label: "ㅇ", group:2},

        {id: 4, label: "ㅇ", group: 3},
        {id: 5, label: "ㅇ", group: 4},
        {id: 6, label: "ㅇ", group:4},

        {id: 7, label: "ㅇ", group:5},
        {id: 8, label: "ㅇ", group: 6},
        {id: 9, label: "ㅇ", group: 6}
     
    ];
    var edges = [
        {from: 1, to: 0 },
        {from: 2, to: 1},
        {from: 3, to: 1},
        {from: 4, to: 0},
        {from: 5, to: 4},
        {from: 6, to: 4},
        {from: 7, to: 0},
        {from: 8, to: 7},
        { from: 9, to: 7}
    
    ]

    // create a network
    var container = document.getElementById('mynetwork');
    var data = {
        nodes: nodes,
        edges: edges
    };
    var options = {
        nodes: {
            
            size: 40,
            font: {
                size: 40,
                color: '#000000'
            },
            borderWidth: 2
        },
        edges: {
            width: 2
        }



    };
    network = new vis.Network(container, data, options);
</script>
</div>
</asp:Content>

<asp:Content ID="Content33" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    
</asp:Content>

