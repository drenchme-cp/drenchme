function application(){
	var _self = this;
	this.searchval = '请输入关键词';
	this.api = '4DD845D1BB619BEEFB641EC49A7D8735';
	this.phone = /((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)/;
    this.email = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
	this.toolAuto = true;
	
	
    // 菜单
    $('#menu .drop').each(function(index, element){
        if($(this).children('li').length == 0){
			$(this).remove();
        }else{
            $(this).parent().addClass('isdrop');
        }
    })
    $('#menu dd > a').bind('click', function(e){
        if($(this).siblings('.drop').length == 0){
			//  超链接跳�?
        }else{
            if($(this).siblings('.drop').is(':hidden')){
				$(this).parent().addClass('current').siblings().removeClass('current');
				$(this).siblings('.drop').stop(true, true).slideDown(200).end().parent('dd').siblings('dd').children('.drop').stop(false, false).slideUp(200);
            }else{
				$(this).parent().removeClass('current');
            	$(this).siblings('.drop').stop(false, false).slideUp(200);
            }
          	e.preventDefault();
        }
    })
    	// 格式化电话号�?
    $('.foot .txt .bonav a:first').each(function(index, element){
      $(this).css({"background":"none"});
      })
	// 格式化电话号�?
    $('[ig-phone]').each(function(index, element){
        var tel400 = $.trim($(this).text()), telLength = tel400.length;
        if(telLength == 11){  // 手机号码 OR 座机号码
            var firstNum = tel400.substr(0,1);
            if(firstNum == 0){
                var tel1 = tel400.substr(0, 4);
                var tel2 = tel400.substr(4, 7);
                tel400 = tel1+ "-" + tel2;
            }else{
                var tel1 = tel400.substr(0, 3);
                var tel2 = tel400.substr(3, 4);
                var tel3 = tel400.substr(7, 4);
                tel400 = tel1+ "-" + tel2 + "-" + tel3;
            }
        }else if(telLength == 12){
            var tel1 = tel400.substr(0, 4);
            var tel2 = tel400.substr(4, 8);
            tel400 = tel1+ "-" + tel2;
        }else if(telLength == 10){
            var tel1 = tel400.substr(0, 3);
            var tel2 = tel400.substr(3, 4);
            var tel3 = tel400.substr(7, 3);
            tel400 = tel1+ "-" + tel2 + "-" + tel3;
        }
        $(this).html(tel400);
    })
    
    
  //拆分标题
  $('.tik b').each(function(index, element){
    var iproh1= $.trim($(this).text());
    	var iproh1a= iproh1.substr(0, 2);
 	 var iproh1b = iproh1.substr(2);
     iproh1="<i class='i'>"+ iproh1a + "</i>"+ iproh1b;
    $(this).html(iproh1);
    })
  //拆分标题
  $('.tik em').each(function(index, element){
    var iproEn= $.trim($(this).text()),index=iproEn.indexOf(" ");
    var iproEn1a= iproEn.substr(0, index);
 	 var iproEn1b = iproEn.substr(index);
     iproEn=iproEn1a + "<br/>"+ iproEn1b;
    $(this).html(iproEn);
    })
  	// 变加
	$('.tik a').bind({
      mouseover:function(){ var txt;  txt="�?;  $(this).find('.x').text(txt);},
      mouseout:function(){ var txt;  txt="+";   $(this).find('.x').text(txt); } 
    })
      	// 变加
	$('.tok a').bind({
      mouseover:function(){ var txt;  txt="�?;  $(this).find('.x').text(txt);},
      mouseout:function(){ var txt;  txt="+";   $(this).find('.x').text(txt); } 
    })
     	// 变加
	$('.submian .subleft .title').bind({
      mouseover:function(){ var txt;  txt="�?;  $(this).find('.x').text(txt);},
      mouseout:function(){ var txt;  txt="+";   $(this).find('.x').text(txt); } 
    })
    
    // 加入收藏
	$('#addFavo').bind('click', function(){
		app.addFavorite($('title').html(), location.href, '');
	});
	
  	// 设为首页
	$('#setHome').bind('click', function(){
		app.addSetHome($('title').html(), location.href, '');
	});
  
	// 返回顶部
	$('#goTop').bind('click', function(){
		$('body, html').animate({'scrollTop': 0}, 200);
	})
	//fix
	$("#close").click(function(){
		$(this).parents(".txt").hide().siblings(".fixclick").fadeIn();
	})
	$(".fixclick").click(function(){
		$(this).siblings(".txt").show();
		$(this).hide()
	})
	// API验证
	if(typeof(_self.api) == 'undefined' || _self.api.substr(13,4) != 'BEEF'){
		return false;
	}
	 if(typeof(searchval) == "undefined"){ var searchval = "在此输入关键�? };
	this.scroller();
	this.toolbar();
	this.plugs();
	this.former();
	this.photo();
    this.album();
    this.bdmap();
    this.nav();
}
application.prototype = {
	plugs: function(){
		// 百度分享-浮窗+图标
		window._bd_share_config={
			"common": {
				"bdSnsKey":{},
				"bdText":"",
				"bdMini":"2",
				"bdMiniList":false,
				"bdPic":"",
				"bdStyle":"0",
				"bdSize":"24"
			},
			"slide": {
				"type":"slide",
				"bdImg":"0",
				"bdPos":"left",
				"bdTop":"160.5"
			},
			"share": {}
		};
		with(document)0[(getElementsByTagName('head')[0]||body)
			.appendChild(createElement('script'))
			.src='../../bdimg.share.baidu.com/static/api/js/share.js@v=89860593.js@cdnversion='+~(-new Date()/36e5)];
	},
 nav: function(){
	$("http://www.csgsh.com/templates/H2-0047/js/.nav .drop").each(function() {
		if (!$(this).find("a").length) {
			$(this).remove();
		}
	});

var nav = $('#nav').children('li');
$(nav).each(function(i){
$(this).on('mouseenter',function(){
			$(nav).eq(i).find('.drop').css({display:'block'});
}).on('mouseleave',function(){
		setTimeout(function(){
			$(nav).eq(i).find('.drop').css({display:'none'});
			},100)
	})
	});
	

	},
    bdmap: function(){
        var func = function(){
        	if($(".BMap_bubble_title a").length < 1){
                setTimeout(func, 100);
              }else{
                $(".BMap_bubble_title a").attr({"target":"_blank"});
              }
            }
        func();  // 执行函数
    },
    album: function(){
		$("#albumList .item").click(function(){
            $("#dialogAlbum").show();
            var windowHeight = $(window).height(), windowWidth = $(window).width();
            create();
            var f = $(this).index()+1;
            funny(f);
        });
        function create(){
			var _html = '';
            $("#albumList .item").each(function(index, element){
				_html +='<li><table cellpadding="0" cellspacing="0" border="0" class="img"><tr><td align="center" valign="middle"><img src="'+ $(element).attr('url') +'" /></td></tr></table></li>'; 
            });
            $("#dialogAlbumContainer ul").html(_html).find("img");
        }
        function funny(f){
            var windowHeight = $(window).height(), windowWidth = $(window).width(), t, interval = 5000, speed = 300, n = f,	clones = $("#dialogAlbumContainer li").eq(0).clone(true),	N = $("#dialogAlbumContainer li").length+1, htmlTip = "", isAuto = false;
            $("#dialogAlbumContainer ul").append(clones);
            $("#dialogAlbumContainer ul").css({"width":N*windowWidth});
            $("#dialogAlbumContainer li").css({"width":windowWidth});
            // 自动生成tip标签
            for(var i=1; i<N; i++){
                if(i==f){
                    htmlTip += "<span class='cur'></span>";
                }else{
                    htmlTip += "<span></span>";
                }
            }
            $("#dialogAlbumTip").html(htmlTip);
            // 点击打开默认位置
            $("#dialogAlbumContainer ul").css({"margin-left":(-windowWidth*(n-1))});
            // 执行函数
            var func = function(){
                if(n >= N){
                    $("#dialogAlbumContainer ul").css({"margin-left":0});
                    n = 1;
                    setTimeout(func, 0)
                }else if(n < 0){
                    n = N-2;
                    $("#dialogAlbumContainer ul").css({"margin-left":(-windowWidth*(n+1))});
                    setTimeout(func, 0);
                }else{
                    n++;
                    $("#dialogAlbumContainer ul").stop().animate({"margin-left":(-windowWidth*(n-1))}, speed);
                    $("#dialogAlbumTip span").eq(n-1).addClass("cur").siblings().removeClass("cur");
                    if(n == N){
                        $("#dialogAlbumTip span").eq(0).addClass("cur").siblings().removeClass("cur");
                    }
                }
            }
            // 点击执行
            $("#dialogAlbumTip span").click(function(){
                $(this).addClass("cur").siblings().removeClass("cur");
                n = $(this).index();
                $("#dialogAlbumContainer ul").animate({"margin-left":(-windowWidth*n)}, speed);

            });
            // 关闭.自动播放.左滑�?右滑�?
            $("#dialogAlbum .close").click(function(){ $("#dialogAlbum").hide(); });
            $("#imgPlayAuto").click(function(){
                if(!isAuto){ t = setInterval(func, interval); isAuto=true; $(this).attr({"class":"play"}); }else{ clearInterval(t); isAuto=false; $(this).attr({"class":"plus"}); }
            });
            $("#dialogAlbum .left").click(function(){ n-=2; func(); });
            $("#dialogAlbum .right").click(function(){ func(); });
            $(window).resize(function(){
                windowHeight = $(window).height();
                windowWidth = $(window).width();
                $("#dialogAlbumContainer ul").css({"width":N*windowWidth});
                $("#dialogAlbumContainer li").css({"width":windowWidth});
                $("#dialogAlbumContainer ul").css({"margin-left":(-windowWidth*(n-1))});
            });
        }
    },
	photo: function(){
		var $photo = $('#productPhoto'),
			$original = $('#productPhoto .original img'),
			$prev = $('#productPhoto .prev'),
			$next = $('#productPhoto .next'),
			$thum = $('#productPhoto .thum dl'),
			index = 0,
			_os = 4,
			_size = 0,
			_width = 101;
		
		// 载入结构
        if(typeof(multigraph) != 'undefined'){
            var _html = '';
            $(multigraph).each(function(index, element){
                if(index == 0){
					_html += '<dd class="current"><img src="'+ element.src +'" title="'+ element.title +'" alt="'+ element.title +'" /></dd>';
                  	$original.attr({'src': element.src});
                }else{
					_html += '<dd><img src="'+ element.src +'" title="'+ element.title +'" alt="'+ element.title +'" /></dd>';
                }
            });
            $thum.html(_html);
            _size = multigraph.length;
        	$thum.width(_width*_size);
        };
		
		// 点击显示大图
		$photo.on('click', '.thum dd', function(){
			$(this).addClass('current').siblings().removeClass('current');
			$original.attr({'src': $(this).children('img').attr('src')});
		})
		
		// 左右翻页
		function fun(){
			$thum.animate({'left': -index*_width}, 300, function(){
				$prev.removeClass('nodrop');
				$next.removeClass('nodrop');
				if(index == (_size - _os)){
					$next.addClass('nodrop');
				}else if(index == 0){
					$prev.addClass('nodrop');
				}
			});
		}
		$prev.bind('click', function(){
			if(index > 0){
				index --;
				fun();
			}
		})
		$next.bind('click', function(){
			if(index < _size - _os){
				index ++;
				fun();
			}
		})
	},
	former: function(){
		$postform = $('#formPost');
		$postform.find('http://www.csgsh.com/templates/H2-0047/js/.txt, .text, .code').bind({
			'focus': function(){
				$(this).parent().addClass('onfocus');
				if ($(this).val() == $(this).attr('placeholder')) {
					$(this).val('');
				}
			},
			'blur': function(){
				$(this).parent().removeClass('onfocus');
				$('#jLog').hide();
				if ($(this).val() == '') {
					$(this).val($(this).attr('placeholder'));
				}
			},
			'keyup': function(){
				$('#jLog').hide();
			}
		});
		$postform.find('[type="submit"]').bind('click', function () {
			var $name = $postform.find('[name="Name"]'),
				$phone = $postform.find('[name="Phone"]'),
				$email = $postform.find('[name="Email"]'),
				$code = $postform.find('[name="txtImageCode"]');
			
			// 姓名
			if ($name.val() == '' || $name.val() == $name.attr('placeholder')) {
				app.jLog($name.attr('empty'), $name.offset().left, $name.offset().top);
				$name.focus();
				return false;
			}
			// 联系方式
			if ($phone.val() == '' || $phone.val() == $phone.attr('placeholder')) {
				app.jLog($phone.attr('empty'), $phone.offset().left, $phone.offset().top);
				$phone.focus();
				return false;
			}
			if (!$phone.val().match(app.phone)) {
				app.jLog($phone.attr('error'), $phone.offset().left, $phone.offset().top);
				$phone.focus();
				return false;
			}
			// 电子邮箱
			if ($email.val() != $email.attr('placeholder') && !$email.val().match(app.email)) {
				app.jLog($email.attr('error'), $email.offset().left, $email.offset().top);
				$email.focus();
				return false;
			}
			// 验证�?
			if ($code.val() == '' || $code.val() == $code.attr('placeholder')) {
				app.jLog($code.attr('empty'), $code.offset().left, $code.offset().top);
				$code.focus();
				return false;
			}
		})
	},
	toolbar: function(){
		var $toolbar = $('#toolbar'),
			_self = this;
		
		$toolbar.find('.pointer').bind('click', function(){
			if($(this).hasClass('checked')){
				$(this).removeClass('checked').children('span').html('>>');
				$toolbar.animate({'right': 0}, 300);
			}else{
				$(this).addClass('checked').children('span').html('<<');
				$toolbar.animate({'right': -130}, 300);
			}
		})
		
		if(!_self.toolAuto){
			$toolbar.find('.pointer').addClass('checked').children('span').html('<<');
			$toolbar.show().animate({'right': -130}, 300);
		}else{
			$toolbar.find('.pointer').removeClass('checked').children('span').html('>>');
			$toolbar.show().animate({'right': 0}, 300);
		}
	},
	
    addFavorite: function(title, url){
      try {
          window.external.addFavorite(url, title);
      }
      catch (e) {
         try {
           window.sidebar.addPanel(title, url, "");
        }
         catch (e) {
             alert('抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加');
         }
      }
    },
  // 设置主页
  addSetHome:function(obj,url){
	try{
		obj.style.behavior='url(#default#homepage)';
		obj.setHomePage(url);
   }catch(e){
	   if(window.netscape){
		  try{
			  netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
		 }catch(e){
			  alert("抱歉，此操作被浏览器拒绝！\n\n请在浏览器地址栏输入“about:config”并回车然后将[signed.applets.codebase_principal_support]设置�?true'");
		  }
	   }else{
		alert("抱歉，您所使用的浏览器无法完成此操作。\n\n您需要手动将�?+url+"】设置为首页�?);
	   }
  }
} ,
	scroller: function(){
		
        
      // 滚动荣誉-无缝滚动-�?
		if($('#ipro').length){
			!function(){
				var $id = $('#ipro .hd li'),
                    _index,
					_step = 1;
				function fun(){
					$('#ipro .bd .comt').eq(_index).animate({opacity:"1"},200,"swing").show().siblings().animate({opacity:"0"},200,"swing").hide();
                  $('#ipro .hd li').eq(_index).addClass('hover').siblings().removeClass('hover');
				}
                $id.bind({
                    'click': function(){
                      _index = $(this).index();
						fun(); 
                    }
                })
			}()
		}
      
      // 滚动荣誉-无缝滚动-�?
		if($('#iserves').length){
			!function(){
				var $id = $('#iserves .hd li'),
                    _index,
					_step = 1;
				function fun(){
					$('#iserves .bd .comt').eq(_index).animate({opacity:"1"},300,"swing").show().siblings().animate({opacity:"0"},300,"swing").hide();
                  $('#iserves .hd li').eq(_index).addClass('hover').siblings().removeClass('hover');
				}
                $id.bind({
                    'mousedown': function(){
                      _index = $(this).index();
						fun(); 
                    }
                })
			}()
		}
      
      
        // 首页新闻-单个滚动可触�?
//		if($('#icase').length){
//			!function(){
//				var $id = $('#icase'),
//                  $list = $id.find('.list'),
//					index = 0,
//					_width = 275,
//					_speed = 300,
//					_size = $list.children('li').length,
//					t,
//					_interval = 5000;
//				
//              $list.append($list.html());
//
//				function fun(){
//					if(index > _size){
//						$id.find('.list').css({'margin-left': 0});
//						index = 1;
//                      fun();
//					}else if(index < 1){
//                      
//						$id.find('.list').css({'margin-left': -_size*_width});
//						index = _size - 1;
//                      fun();
//                  }else{
//                      $list.stop().animate({'margin-left': -index*_width}, _speed);
//                  }
//				}
//				$id.find('.prev').bind('click', function(){
//					index --;
//					fun();
//				})
//				$id.find('.next').bind('click', function(){
//					index ++;
//					fun();
//				})
//		
//				$id.bind({
//                  'mouseenter': function(){
//						clearInterval(t);
//						$id.find('.prev').animate({'left': 0}, 200);
//						$id.find('.next').animate({'right': 0}, 200);
//                  },
//                  'mouseleave': function(){
//						$id.find('.prev').animate({'left': -30}, 200);
//						$id.find('.next').animate({'right': -30}, 200);
//						t = setInterval(function(){
//                          index ++;
//                          fun();
//                      }, _interval);
//                  }
//              })
//				
//				t = setInterval(function(){
//					index ++;
//					fun();
//				}, _interval);
//				
//				$id.find('.prev').animate({'left': -30}, 200);
//				$id.find('.next').animate({'right': -30}, 200);
//			}()
//		}
		
		
    },
	jAlert: function(info, title, callback){
		var _self = this,
			_html = '';
		
		if(typeof(title) == 'function'){
			callback = title;
			title = '温馨提示';
		}else if(title == null){
			title = '温馨提示';
		}
		
		_self.layout(1);
		
		_html += '<div class="dialog-alert" id="jAlear">';
		_html += '<div class="head">';
		_html += '<h2>'+ title +'</h2>';
		_html += '<a href="javascript:;" class="close"></a>';
		_html += '</div>';
		_html += '<div class="main">';
		_html += '<p>'+ info +'</p>';
		_html += '</div>';
		_html += '<div class="foot">';
		_html += '<a href="javascript:;" class="ok">我知道了</a>';
		_html += '</div>';
		_html += '</div>';		
				
		var $obj = $(_html);
		$obj.appendTo('body').show();
		$obj.find('.close')
			.bind('click', function(){
				_self.layout(0);
				$obj.hide().remove();
				if(callback){
					callback(false);
				}
			});
		$obj.find('.ok')
			.bind('click', function(){
				_self.layout(0);
				$obj.hide().remove();
				if(callback){
					callback(true);
				}
			})
	},
	jConfirm: function(info, title, callback){
		var _self = this,
			_html = '';
		
		if(typeof(title) == 'function'){
			callback = title;
			title = '温馨提示';
		}else if(title == null){
			title = '温馨提示';
		}

		_self.layout(1);		
		
		_html += '<div class="dialog-confirm" id="jConfirm">';
		_html += '<div class="head">';
		_html += '<h2>'+ title +'</h2>';
		_html += '<a href="javascript:;" class="close"></a>';
		_html += '</div>';
		_html += '<div class="main">';
		_html += '<p>'+ info +'</p>';
		_html += '</div>';
		_html += '<div class="foot">';
		_html += '<a href="javascript:;" class="ok">确定</a>';
		_html += '<a href="javascript:;" class="cancel">取消</a>';
		_html += '</div>';
		_html += '</div>';		
				
		var $obj = $(_html);
		$obj.appendTo('body').show();
		$obj.find('.close')
			.bind('click', function(){
				_self.layout(0);
				$obj.hide().remove();
				if(callback){
					callback(false);
				}
			});
		$obj.find('.ok')
			.bind('click', function(){
				_self.layout(0);
				$obj.hide().remove();
				if(callback){
					callback(true);
				}
			})
		$obj.find('.cancel')
			.bind('click', function(){
				_self.layout(0);
				$obj.hide().remove();
				if(callback){
					callback(false);
				}
			})
	},
	jLog: function(i, l, t){
		var _offsetX = -23,
			_offsetY = 44;
		if(i == null){
			i = '必填字段，请输入正确的内�?;
		}
        if ($('#jLog').length) {
            $('#jLog').html(i + '<i></i>').show().css({ 'left': (l + _offsetX), 'top': (t + _offsetY) });
        } else {
            $('<div class="dialog-log" id="jLog">' + i + '<i></i></div>').appendTo('body').css({ 'left': (l + _offsetX), 'top': (t + _offsetY) });
        }
    },
	layout: function(u){
		if(u == 0){
			$('#dialogLayout').remove();
		}else{
			if(!$('#dialogLayout').length){
				$('<div class="dialog-layout" id="dialogLayout"></div>').appendTo('body').show();
			}
		}
	}
}
var app = new application();






$(function(){
    var $a=$('.ueditor_baidumap'),$docWth=$(document).width();
    if(!$a.length){return;};
    $a.each(function() {
        var Arsrc = $(this).attr('src').split("/"),Tstart = 0,_this=$(this);
        for (var i = 0; i < Arsrc.length; i++) {
            if (Arsrc[i] == "Ueditor") {break;}
            var str = Arsrc[i].split("");Tstart += str.length + 1;};
        _this.get(0).src = _this.get(0).src.substring(Tstart - 1); //去掉IP前缀
        if (!(!!window.ActiveXObject || "ActiveXObject" in window)) {
            _this.css('width', '90%'); //调整PC地图宽度
            _this.load(function() {
                var $iframElem = _this.contents();
                $iframElem.find("#dituContent").css({width: _this.width() - 2});
                if ($docWth < 650) {
                    _this.css({marginLeft: '1%',width: '98%'}).parent('p').css({textIndent: '0',overflow: 'hidden'}); //调整手机地图宽度
                  $iframElem.find("#dituContent").css({width: _this.width() - 2});
                    _this.parent('span').parent('p').css({textIndent: '0',overflow: 'hidden'});
                    setTimeout(function() {
                        $iframElem.find('.BMap_omCtrl').css({width: '15px',height: '15px'}); //小屏缩略地图隐藏
                    }, 1000);};});}});})
$("http://www.csgsh.com/templates/H2-0047/js/.banner li.item").eq(0).show();


//搜索查询
	function SiteSearch(send_url, divTgs, channel_name) {
		console.log(11);
	    var strwhere = "";
	    if (channel_name !== undefined) {
	        strwhere = "&channel_name=" + channel_name
	    }
		var str = $.trim($(divTgs).val());
		if (str.length > 0 && str != "输入关健�?) {
		    window.location.href = send_url + "?keyword=" + encodeURI($(divTgs).val()) + strwhere;
		}
		return false;
	}
	
	
	function ipro(){
		var list = $('#list').children('li');
		var k=0;var tim=null;
		var w=$(list).eq(0).width();
		var l = $(list).length;
		$('#list').css({width:w*2*l+'px'});
		for(var i=0;i<l;i++){
			$('#list').append($(list).eq(i).clone());
		};
		function ss(){
			if(tim==null){
				tim=setInterval(function(){
					if(k>=w*l){k=0;}else{k++;};
					$('#list').css({marginLeft:-k+'px'})
				},50)
			};
		};
		ss();
		$('#list').on('mouseenter',function(){
			clearInterval(tim);
			tim=null;
		}).on('mouseleave',function(){
			ss();
		});
		
	};
	ipro();


$(function(){
	var com = $('#comt').find('span');
	var dl = $('#comt').find('dl');
	console.log(dl.length);
	$(com).each(function(i){
		$(this).on('click',function(){
			$(dl).css({display:'none'});
			$(dl).eq(i).css({display:'block'});
		})
	})

});
