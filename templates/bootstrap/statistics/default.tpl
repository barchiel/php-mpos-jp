  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        統計
      </div>
      <div class="panel-body">
        <table class="table table-striped table-bordered table-hover">
          <tbody>
            <tr>
              <td class="leftheader">プールハッシュレート</td>
              <td>{$GLOBAL.hashrate} {$GLOBAL.hashunits.pool}</td>
            </tr>
            <tr>
              <td class="leftheader">現在の採掘人数</td>
              <td>{$GLOBAL.workers}</td>
            </tr>
            <tr>
              <td class="leftheader">現在のブロック</td>
              <td><a href="{$GLOBAL.website.blockexplorer.url}{$CURRENTBLOCK}" target="_new">{$CURRENTBLOCK}</a></td>
            </tr>
            <tr>
              <td class="leftheader">現在の難易度</td>
              <td><a href="http://allchains.info/" target="_new">{$DIFFICULTY}</a></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="panel-footer">
        {if !$GLOBAL.website.api.disabled}<ul><li>これらの統計情報は、 <a href="{$smarty.server.SCRIPT_NAME}?page=api&action=public" target="_api">こちら</a> からJSON形式で入手できます。</li>{/if}
      </div>
    </div>
  </div>
</div>