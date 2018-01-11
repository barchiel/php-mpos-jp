{if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
  <div class="col-lg-4">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-desktop fa-fw"></i> ワーカー情報</h4>
      </div>
      <div class="panel-body no-padding table-responsive">
        <table class="table table-bordered table-hover table-striped"> 
         <thead>
          <tr>
            <th>ワーカー名</th>
            <th>ハッシュレート</th>
            <th>難易度</th>
          </tr>
          </thead>
          <tbody id="b-workers">
            <td colspan="3" class="text-center">利用可能なワーカー情報なし</td>
          </tbody>
        </table>
      </div>
    </div>
  </div>
{/if}
