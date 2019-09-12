<extend name="common/common" />
<block name="main">
	<div class="hui-wrap">
		 <div class="hui-form-items">
        	<div class="hui-form-items-title">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</div>
            <input type="text" class="hui-input hui-input-clear user" name="nickname" placeholder="请输入姓名" />
        </div>
       <div class="hui-form-items">
        	<div class="hui-form-items-title">联系电话：</div>
            <input type="number" class="hui-input tels" placeholder="请输入联系电话" name="phonenum" />
        </div>
  		<div class="hui-form-items">
        	<div class="hui-form-items-title">标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题：</div>
            <input type="text" class="hui-input hui-input-clear topic" name="nickname" placeholder="请输入标题" />
        </div>
        <div class="hui-form-items">
        	<div class="hui-form-items-title">联系邮箱：</div>
            <input type="text" class="hui-input hui-input-clear email" name="nickname" placeholder="请输入联系邮箱" />
        </div>
         <div class="hui-form-items">
            <div class="hui-form-items-title" style="padding-top:10px;">留&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;言：</div>
            <div class="hui-form-textarea">
                <textarea placeholder="请输入留言内容..." name="note" class="ta"></textarea>
            </div>
        </div>
        <div class="hui-form-items">
            <div class="hui-form-items-title">验&nbsp;证&nbsp;码：</div>
            <input type="text" class="hui-input getcode" value="" id="code_input" name="phonenum" />
             <div id="v_container" style="width:150px;float:left; height: 32px;"></div>
        </div>
        <div style="padding:15px 8px;">
            <input type="button" name="send_btn" value="我要留言" class="hui-button hui-primary send_btn" id="submitBtn"  style="margin:0 auto">
        </div>
	</div>
	    <script src="__js__/gVerify.js"></script>
	 <script>
        var phoneReg =  /^[1][0-9][0-9]{9}$/; //验证手机
        var han = /^[\u4e00-\u9fa5]+$/; //验证中文
        var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"); //验证邮箱
        var verifyCode = new GVerify("v_container");
        var th = document.table;
        $('.send_btn').click(function() {
            if ($('.user').val() == '') { hui.alert('姓名不能为空'); return false; }
            if (!han.test($('.user').val())) {  hui.alert('姓名填写有误'); return false; }
            if ($('.tels').val() == '') {  hui.alert('联系电话不能为空'); return false; }
            if (!phoneReg.test($('.tels').val())) {  hui.alert('联系电话有误'); return false; }
            if ($('.topic').val() == '') {  hui.alert('标题不能为空'); return false; }
            if ($('.email').val() == '') {  hui.alert('邮箱不能为空'); return false; }
            if (!reg.test($('.email').val())) {  hui.alert('邮箱有误'); return false; }
            if ($('.ta').val() == '') {  hui.alert('留言不能为空'); return false; }
            var res = verifyCode.validate($('#code_input').val());
            if (!res) {
                 hui.alert("验证码错误");
                return false;
            }

            $.ajax({
                type: 'post',
                url: '{:url("Index/kmessage")}',
                data: {
                    'user': $('.user').val(),
                    'tel': $('.tels').val(),
                    'content': $('.ta').val(),
                    'topic': $('.topic').val(),
                    'email': $('.email').val(),
                    'send': $('.send_btn').val()
                },
                success: function(data) {
                    hui.alert(data.data);
                   $('.user').val('');
                   $('.tels').val('');
                   $('.ta').val('');
                   $('.topic').val('');
                   $('.email').val('');
                   $('.send_btn').val('');
                   $('.getcode').val('');
                },
                async: true
            });
        })
        </script>
</block>