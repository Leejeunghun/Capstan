
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
         Response.Redirect("0701.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         Response.Redirect("0702.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
         Response.Redirect("0706.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
        #mynetwork {
            width: 800px;
            height: 500px;
            border: 1px solid lightgray;
        }
    .auto-style3 {
        height: 207px;
    }
       </style>


<p>
  7월1일 ~ 7월10일
</p>
<div id="visualization" class="auto-style5">

<script>
  // create a couple of HTML items in various ways

  var item1 = document.createElement('div');
  item1.appendChild(document.createTextNode('일본'));

  var item2 = document.createElement('div');
  item2.innerHTML = '<span>조국</span>';

  var item3 = document.createElement('div');
  item3.appendChild(document.createTextNode('일본'));
  var item4 = document.createElement('div');
  item4.innerHTML = '<span>문재인</span>';

  var item5 = document.createElement('div');
  item5.appendChild(document.createTextNode('item 5'));
  item5.appendChild(document.createElement('br'));
  var img5 = document.createElement('img');
  img5.src = '../resources/img/attachment-icon.png';
  img5.style.width = '48px';
  img5.style.height = '48px';
  item5.appendChild(img5);

  var item6 = '<asp:Button ID="Button6" runat="server" Text="자한당" OnClick="Button6_Click"/>';
  var item7 = '<asp:Button ID="Button1" runat="server" Text="대한민국" OnClick="Button1_Click"/>';


  var item8 = '<asp:Button ID="Button2" runat="server" Text="문재인" OnClick="Button2_Click"/>';
  var item9 = 'item <span class="large">4</span>';
  var item10 = 'item <span class="large">4</span>';
  // create data and a Timeline
  var container = document.getElementById('visualization');
  var items = new vis.DataSet([
    {id: 1, content: item1, start: '2019-07-01'},
    {id: 2, content: item2, start: '2019-07-02'},
    {id: 3, content: item3, start: '2019-07-03'},
    {id: 4, content: item4, start: '2019-07-04'},
    {id: 5, content: item5, start: '2019-07-05'},
    {id: 6, content: item6, start: '2019-07-06'},
    {id: 7, content: item7, start: '2019-07-07'},
    {id: 8, content: item8, start: '2019-07-08'},
    {id: 9, content: item9, start: '2019-07-09'},
    {id: 10,content: item10, start: '2019-07-10'}
    ]);


  var options = {};
  var timeline = new vis.Timeline(container, items, options);
</script>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <style>
        body {
            
        }

        #mynetwork {
            font: 12pt arial;
            width: 800px;
            height: 700px;
            border: 1px solid #444444;
            background-color: #222222;
        }
        .auto-style5 {
            width: 972px;
            height: 234px;
        }
        .auto-style6 {
            width: 873px;
            height: 636px;
        }
    </style>
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.css" rel="stylesheet" type="text/css" />


<div id="mynetwork" class="auto-style6">
<script type="text/javascript">
    var color = 'gray';
    var len = undefined;

    var nodes = [{id: 0, label: "0", group: 0},
        {id: 1, label: "왜구", group: 0},
        {id: 2, label: "일본", group: 0},
        {id: 3, label: "민주당", group: 1},
        {id: 4, label: "자한당", group: 1},
        {id: 5, label: "박근혜", group: 1},
        {id: 6, label: "6", group: 2},
        {id: 7, label: "7", group: 2},
        {id: 8, label: "8", group: 2},
        {id: 9, label: "9", group: 3},
        {id: 10, label: "10", group: 3},
        {id: 11, label: "11", group: 3},
        {id: 12, label: "12", group: 4},
        {id: 13, label: "13", group: 4},
        {id: 14, label: "14", group: 4},
        {id: 15, label: "15", group: 5},
        {id: 16, label: "16", group: 5},
        {id: 17, label: "17", group: 5},
        {id: 18, label: "18", group: 6},
        {id: 19, label: "19", group: 6},
        {id: 20, label: "20", group: 6},
        {id: 21, label: "21", group: 7},
        {id: 22, label: "22", group: 7},
        {id: 23, label: "23", group: 7},
        {id: 24, label: "24", group: 8},
        {id: 25, label: "25", group: 8},
        {id: 26, label: "26", group: 8},
        {id: 27, label: "27", group: 9},
        {id: 28, label: "28", group: 9},
        {id: 29, label: "29", group: 9}
    ];
    var edges = [{from: 1, to: 0},
        {from: 2, to: 0},
        {from: 4, to: 3},
        {from: 5, to: 4},
        {from: 4, to: 0},
        {from: 7, to: 6},
        {from: 8, to: 7},
        {from: 7, to: 0},
        {from: 10, to: 9},
        {from: 11, to: 10},
        {from: 10, to: 4},
        {from: 13, to: 12},
        {from: 14, to: 13},
        {from: 13, to: 0},
        {from: 16, to: 15},
        {from: 17, to: 15},
        {from: 15, to: 10},
        {from: 19, to: 18},
        {from: 20, to: 19},
        {from: 19, to: 4},
        {from: 22, to: 21},
        {from: 23, to: 22},
        {from: 22, to: 13},
        {from: 25, to: 24},
        {from: 26, to: 25},
        {from: 25, to: 7},
        {from: 28, to: 27},
        {from: 29, to: 28},
        {from: 28, to: 0}
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

