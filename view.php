<?php
require_once('./functions.php');

$data=[];
$errs = [];
//データベースへの接続
$dbh = get_db_connect();
if($_SERVER['REQUEST_METHOD'] === 'POST'){
    //POSTデータの取得
    $name = get_post('name');
    $comment = get_post('comment');
    //文字数のチェック
    if (!check_words($name, 50)) {
        $errs[] = 'お名前欄を修正してください';
    }
    if (!check_words($comment, 200)) {
        $errs[] = 'コメント欄を修正してください';
    }

    if(count($errs) === 0){
    //コメントの書き込み
    $result = insert_comment($dbh,$name,$comment);
    }
}

//全コメントデータの取得
$data = select_comments($dbh);

?>

<html>
<body>
<h1>ひとこと掲示板</h1>
<table border=1>
    <tr style="background-color: orange"><th>名前</th><th>コメント</th><th>時刻</th></tr>
    <?php 
    foreach($data as $row): ?>
    <tr>
    <td><?php echo html_escape($row['name']);?></td>
    <td><?php echo nl2br(html_escape($row['comment']));?></td>
    <td><?php echo html_escape($row['created']);?></td>
    </tr>
    <?php endforeach; ?>
</table>
<?php if(count($errs)){
    foreach($errs as $err){
        echo '<p style="color: red">'.$err.'</p>';
    }
}?>
<form action="view.php" method="POST">
<p>お名前*<input type="text" name="name">(50文字まで)</p>
<p>ひとこと*<textarea name="comment" rows="4" cols="40"></textarea>(200文字まで)</p>
<input type="submit" value="書き込む">
</form>
</body>
</html>