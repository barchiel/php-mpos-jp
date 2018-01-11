  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-bar-chart-o fa-fw"></i> 全体の統計
      </div>
      <div class="panel-body no-padding table-responsive">
        <table class="table table-striped table-bordered table-hover">
          <tbody>
            <tr>
              <th width="50%">プールのハッシュレート</th>
              <td width="70%"><span id="b-hashrate">{$GLOBAL.hashrate|number_format:"3"}</span> {$GLOBAL.hashunits.pool}</td>
            </tr>
            <tr>
              <th>プールの効率</th>
              <td>{if $GLOBAL.roundshares.valid > 0}{($GLOBAL.roundshares.valid / ($GLOBAL.roundshares.valid + $GLOBAL.roundshares.invalid) * 100)|number_format:"2"}%{else}0%{/if}</td>
            </tr>
            <tr>
              <th>採掘中のワーカー</th>
              <td id="b-workers">{$GLOBAL.workers|number_format}</td>
            </tr>
            <tr>
              <th>現在の難易度</th>
              {if ! $GLOBAL.website.chaininfo.disabled}
              <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new"><span id="b-diff">{$NETWORK.difficulty|number_format:"8"}</span></a></td>
              {else}
              <td><span id="b-diff">{$NETWORK.difficulty|number_format:"8"}</span></td>
              {/if}
            </tr>
            <tr>
              <th>次の予測難易度(参考値)</th>
              {if ! $GLOBAL.website.chaininfo.disabled}
              <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new">{$NETWORK.EstNextDifficulty|number_format:"8"} (Change in {$NETWORK.BlocksUntilDiffChange} Blocks)</a></td>
              {else}
              <td>{$NETWORK.EstNextDifficulty|number_format:"8"} ({$NETWORK.BlocksUntilDiffChange} ブロック後に変更)</td>
              {/if}
            </tr>
            <tr>
              <th>ブロック発見間隔(ネット全体)</th>
              <td>{$NETWORK.EstTimePerBlock|seconds_to_words}</td>
            </tr>
            <tr>
              <th>ブロック発見間隔(プール)</th>
              <td>{$ESTTIME|seconds_to_words}</td>
            </tr>
            <tr>
              <th>このラウンドのシェア予測値</th>
              <td id="b-target">{$ESTIMATES.shares|number_format} ({$ESTIMATES.percent}% 完了)</td>
            </tr>
            {if ! $GLOBAL.website.blockexplorer.disabled}
            <tr>
              <th width="50%">次のネットワークブロック</th>
              <td colspan="3">{($CURRENTBLOCK + 1)|number_format} &nbsp;&nbsp; (現在: <a href="{$GLOBAL.website.blockexplorer.url}{$CURRENTBLOCKHASH}" target="_new">{$CURRENTBLOCK|number_format})</a></td>
            </tr>
            {else}
            <tr>
              <th>次のネットワークブロック</th>
              <td colspan="3">{($CURRENTBLOCK + 1)|number_format} &nbsp;&nbsp; (現在: {$CURRENTBLOCK|number_format})</td>
            </tr>
            {/if}
            <tr>
              <th>最新のブロック</th>
              <td colspan="3"><a href="{$smarty.server.SCRIPT_NAME}?page=statistics&action=round&height={$LASTBLOCK}" target="_new">{$LASTBLOCK|default:"0"|number_format}</a></td>
            </tr>
            <tr>
              <th>ブロック発見からの経過時間</th>
              <td colspan="3">{$TIMESINCELAST|seconds_to_words}</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="panel-footer">
        <h6>{if !$GLOBAL.website.api.disabled}この情報は <a href="{$smarty.server.SCRIPT_NAME}?page=api&action=getpoolstatus&api_key={$GLOBAL.userdata.api_key|default:""}">こちら</a>{/if}からJSON形式で取得できます。</h6>
      </div>
    </div>
  </div>
