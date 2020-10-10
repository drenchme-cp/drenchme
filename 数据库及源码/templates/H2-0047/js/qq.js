//qq样式一
$(function(){
$('.kefu span').click(function(){
        if($(this).attr('class') =='this'){
            $(this).removeClass('this');
            $('.kefu_list').animate({"left": "0"}, 500);
            $(this).animate({"left": "150px"}, 500);
        }else{
            $(this).addClass('this');
            $('.kefu_list').animate({"left": '-150px'}, 500);
            $(this).animate({"left": "0"}, 500);
        }
    });
})
//qq样式二
$(function(){
	
	$("#izl_rmenu").each(function(){
		$(this).find(".btn-wx").mouseenter(function(){
			$(this).find(".pic").stop(false,true).fadeIn("fast");
		});
		$(this).find(".btn-wx").mouseleave(function(){
			$(this).find(".pic").stop(false,true).fadeOut("fast");
		});
		$(this).find(".btn-phone").mouseenter(function(){
			$(this).find(".phone_").stop(false,true).fadeIn("fast");
		});
		$(this).find(".btn-phone").mouseleave(function(){
			$(this).find(".phone_").stop(false,true).fadeOut("fast");
		});
		$(this).find(".btn-top").click(function(){
			$("html, body").animate({
				"scroll-top":0
			},"fast");
		});
	});
	var lastRmenuStatus=false;
	$(window).scroll(function(){//bug
		var _top=$(window).scrollTop();
		if(_top>200){
			$("#izl_rmenu").data("expanded",true);
		}else{
			$("#izl_rmenu").data("expanded",false);
		}
		if($("#izl_rmenu").data("expanded")!=lastRmenuStatus){
			lastRmenuStatus=$("#izl_rmenu").data("expanded");
			if(lastRmenuStatus){
				$("#izl_rmenu .btn-top").stop(false,true).slideDown();
			}else{
				$("#izl_rmenu .btn-top").stop(false,true).slideUp();
			}
		}
	});
});
//qq样式三
$(function(){
	var $qqServer = $('.qqserver');
	var $qqserverFold = $('.qqserver_fold');
	var $qqserverUnfold = $('.qqserver_arrow');
	$qqserverFold.click(function(){
		$qqserverFold.hide();
		$qqServer.addClass('unfold');
	});
	$qqserverUnfold.click(function(){
		$qqServer.removeClass('unfold');
		$qqserverFold.show();
	});
	//窗体宽度小鱼1024像素时不显示客服QQ
	function resizeQQserver(){
		$qqServer[document.documentElement.clientWidth < 1024 ? 'hide':'show']();
	}
	$(window).bind("load resize",function(){
		resizeQQserver();
	});
});
//qq样式四
$(function(){
		$("#aFloatTools_Show").click(function(){
			$('#divFloatToolsView').animate({width:'show',opacity:'show'},300,function(){$('#divFloatToolsView').show();});
			$('#aFloatTools_Show').hide();
			$('#aFloatTools_Hide').show();	
// var h=$('.cn').height();
// var h2=h/2.5;
// $('.cn').css({"margin-top":"-"+h2+"px"});	
		});
		$("#aFloatTools_Hide").click(function(){
			$('#divFloatToolsView').animate({width:'hide', opacity:'hide'},300,function(){$('#divFloatToolsView').hide();});
			$('#aFloatTools_Show').show();
			$('#aFloatTools_Hide').hide();	
		});				
	});

//qq样式五xxxxx

  
    $(function(){
    $('#qq_icon').click(function(){
	 $(this).animate({top:'100px',right:'-200px'},400);
     $('#cs_online').animate({right:"10px",top:"150px",opacity:'1'},400).show();
     
    });

        $('.cs_hd').click(function(){
            $('#cs_online').animate({right: '-220px', opacity: 0,top:'100px'}, 400);
            $('#qq_icon').animate({right: '-100px'},400).show();
        });
        
        
        $('.qq_ul ul li').each(function(index, el) {
           if(index=='0'){
             $('.qq_ul').height(123);
        }
                else if(index=='1'){
        $('.qq_ul').height(171);
                }
                 else if(index =='2'){
        $('.qq_ul').height(228);
                }
                else if(index =='3'){
        $('.qq_ul').height(258);
                }
        });
    })
    
