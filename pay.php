<?php
$url = $_GET['request_post_url'];
unset($_GET['request_post_url']);
$native = $_GET;
?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>test</title>
</head>
<body>
<div class="container">
    <div class="row" style="margin:15px;0;">
        <div class="col-md-12">
            <form class="form-inline" method="post" action="<?php echo $url; ?>"　 id="myForm">
                <?php
                foreach ($native as $key => $val) {
                    echo '<input type="hidden" name="' . $key . '" value="' . $val . '">';
                }
                ?>
                <button type="submit" class="btn btn-success btn-lg" style="display: none">立即支付(金额：<?php echo $pay_amount; ?>元)</button>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    autoSubmit();
    function autoSubmit(){
        document.getElementById("myForm").submit();
    }
</script>
</body>
</html>