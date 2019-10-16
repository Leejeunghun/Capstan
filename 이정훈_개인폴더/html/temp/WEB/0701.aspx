<html>
 <head>실행 환경 </head>
<body>
<meta charset="UTF-8">
<asp:content id="Content1" runat="Server" contentplaceholderid="head">
</asp:content>
<asp:content id="Content2" runat="Server" contentplaceholderid="ContentPlaceHolder1">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js" type="text/javascript"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.css" rel="stylesheet" type="text/css">
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
<div class="auto-style5" id="visualization">

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
</script><div class="vis-timeline vis-bottom" style="height: 154px; visibility: visible; -ms-content-zooming: none; -ms-user-select: none; -ms-touch-select: none; touch-action: pan-y;"><div class="vis-panel vis-background" style="left: 0px; top: 0px; width: 970px; height: 152px;"></div><div class="vis-panel vis-background vis-vertical" style="left: 0px; top: 0px; width: 972px; height: 152px;"><div class="vis-axis" style="left: 0px; top: 104px;"><div class="vis-group"><div class="vis-item vis-dot vis-readonly" style="left: 20.6px; top: -4px;"></div><div class="vis-item vis-dot vis-readonly" style="left: 122.79px; top: -4px;"></div><div class="vis-item vis-dot vis-readonly" style="left: 224.98px; top: -4px;"></div><div class="vis-item vis-dot vis-readonly" style="left: 327.17px; top: -4px;"></div><div class="vis-item vis-dot vis-readonly" style="left: 429.36px; top: -4px;"></div><div class="vis-item vis-dot vis-readonly" style="left: 531.55px; top: -4px;"></div><div class="vis-item vis-dot vis-readonly" style="left: 633.74px; top: -4px;"></div><div class="vis-item vis-dot vis-readonly" style="left: 735.93px; top: -4px;"></div><div class="vis-item vis-dot vis-readonly" style="left: 838.12px; top: -4px;"></div><div class="vis-item vis-dot vis-readonly" style="left: 940.31px; top: -4px;"></div></div></div><div class="vis-time-axis vis-background"><div class="vis-grid vis-vertical vis-major vis-day1 vis-july vis-monday  vis-even" style="left: -14.21px; top: -1px; width: 102.18px; height: 155px;"></div><div class="vis-grid vis-vertical vis-minor vis-day2 vis-july vis-tuesday  vis-odd" style="left: 87.97px; top: -1px; width: 102.18px; height: 131px;"></div><div class="vis-grid vis-vertical vis-minor vis-day3 vis-july vis-wednesday  vis-even" style="left: 190.16px; top: -1px; width: 102.18px; height: 131px;"></div><div class="vis-grid vis-vertical vis-minor vis-day4 vis-july vis-thursday  vis-odd" style="left: 292.35px; top: -1px; width: 102.18px; height: 131px;"></div><div class="vis-grid vis-vertical vis-minor vis-day5 vis-july vis-friday  vis-even" style="left: 394.54px; top: -1px; width: 102.18px; height: 131px;"></div><div class="vis-grid vis-vertical vis-minor vis-day6 vis-july vis-saturday  vis-odd" style="left: 496.73px; top: -1px; width: 102.18px; height: 131px;"></div><div class="vis-grid vis-vertical vis-minor vis-day7 vis-july vis-sunday  vis-even" style="left: 598.92px; top: -1px; width: 102.18px; height: 131px;"></div><div class="vis-grid vis-vertical vis-minor vis-day8 vis-july vis-monday  vis-odd" style="left: 701.11px; top: -1px; width: 102.18px; height: 131px;"></div><div class="vis-grid vis-vertical vis-minor vis-day9 vis-july vis-tuesday  vis-even" style="left: 803.3px; top: -1px; width: 102.18px; height: 131px;"></div><div class="vis-grid vis-vertical vis-minor vis-day10 vis-july vis-wednesday  vis-odd" style="left: 905.49px; top: -1px; width: 102.18px; height: 131px;"></div></div><div title="Current time: Tuesday, August 27th 2019, 23:35:50" class="vis-current-time" style="left: 5911.58px; top: 0px; height: 100%; position: absolute;"></div></div><div class="vis-panel vis-background vis-horizontal" style="left: 0px; top: -1px; width: 970px; height: 105px;"></div><div class="vis-panel vis-center" style="left: -1px; top: -1px; width: 972px; height: 105px; -ms-content-zooming: none; -ms-user-select: none; -ms-touch-select: none; touch-action: pan-y;"><div class="vis-content" style="left: 0px; top: 0px;"><div class="vis-itemset" style="height: 103px;"><div class="vis-background"><div class="vis-group" style="height: 103px;"><div style="visibility: hidden; position: absolute;"></div><div class="vis-item vis-line vis-readonly" style="left: 24.1px; top: 83px; bottom: 0px;"></div><div class="vis-item vis-line vis-readonly" style="left: 126.29px; top: 83px; bottom: 0px;"></div><div class="vis-item vis-line vis-readonly" style="left: 228.48px; top: 83px; bottom: 0px;"></div><div class="vis-item vis-line vis-readonly" style="left: 330.67px; top: 83px; bottom: 0px;"></div><div class="vis-item vis-line vis-readonly" style="left: 432.86px; top: 83px; bottom: 0px;"></div><div class="vis-item vis-line vis-readonly" style="left: 535.05px; top: 83px; bottom: 0px;"></div><div class="vis-item vis-line vis-readonly" style="left: 637.24px; top: 83px; bottom: 0px;"></div><div class="vis-item vis-line vis-readonly" style="left: 739.43px; top: 83px; bottom: 0px;"></div><div class="vis-item vis-line vis-readonly" style="left: 841.62px; top: 83px; bottom: 0px;"></div><div class="vis-item vis-line vis-readonly" style="left: 943.81px; top: 83px; bottom: 0px;"></div></div><div class="vis-group" style="height: 0px;"><div style="visibility: hidden; position: absolute;"></div></div></div><div class="vis-foreground"><div class="vis-group" style="height: 103px;"><div class="vis-item vis-box vis-readonly" style="left: 2.6px; top: 53px;"><div class="vis-item-content"><div>일본</div></div></div><div class="vis-item vis-box vis-readonly" style="left: 104.79px; top: 53px;"><div class="vis-item-content"><div><span>조국</span></div></div></div><div class="vis-item vis-box vis-readonly" style="left: 206.98px; top: 53px;"><div class="vis-item-content"><div>일본</div></div></div><div class="vis-item vis-box vis-readonly" style="left: 301.17px; top: 53px;"><div class="vis-item-content"><div><span>문재인</span></div></div></div><div class="vis-item vis-box vis-readonly" style="left: 403.36px; top: 5px;"><div class="vis-item-content"><div>item 5<br><img style="width: 48px; height: 48px;" src="../resources/img/attachment-icon.png"></div></div></div><div class="vis-item vis-box vis-readonly" style="left: 529.55px; top: 71px;"><div class="vis-item-content"><asp:button id="Button6" onclick="Button6_Click" runat="server" text="자한당"></asp:button></div></div><div class="vis-item vis-box vis-readonly" style="left: 631.74px; top: 71px;"><div class="vis-item-content"><asp:button id="Button1" onclick="Button1_Click" runat="server" text="대한민국"></asp:button></div></div><div class="vis-item vis-box vis-readonly" style="left: 733.93px; top: 71px;"><div class="vis-item-content"><asp:button id="Button2" onclick="Button2_Click" runat="server" text="문재인"></asp:button></div></div><div class="vis-item vis-box vis-readonly" style="left: 816.12px; top: 53px;"><div class="vis-item-content">item <span class="large">4</span></div></div><div class="vis-item vis-box vis-readonly" style="left: 918.31px; top: 53px;"><div class="vis-item-content">item <span class="large">4</span></div></div></div></div></div></div><div class="vis-shadow vis-top" style="visibility: hidden;"></div><div class="vis-shadow vis-bottom" style="visibility: hidden;"></div></div><div class="vis-panel vis-left" style="left: 0px; top: -1px; height: 105px; -ms-content-zooming: none; -ms-user-select: none; -ms-touch-select: none; touch-action: none;"><div class="vis-content" style="left: 0px; top: 0px;"><div class="vis-labelset"><div title="" class="vis-label" style="height: 103px;"><div class="vis-inner vis-hidden"></div></div></div></div><div class="vis-shadow vis-top" style="visibility: hidden;"></div><div class="vis-shadow vis-bottom" style="visibility: hidden;"></div></div><div class="vis-panel vis-right" style="left: 971px; top: -1px; height: 105px;"><div class="vis-content" style="left: 0px; top: 0px;"></div><div class="vis-shadow vis-top" style="visibility: hidden;"></div><div class="vis-shadow vis-bottom" style="visibility: hidden;"></div></div><div class="vis-panel vis-top" style="left: -1px; top: 0px; width: 972px;"></div><div class="vis-panel vis-bottom" style="left: -1px; top: 104px; width: 972px;"><div class="vis-time-axis vis-foreground" style="height: 48px;"><div class="vis-text vis-minor vis-measure" style="position: absolute;">0</div><div class="vis-text vis-major vis-measure" style="position: absolute;">0</div><div class="vis-text vis-minor vis-day1 vis-july vis-monday  vis-even" style="left: -13.71px; top: 0px; width: 102.18px;">1</div><div class="vis-text vis-minor vis-day2 vis-july vis-tuesday  vis-odd" style="left: 88.47px; top: 0px; width: 102.18px;">2</div><div class="vis-text vis-minor vis-day3 vis-july vis-wednesday  vis-even" style="left: 190.66px; top: 0px; width: 102.18px;">3</div><div class="vis-text vis-minor vis-day4 vis-july vis-thursday  vis-odd" style="left: 292.85px; top: 0px; width: 102.18px;">4</div><div class="vis-text vis-minor vis-day5 vis-july vis-friday  vis-even" style="left: 395.04px; top: 0px; width: 102.18px;">5</div><div class="vis-text vis-minor vis-day6 vis-july vis-saturday  vis-odd" style="left: 497.23px; top: 0px; width: 102.18px;">6</div><div class="vis-text vis-minor vis-day7 vis-july vis-sunday  vis-even" style="left: 599.42px; top: 0px; width: 102.18px;">7</div><div class="vis-text vis-major vis-day10 vis-july vis-wednesday  vis-odd" style="left: 0px; top: 24px;"><div>July 2019</div></div><div class="vis-text vis-minor vis-day8 vis-july vis-monday  vis-odd" style="left: 701.61px; top: 0px; width: 102.18px;">8</div><div class="vis-text vis-minor vis-day9 vis-july vis-tuesday  vis-even" style="left: 803.8px; top: 0px; width: 102.18px;">9</div><div class="vis-text vis-minor vis-day10 vis-july vis-wednesday  vis-odd" style="left: 905.99px; top: 0px; width: 102.18px;">10</div></div></div><div class="vis-rolling-mode-btn" style="visibility: hidden;"></div></div>
    </div>
</asp:content>

<asp:content id="Content3" runat="Server" contentplaceholderid="ContentPlaceHolder2">
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
     <script src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js" type="text/javascript"></script>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.css" rel="stylesheet" type="text/css">


<div class="auto-style6" id="mynetwork"><div tabindex="900" class="vis-network" style="width: 100%; height: 100%; overflow: hidden; position: relative; -ms-content-zooming: none; -ms-user-select: none; -ms-touch-select: none; touch-action: pan-y;"><canvas width="1200" height="1050" style="width: 100%; height: 100%; position: relative; -ms-content-zooming: none; -ms-user-select: none; -ms-touch-select: none; touch-action: none;"></canvas></div>
</div>
</asp:content>

</body></html>