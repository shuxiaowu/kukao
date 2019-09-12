  <!-- mobile_head -->

  <div id="mobile_top" class="hidden-lg">

        <div class="m_top_left">

            <a href="{:url('/')}"><img src="__img__/phone_logo.png" height="100%"></a>

        </div>

        <div class="phone_top_center">
            <eq name="mark" value="index">
                <p style="text-transform:uppercase; font-size:15px;color:#fff;line-height:48px;font-weight:700; ">

                    {$sysconf.companyname}</p>

                <!-- <p style="font-size:12px;color:#fff;line-height:12px;">www.jiangxizszx.com</p> -->
                <else/>
                 <p style="text-transform:uppercase; font-size:15px;color:#fff;line-height:48px;font-weight:700; ">

                    {$title|subtext=0,12,2}</p>
            </eq>
        </div>

        <div class="m_top_right">

            <div class="mtr_icon mtr_icon_left <empty name="userphone">bounceInDown dialog demo0</empty>"><img src="__img__/person.png" width="100%"></div>

            <div class="mtr_icon mtr_icon_right phonenav_btn"><img src="__img__/top_btn.png" width="100%"></div>

        </div>

    </div>

    <div id="nav_mask" class="hidden-lg">



    </div>

    <div id="phonenav_list" class="hidden-lg">

        <ul>

            <li <eq name="mark" value="index">class="active"</eq>>

                <a href="{:url('/')}">

                    <span>首页</span>

                </a>

            </li>

            <li <eq name="mark" value="mba">class="active"</eq>>

                <a href="{:url('home/index/mba')}">

                    <span>MBA</span>

                </a>

            </li>

            <li <eq name="mark" value="mpa">class="active"</eq>>

                <a href="{:url('home/index/mpa')}">

                    <span>MPA</span>

                </a>

            </li>

            <li <eq name="mark" value="mpacc">class="active"</eq>>

                <a href="{:url('home/index/mpacc')}">

                    <span>MPACC</span>

                </a>

            </li>

            <li <eq name="mark" value="mea">class="active"</eq>>

                <a href="{:url('home/index/mea')}">

                    <span>MEM</span>

                </a>

            </li>

            <li <eq name="mark" value="mta">class="active"</eq>>

                <a href="{:url('home/index/mta')}">

                    <span>MTA</span>

                </a>

            </li>

            <li <eq name="mark" value="maud">class="active"</eq>>

                <a href="{:url('home/index/maud')}">

                    <span>MAUD</span>

                </a>

            </li>

            <li <eq name="mark" value="mlis">class="active"</eq>>

                <a href="{:url('home/index/mlis')}">

                    <span>MLIS</span>

                </a>

            </li>

            <li <eq name="mark" value="team">class="active"</eq>>

                <a href="{:url('home/index/team')}">

                    <span>名师团队</span>

                </a>

            </li>

            <li <eq name="mark" value="video">class="active"</eq>>

                <a href="{:url('home/index/video')}">

                    <span>视频课程</span>

                </a>

            </li>

            <li <eq name="mark" value="manageZx">class="active"</eq>>

                <a href="{:url('home/index/manageZx')}">

                    <span>管联资讯</span>

                </a>

            </li>



            <li <eq name="mark" value="yearTest">class="active"</eq>>

                <a href="{:url('home/index/yearTest')}">

                    <span>历年真题</span>

                </a>

            </li>

            <li <eq name="mark" value="manageZt">class="active"</eq>>

                <a href="{:url('home/index/manageZt')}">

                    <span>管联专题</span>

                </a>

            </li>



            <li <eq name="mark" value="about">class="active"</eq>>

                <a href="{:url('home/index/about')}">

                    <span>关于我们</span>

                </a>

            </li>



            <li <eq name="mark" value="applyCenter">class="active"</eq>>

                <a href="{:url('home/index/applyCenter')}">

                    <span>报名中心</span>

                </a>

            </li>

        </ul>

    </div>

    <script>

        $('.phonenav_btn').click(function () {

            if ($(this).hasClass('open')) {

                $(this).removeClass('open');

                $('#nav_mask').hide();

                $('#phonenav_list').stop(true, true).animate({ 'right': '-50%' })

            } else {

                $(this).addClass('open');

                $('#phonenav_list').stop(true, true).animate({ 'right': '0' });

                $('#nav_mask').show();

            }









        })

        $('#nav_mask').click(function () {

            $(this).hide();

            $('#phonenav_list').animate({ 'right': '-50%' })

        })

    </script>