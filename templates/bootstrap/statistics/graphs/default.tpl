<script>
$(function () {
  var hashChart = Morris.Line({
    element: 'hashrate-area-chart',
    data: {$YOURMININGSTATS},
    xkey: 'time',
    ykeys: ['hashrate'],
    labels: ['Hashrate'],
    pointSize: 1,
    hideHover: 'auto',
    resize: true,
    fillOpacity: 1.00,
    lineColors: ['#24A665'],
    pointFillColors: ['#24A665'],
    pointStrokeColors: ['#24A665']
  });

  var workersChart = Morris.Line({
    element: 'workers-area-chart',
    data: {$YOURMININGSTATS},
    xkey: 'time',
    ykeys: ['workers'],
    labels: ['Workers'],
    pointSize: 1,
    hideHover: 'auto',
    resize: true,
    fillOpacity: 1.00,
    lineColors: ['#24A665'],
    pointFillColors: ['#24A665'],
    pointStrokeColors: ['#24A665']
  });

  var shareCharts= Morris.Line({
    element: 'sharerate-area-chart',
    data: {$YOURMININGSTATS},
    xkey: 'time',
    ykeys: ['sharerate'],
    labels: ['Sharerate'],
    pointSize: 1,
    hideHover: 'auto',
    resize: true,
    fillOpacity: 1.00,
    lineColors: ['#24A665'],
    pointFillColors: ['#24A665'],
    pointStrokeColors: ['#24A665']
  });
});
</script>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-signal fa-fw"></i> 24時間の平均ハッシュレート
      </div>
      <div class="panel-body">
        <div id="hashrate-area-chart"></div>
      </div>
      <div class="panel-footer">
        平均ハッシュレートはプログラムによって自動的に記録されています。
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-signal fa-fw"></i> 24時間のアクティブワーカー平均数
      </div>
      <div class="panel-body">
        <div id="workers-area-chart"></div>
      </div>
      <div class="panel-footer">
        アクティブワーカー平均数はプログラムによって自動的に記録されています。
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-signal fa-fw"></i>  24時間の平均シェア
      </div>
      <div class="panel-body">
        <div id="sharerate-area-chart"></div>
      </div>
      <div class="panel-footer">
        平均シェアはプログラムによって自動的に記録されています。
      </div>
    </div>
  </div>
</div>
