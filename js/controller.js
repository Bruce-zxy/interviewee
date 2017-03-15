angular.module("interviewee",["ng","ngTouch","ngFileUpload"])
.controller("parentCtrl",function($scope){
	
	$scope.toggle_left = function(url){
		$.mobile.changePage(url, { transition: "slide" });
	};
	
	$scope.toggle_right = function(url){
		$.mobile.changePage(url, { transition: "slide", reverse:true});
	};
	
	angular.element('body').on("pageinit", function(event) {

        var scope = angular.element(event.target).scope();

        angular.element(event.target).injector().invoke(function($compile) {

            $compile(event.target)(scope);
            scope.$digest();
        })

    });
})
.controller("indexCtrl",function($scope){
	setTimeout(function(){
		$scope.toggle_left('main.html');
	},3000);
})
.controller("mainCtrl",function($scope, $http, $rootScope){
	
	$scope.li_ms = function(choose){
		
		if(choose == "display") {
			$("#listview_div")[0].style.display = "none";
			$("#home")[0].style.display = "block";
			return ; 
		} else {
			$("#home")[0].style.display = "none";
			$("#listview_div")[0].style.display == "none" ? $("#listview_div")[0].style.display = "block" : "";
		}

		$http({ url: "php/getPages.php?", method: "get", params:{"table":choose}}).then(function(result) {
			$scope.object = result.data;
		});

		$scope.$watch("kw", function(oldview, newview) {

			if(!oldview) {
				$scope.hasMore = true;
				$scope.loadMore = function() {
					$http({ url: "php/getPages.php", method: "get", params:{"start":$scope.object.length, "table":choose}}).then(function(result) {
						if(result.data.length < 5) {

							$scope.hasMore = false;
						}

						$scope.object = $scope.object.concat(result.data);
					});

				};

				return;
			};

			$http({ url: "php/getPagesCont.php", method: "get", params:{"kw":oldview, "table":choose}}).then(function(result) {

				$scope.object = [];
				if(result.data.length == 0 && oldview) {
					$scope.hasMore = false;
					return;
				} else if(result.data.length <= 5) {

					$scope.hasMore = false;
					for($scope.i = 0; $scope.i < result.data.length; $scope.i++) {
						$scope.object.push(result.data[$scope.i]);
					}
					return;
				} else {
					$scope.hasMore = true;
				}

				for($scope.i = 0; $scope.i < 5; $scope.i++) {
					$scope.object.push(result.data[$scope.i]);
				}
				$scope.loadMore = function() {
					$scope.object = result.data;
					$scope.hasMore = false;
				}
			});

		});

		$scope.test = function(data,title) {
			$rootScope.id = data;
			$rootScope.title = title;
			$http({ url: "php/newReading.php", method: "get", params:{"id":data, "table":choose}});
			sessionStorage.setItem("ID", data);
			sessionStorage.setItem("table", choose);
		}
   };
})
.controller("detailCtrl", function($scope, $http, $rootScope){
	
	var test = sessionStorage.getItem("ID");
	var table = sessionStorage.getItem("table");
	$(".detail_detail")[0].style.display = "none";
	$(".detail_hide").click(function(){
		var hide = $(".detail_detail")[0].style.display;
		if(hide == "none"){
			$(".detail_hide")[0].innerHTML = "隐藏答案";
			$(".detail_detail")[0].style.display = "block";
		} else if(hide == "block"){
			hide_detail();
		}
	});
	
	function hide_detail() {
		$(".detail_hide")[0].innerHTML = "显示答案";
		$(".detail_detail")[0].style.display = "none";
	}

    $http({ url: "php/getById.php", method: "get", params:{"id":test, "table":table}}).then(function(result) {
        $scope.object = result.data[0];
    });
    
    $http({ url: "php/Comm.php", method: "get", params:{'title':$rootScope.title}}).then(function(result) {
        $scope.comments = result.data;
    });
    
    $("#order").change(function(){
    	var length = $(".comments1").length;
    	if ($("#order")[0].value == 1){
	    		$(".comments1")[0].style.display = "block";
	    		$(".comments2")[0].style.display = "none";
    	} else {
	    		$(".comments1")[0].style.display = "none";
	    		$(".comments2")[0].style.display = "block";
    	}
    });

    
    $(".like").click(function(){
    	$http({ url: "php/newReading.php", method: "get", params:{"id":test, "table":table, "like":1}}).then(function(data){
    		$http({ url: "php/getById.php", method: "get", params:{"id":test, "table":table}}).then(function(result) {
		        $scope.object = result.data[0];
		    });
    	});
    });
    $scope.commLike = function(comment){
    	$http({ url: "php/newReading.php", method: "get", params:{"id":test, "table":table, "comment":comment, "comm_like":1}}).then(function(data){
    		$http({ url: "php/Comm.php", method: "get", params:{'title':$rootScope.title}}).then(function(result) {
		        $scope.comments = result.data;
		    });
    	});
    };
    
    $scope.next = function(){
    	var temp = test--;
    	hide_detail();
    	$http({ url: "php/getById.php", method: "get", params:{"id":test, "table":table}}).then(function(result_1) {
        	if(result_1.data[0]){
        		$rootScope.title = $scope.title = result_1.data[0].Title;
    			$http({ url: "php/Comm.php", method: "get", params:{'title':$scope.title, "table":table}}).then(function(result_2) {
		        	$scope.comments = result_2.data;
		        	$scope.object = result_1.data[0];
		        	$http({ url: "php/newReading.php", method: "get", params:{"id":test, "table":table}});
		    	});
    		} else {
    			test = temp;
    			alert("已经到底了！");
    		}
        })
    };
    $scope.pre = function(){
    	var temp = test++;
    	hide_detail();
    	$http({ url: "php/getById.php", method: "get", params:{"id":test, "table":table}}).then(function(result_1) {
        	if(result_1.data[0]){       		
        		$rootScope.title = $scope.title = result_1.data[0].Title;
    			$http({ url: "php/Comm.php", method: "get", params:{'title':$scope.title, "table":table}}).then(function(result_2) {
		        	$scope.comments = result_2.data;
		        	$scope.object = result_1.data[0];
		        	$http({ url: "php/newReading.php", method: "get", params:{"id":test, "table":table}});
		    	});
        	} else {
        		test = temp;
        		alert("已经到顶了！");
        	}
    	})
    };
    
    document.onkeydown=function(event){
		var e = event || window.event || arguments.callee.caller.arguments[0];
	    if(e && e.keyCode==13 && e.ctrlKey){
			$scope.addComm($scope.title);
	    }
	}; 
    
    $scope.addComm = function(title) {
    	var comm = $(".add_comm>textarea")[0].value;
    	var patt = new RegExp(" ","g");
    	var result = patt.exec(comm);
    	var ip = returnCitySN["cip"]+" | ";
    	var browser = ua();
    	var sys = os();
    	if(result || !comm) {
    		return alert("评论不能为空或包含空字符！");
    	}
    	var date = new Date().getTime();
    	$http({ url: "php/Comm.php", method: "get", params:{"add":1, 'title':title, "table":table, "time":date, "comment":comm, "ip":ip, "browser":browser, "sys":sys}}).then(function(){
    		$http({ url: "php/Comm.php", method: "get", params:{"title":title}}).then(function(result) {
		        $scope.comments = result.data;
		        $(".add_comm>textarea")[0].value = "";
		        alert("评论成功！");
		    });
    	});
    	
    }
    
    var e =	window.navigator.userAgent;

	function ua() {
	    var r = new Array;
	    var outputer = '';
	    if (r = e.match(/FireFox\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = 'Mozilla FireFox';
	    } else if (r = e.match(/Edge([\d]*)\/([^\s]+)/gi)) {
	        outputer = 'Microsoft';
	    } else if (r = e.match(/Maxthon([\d]*)\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = 'Maxthon';
	    } else if (r = e.match(/BIDUBrowser([\d]*)\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = '百度浏览器';
	    } else if (r = e.match(/UBrowser([\d]*)\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = 'UCBrowser';
	    } else if (r = e.match(/UCBrowser([\d]*)\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = 'UCBrowser';
	    } else if (r = e.match(/MetaSr/ig)) {
	        outputer = '搜狗浏览器';
	    } else if (r = e.match(/2345Explorer/ig)) {
	        outputer = '2345王牌浏览器';
	    } else if (r = e.match(/2345chrome/ig)) {
	        outputer = '2345加速浏览器';
	    } else if (r = e.match(/LBBROWSER/ig)) {
	        outputer = '猎豹安全浏览器';
	    } else if (r = e.match(/MicroMessenger\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = '微信';
	    } else if (r = e.match(/QQBrowser\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = 'QQ浏览器';
	    } else if (r = e.match(/QQ\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = 'QQ浏览器';
	    } else if (r = e.match(/MiuiBrowser\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = 'MIUI浏览器';
	    } else if (r = e.match(/Chrome([\d]*)\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = 'Chrome';
	    } else if (r = e.match(/safari\/([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = 'Apple Safari';
	    } else if (r = e.match(/Opera[\s|\/]([^\s]+)/ig)) {
	        var r1 = r[0].split("/");
	        outputer = 'Opera';
	    } else if (r = e.match(/Trident\/7.0/gi)) {
	        outputer = 'Internet Explorer 11';
	    } else if (r = e.match(/MSIE\s([^\s|;]+)/gi)) {
	        outputer = 'Internet Explorer';
	    } else {
	        outputer = '其它浏览器';
	    }
	    return outputer;
	}

	function os() {
	    var os = '';
	    if (e.match(/win/ig)) {
	        if (e.match(/nt 5.1/ig)) {
	            os = 'Windows XP';
	        } else if (e.match(/nt 6.1/ig)) {
	            os = 'Windows 7'
	        } else if (e.match(/nt 6.2/ig)) {
	            os = 'Windows 8'
	        } else if (e.match(/nt 6.3/ig)) {
	            os = 'Windows 8.1'
	        } else if (e.match(/nt 10.0/ig)) {
	            os = 'Windows 10'
	        } else if (e.match(/nt 6.0/ig)) {
	            os = 'Windows Vista'
	        } else if (e.match(/nt 5/ig)) {
	            os = 'Windows 2000'
	        } else {
	            os = 'Windows'
	        }
	    } else if (e.match(/android/ig)) {
	        os = 'Android'
	    } else if (e.match(/ubuntu/ig)) {
	        os = 'Ubuntu'
	    } else if (e.match(/linux/ig)) {
	        os = 'Linux'
	    } else if (e.match(/mac/ig)) {
	        os = 'Mac OS X'
	    } else if (e.match(/unix/ig)) {
	        os = 'Unix'
	    } else if (e.match(/symbian/ig)) {
	        os = 'Nokia SymbianOS'
	    } else {
	        os = '其它操作系统'
	    }
	    return os;
	}
	
})
.controller("enteringCtrl", function($scope, $http, $rootScope, Upload){
	
	//多文件上传
    //提交
    $scope.sigleUpload = function() {

		var pub_date = new Date().getTime();
		var pub_table = $("#pub_table")[0].value;
		var pub_title = $("#pub_title")[0].value;
		var pub_detail = $("#pub_detail")[0].value;
		if(!$("#pub_title")[0].value 
		|| !$("#pub_detail")[0].value 
		|| $("#pub_title")[0].value == " " 
		|| $("#pub_detail")[0].value == " "){
			alert("请输入题目和解答！");
			event.preventDefault();
			return ;
		} else if($scope.data) {
			$("#progress")[0].style.display = "block";
			$http({url:"php/Entering.php", method:"get", params:{"table":pub_table, "title":pub_title, "detail":pub_detail, "date":pub_date, "url":"php/upload/"+$scope.data.file.name}}).then(function(data){
			
				if(data.data == 1){
					alert("提交成功！");
					clear();
				} else {
					alert("错误："+data.data);
					clear();
				}
			});
			$scope.upload($scope.data.file);
		} else {
			$("#progress")[0].style.display = "block";
			$http({url:"php/Entering.php", method:"get", params:{"table":pub_table, "title":pub_title, "detail":pub_detail, "date":pub_date, "url":"php/upload/"+$scope.data.file.name}}).then(function(data){
			
				if(data.data == 1){
					alert("提交成功！");
					clear();
				} else {
					alert("错误："+data.data);
					clear();
				}		
			});
		}
    };

    $scope.upload = function(file) {

        Upload.upload({
            //服务端接收
            url: 'php/fileupload.php',
            //上传的同时带的参数
            file: file
        }).progress(function(evt) {
            //进度条
            $scope.progress = parseInt(200.0 * evt.loaded / evt.total);
        }).error(function (data, status, headers, config) {
            //上传失败
            alert("图片上传失败！");
        })
    };
    
    $scope.$watch("progress", function() {
    
    	$(".inner-bar")[0].style.width = $scope.progress + "px";
    
    });
    
    function clear(){
    	$("#progress")[0].style.display = "none";
		$("#pub_title")[0].value = "";
		$("#pub_detail")[0].value = "";
		$("#pub_table option[value='jo_html']").attr("selected",true);
		if($scope.data){
			$scope.data.file = "";
		}
    }
})