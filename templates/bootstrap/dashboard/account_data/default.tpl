  <div class="col-lg-4">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-user-md fa-fw"></i> アカウント情報</h4>
      </div>
      <div class="panel-body no-padding">
        <table class="table table-bordered table-hover table-striped">
          <tr>
            <td colspan="2">
    {if $GLOBAL.userdata.no_fees}
            You are mining without any pool fees applied and
    {else if $GLOBAL.fees > 0}
            You are mining at <font color="orange">{if $GLOBAL.fees < 0.0001}{$GLOBAL.fees|escape|number_format:"8"}{else}{$GLOBAL.fees|escape}{/if}%</font> pool fee and
    {else}
            このプールは手数料不要。
    {/if}
    {if $GLOBAL.userdata.donate_percent > 0}
            you donate <font color="green">{$GLOBAL.userdata.donate_percent|escape}%</font>.
    {else}
            代わりに<a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit">寄付</a>を受け付けております。
    {/if}
            </td>
          </tr>
        </table>
        <table class="table table-bordered table-hover table-striped">
          <thead>
            <tr><th colspan="2">アカウントの {$GLOBAL.config.currency} ZNY 残高</th></tr>
          </thead>
          <tbody>
            <tr>
              <th>承認済み</th>
              <th>
                <span class="label label-success pull-right bigfont" id="b-confirmed">{$GLOBAL.userdata.balance.confirmed|number_format:"6"}</span>
              </th>
            </tr>
            <tr>
              <th>承認待ち</th>
              <th>
                <span class="label label-warning pull-right bigfont" id="b-unconfirmed">{$GLOBAL.userdata.balance.unconfirmed|number_format:"6"}</span>
              </th>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
