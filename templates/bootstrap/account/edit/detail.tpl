<form action="{$smarty.server.SCRIPT_NAME}" method="post" role="form">
  <input type="hidden" name="page" value="{$smarty.request.page|escape}">
  <input type="hidden" name="action" value="{$smarty.request.action|escape}">
  <input type="hidden" name="do" value="updateAccount">
  <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-edit fa-fw"></i> アカウント詳細
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-lg-12">
            <div class="form-group">
              <label>Username</label>
              <input class="form-control" type="text" value="{$GLOBAL.userdata.username|escape}" disabled />
            </div>
            <div class="form-group">
              <label>User Id</label>
              <input class="form-control" type="text" value="{$GLOBAL.userdata.id}" disabled />
            </div>
            {if !$GLOBAL.website.api.disabled}
            <div class="form-group">
              <label>API Key</label>
              <br>
              <a href="{$smarty.server.SCRIPT_NAME}?page=api&action=getuserstatus&api_key={$GLOBAL.userdata.api_key}&id={$GLOBAL.userdata.id}">{$GLOBAL.userdata.api_key}</a>
            </div>
            {/if}
            <div class="form-group">
              <label>E-Mail</label>
              {nocache}<input class="form-control" type="text" name="email" value="hidden" size="20" {if $GLOBAL.twofactor.enabled && $GLOBAL.twofactor.options.details && !$DETAILSUNLOCKED}id="disabledInput" disabled{/if}/>{/nocache}
            </div>
            <div class="form-group">
              <label>タイムゾーン</label>
              {nocache}
              <select class="form-control select-mini" name="timezone" {if $GLOBAL.twofactor.enabled && $GLOBAL.twofactor.options.details && !$DETAILSUNLOCKED}id="disabledInput" disabled{/if}>
                {html_options options=$TIMEZONES selected=$GLOBAL.userdata.timezone}
              </select>
              {/nocache}
            </div>
            <div class="form-group">
              <label>払い出しアドレス</label>
              {nocache}<input class="form-control" type="text" name="paymentAddress" value="{$smarty.request.paymentAddress|default:$GLOBAL.userdata.coin_address|escape}" size="40" {if $GLOBAL.twofactor.enabled && $GLOBAL.twofactor.options.details && !$DETAILSUNLOCKED}id="disabledInput" disabled{/if}/>{/nocache}
            </div>
            <div class="form-group">
              <label>プールへの寄付設定 </label>
              <font size="1"> 割合をパーセンテージで入力({$DONATE_THRESHOLD.min} - 100%)</font>
              {nocache}<input class="form-control" type="text" name="donatePercent" value="{$smarty.request.donatePercent|default:$GLOBAL.userdata.donate_percent|escape|number_format:"2"}" size="4" {if $GLOBAL.twofactor.enabled && $GLOBAL.twofactor.options.details && !$DETAILSUNLOCKED}id="disabledInput" disabled{/if}/>{/nocache}
            </div>
            <div class="form-group">
              <label>自動払い出し</label>
              </br>
              <font size="1">{if $GLOBAL.config.ap_threshold.min < 0.0001}{$GLOBAL.config.ap_threshold.min|number_format:"8"}{else}{$GLOBAL.config.ap_threshold.min}{/if} - {if $GLOBAL.config.ap_threshold.max < 0.0001}{$GLOBAL.config.ap_threshold.max|number_format:"8"}{else}{$GLOBAL.config.ap_threshold.max}{/if} {$GLOBAL.config.currency}の範囲で設定。 '0' にすると自動払い出しは行われません。{if $GLOBAL.config.txfee_auto > 0} 払出し時に {if $GLOBAL.config.txfee_auto > 0.00001}{$GLOBAL.config.txfee_auto}{else}{$GLOBAL.config.txfee_auto|number_format:"8"}{/if} {$GLOBAL.config.currency}の手数料が発生します。 <span id="tt"><img width="15px" height="15px" title="この手数料 {if $GLOBAL.config.txfee_auto > 0.00001}{$GLOBAL.config.txfee_auto}{else}{$GLOBAL.config.txfee_auto|number_format:"8"}{/if} {$GLOBAL.config.currency} はプールの収益ではなくネットワークに還元されます。" src="site_assets/bootstrap/images/questionmark.png"></span>{/if}</font>
              </br>
              <input class="form-control" type="text" name="payoutThreshold" value="{nocache}{$smarty.request.payoutThreshold|default:$GLOBAL.userdata.ap_threshold|escape}{/nocache}" size="{$GLOBAL.config.ap_threshold.max|strlen+4}" maxlength="{if $GLOBAL.config.ap_threshold.max < 1}10{else}{$GLOBAL.config.ap_threshold.max|strlen}{/if}" {if $GLOBAL.twofactor.enabled && $GLOBAL.twofactor.options.details && !$DETAILSUNLOCKED}id="disabledInput" disabled{/if}/>
            </div>
            <div class="form-group">
              <label>匿名アカウント</label>
              <input type="hidden" name="is_anonymous" value="0" />
              <input type="checkbox" class="switch" data-size="mini"  name="is_anonymous" id="is_anonymous" value="1" {if $GLOBAL.userdata.is_anonymous}checked{/if} {if $GLOBAL.twofactor.enabled && $GLOBAL.twofactor.options.details && !$DETAILSUNLOCKED}id="disabledInput" disabled{/if}/>
              </br>
              <font size="1">ONにするとサイト上に表示される名前がanonymousになります。OFFにするとユーザー名が表示されます。</font>
            </div>
            <div class="form-group">
              <label>PINコード(4桁の暗証番号)</label>
              <font size="1">登録時に設定したPINコード</font>
              <input class="form-control" type="password" name="authPin" size="4" maxlength="4">
            </div>
          </div>
        </div>
      </div>
      <div class="panel-footer">
      {nocache}
      <input type="hidden" name="ctoken" value="{$CTOKEN|escape|default:""}" />
      <input type="hidden" name="ea_token" value="{$smarty.request.ea_token|escape|default:""}">
      <input type="hidden" name="utype" value="account_edit">
      {if $GLOBAL.twofactor.enabled && $GLOBAL.twofactor.options.details}
      {if $DETAILSSENT == 1 && $DETAILSUNLOCKED == 1}
      <input type="submit" value="Update Account" class="btn btn-success btn-sm">
      {elseif $DETAILSSENT == 0 && $DETAILSUNLOCKED == 1 || $DETAILSSENT == 1 && $DETAILSUNLOCKED == 0}
      <input type="submit" value="Update Account" class="btn btn-danger btn-sm" disabled>
      {elseif $DETAILSSENT == 0 && $DETAILSUNLOCKED == 0}
      <input type="submit" value="Unlock" class="btn btn-warning btn-sm" name="unlock">
      {/if}
      {else}
      <input type="submit" value="アカウント更新" class="btn btn-success btn-sm">
      {/if}
      {/nocache}
      </div>
    </div>
  </div>
</form>
