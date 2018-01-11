 <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-question fa-fw"></i> Getting Started Guide
        </div>
        <div class="panel-body">
        
    <p>1. <strong>アカウントの作成 Create account.</strong></p>
      <ul>
        <li><a href="{$smarty.server.SCRIPT_NAME}?page=register">こちら</a>から登録するか、アカウントをお持ちの方はログインして下さい。</li>
        <li>採掘ソフトが使用する <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">ワーカー</a> を作成します。</li>
      </ul>
      <ul>
        <li>Register <a href="{$smarty.server.SCRIPT_NAME}?page=register">here</a>, or login if you already have account</li>
        <li>Create a <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">worker</a> that will be used by the miner to login</li>
      </ul>
    </li>
    <p>2. <strong>採掘ソフトの入手　Download a miner.</strong></p>
      <ul>
	<li><em>CPUMiner Windows <a href="http://bitzeny.org/bin/cpuminer/cpuminer_win64_sse4_20141110.zip">こちら</a> をダウンロード</em></li>
	<li><em>CPUMiner Linux  <a href="https://github.com/bitzeny/cpuminer">こちら(Github)</a> からダウンロード</em></li>
      </ul>
      <ul>
	<li><em>CPUMiner Windows: Download from <a href="http://bitzeny.org/bin/cpuminer/cpuminer_win64_sse4_20141110.zip">here</a></em></li>
	<li><em>CPUMiner Linux : Download from <a href="https://github.com/bitzeny/cpuminer">Github</a> </em></li>
      </ul>
    </li>
    <p>3. <strong>採掘ソフトの設定　Configure your miner.</strong></p>
    <ul>
      <p>Linuxを使用している場合は、コンソールに次のように入力します。</p>
      <p>If your using Linux, Then type the following into the console:</p>
      <li>MinerD</li>
      <pre>./minerd -a yescrypt -o stratum+tcp://bitzenypool.work:19666 -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>

      <p>Windowsで採掘する場合は、採掘ソフトを起動するためにバッチファイルを作成する必要があります。</p>
      <p>メモ帳を開いて、次のコマンドをコピー＆ペーストしてください</p>
      <p>If you want to mine on a Windows Operating System, then you'll need to create a batch file to start your miner.</p>

      <p>Simply open notepad and then copy and paste the following:</p>
      <li>MinerD</li>
      <pre>./minerd -a yescrypt -o stratum+tcp://bitzenypool.work:19666 -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>

	  <p>自分のアカウントを反映させるために、 "-u Weblogin.Worker -p Worker password"を変更する必要があります。<br />-u ログイン名.ワーカー名 -pワーカーパスワード<br />をあなたが設定したものに変更し、ファイルに名前を付け、採掘ソフトと同じフォルダ内に保存。ファイル名.batをダブルクリックすると採掘ソフトが起動します。</p>
	  <p> You then need to change "-u Weblogin.Worker -p Worker password" to reflect your own account. Eg, "-u Steve.StevesWorker -p StevesWorkerPassword" then go to "File > Save as" and save the file as "RunMe.bat" in the same folder containing your miners application files. You are now ready to mine, double click on "RunMe.bat" to start mining. If you want, you can create additional workers with usernames and passwords of your choice <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">here</a></p>
    </ul>
    <p>4. <strong>{$SITECOINNAME|default:"Litecoin"}の受け取りアドレスを作成　Create a {$SITECOINNAME|default:"Litecoin"} address to receive payments.</strong></p>
      <ul>
        <li>  {$SITECOINNAME|default:"Litecoin"}ウォレットを<a href="{$SITECOINURL|default:"http://www.litecoin.org"}" target="_blank">こちら</a>からダウンロード。
          <p>新しいアドレスを生成し、アカウントページに入力して支払いを受け取ります。</p>
        </li>
      </ul>

      <ul>
        <li> Downloading the client &amp; block chain: 	Download the {$SITECOINNAME|default:"Litecoin"} client from <a href="{$SITECOINURL|default:"http://www.litecoin.org"}" target="_blank">here</a>.
          <p>Generate a new address and input it on your account page to receive payments.</p>
        </li>
      </ul>
    </li>
       </div>
      </div>
    </div>
    <!-- /.col-lg-12 -->
  </div>
