-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 03 月 15 日 13:35
-- 服务器版本: 5.5.54
-- PHP 版本: 5.6.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test`
--
CREATE DATABASE `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `time` mediumtext,
  `ms_title` varchar(80) CHARACTER SET utf8 NOT NULL,
  `comm_like` int(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `browser` varchar(20) NOT NULL,
  `sys` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=251 ;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `comment`, `time`, `ms_title`, `comm_like`, `ip`, `browser`, `sys`) VALUES
(232, '我珂', '1489497100799', '呃。。。', 2, '118.212.217.108 | ', 'Chrome', 'Android'),
(233, '厉害了！！', '1489498236218', '哈哈哈哈哈哈哈哈哈', 21, '118.212.217.108 | ', 'Chrome', 'Android'),
(234, '交个朋友吧！', '1489499975557', '哈哈哈哈哈哈哈哈哈', 20, '171.34.223.52 | ', 'Chrome', 'Android'),
(235, '厉害了！！！', '1489500205737', '哈哈哈哈哈哈哈哈哈', 0, '171.34.223.52 | ', 'UCBrowser', 'Windows 7'),
(236, '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '1489500273106', '哈哈哈哈哈哈哈哈哈', 2, '171.34.223.9 | ', 'Apple Safari', 'Mac OS X'),
(237, '奋斗罗', '1489500441834', '哈哈哈哈哈哈哈哈哈', 2, '171.34.223.52 | ', 'Mozilla FireFox', 'Windows 7'),
(238, '?', '1489500441834', '???????????????????????????', 0, '171.34.223.52 | ', 'Mozilla FireFox', 'Windows 7'),
(239, '我是来蹭经验的', '1489501628317', '哈哈哈哈哈哈哈哈哈', 0, '171.34.223.52 | ', 'Internet Explorer', 'Windows 7'),
(240, '我就是来蹭经验的！', '1489501674845', '哈哈哈哈哈哈哈哈哈', 0, '171.34.223.52 | ', 'Internet Explorer', 'Windows 7'),
(241, '啊哈？', '1489501695313', '哈哈哈哈哈哈哈哈哈', 0, '171.34.223.52 | ', 'Mozilla FireFox', 'Windows 7'),
(242, '?????????', '1489501695313', '???????????????????????????', 0, '171.34.223.52 | ', 'Mozilla FireFox', 'Windows 7'),
(243, '这下正常了？', '1489501961773', '哈哈哈哈哈哈哈哈哈', 1, '171.34.223.52 | ', 'Internet Explorer', 'Windows 7'),
(244, '我这次在给大家演示', '1489504612607', '哈哈哈哈哈哈哈哈哈', 6, '171.34.223.52 | ', 'Chrome', 'Android'),
(245, '来凑个数', '1489508541518', '呃。。。', 3, '171.34.223.52 | ', 'Chrome', 'Android'),
(246, '这肯定是按点赞顺序的咯', '1489508555271', '呃。。。', 0, '171.34.223.52 | ', 'Chrome', 'Android'),
(247, 'hhhhhh', '1489511339682', '哈哈哈哈哈哈哈哈哈', 0, '171.34.223.52 | ', 'Apple Safari', 'Mac OS X'),
(248, '评论一下', '1489543173558', '请解释变量声明提升。', 0, '220.175.138.28 | ', 'Chrome', 'Android'),
(249, '厉害了！', '1489543771894', '录入题目', 1, '220.175.138.28 | ', 'Chrome', 'Android'),
(250, '继续完善', '1489553798090', '请罗列出你所知道的display属性的全部值', 3, '223.104.10.214 | ', 'Chrome', 'Android');

-- --------------------------------------------------------

--
-- 表的结构 `jo_ajax`
--

CREATE TABLE IF NOT EXISTS `jo_ajax` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Detailed` text NOT NULL,
  `VALUE` int(10) NOT NULL,
  `Comment` text NOT NULL,
  `Reading` int(11) NOT NULL,
  `Like` int(11) NOT NULL,
  `Collect` int(11) NOT NULL,
  `Level` varchar(1) NOT NULL,
  `Favorite` int(11) NOT NULL,
  `comm_num` int(11) NOT NULL,
  `img_url` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `jo_ajax`
--

INSERT INTO `jo_ajax` (`ID`, `Title`, `Detailed`, `VALUE`, `Comment`, `Reading`, `Like`, `Collect`, `Level`, `Favorite`, `comm_num`, `img_url`) VALUES
(1, '什么是AJAX，为什么要使用Ajax（请谈一下你对Ajax的认识', '什么是ajax：<br/>\r\nAJAX是“Asynchronous JavaScript and XML”的缩写。他是指一种创建交互式网页应用的网页开发技术。<br/>\r\nAjax包含下列技术：<br/>\r\n基于web标准（standards-basedpresentation）XHTML+CSS的表示；<br/>\r\n使用 DOM（Document ObjectModel）进行动态显示及交互；<br/>\r\n使用 XML 和 XSLT 进行数据交换及相关操作；<br/>\r\n使用 XMLHttpRequest 进行异步数据查询、检索；<br/>\r\n使用 JavaScript 将所有的东西绑定在一起。', 0, '', 114, 0, 0, '1', 65, 0, ''),
(2, '为什么要用ajax：', 'Ajax应用程序的优势在于：<br/>\r\n1. 通过异步模式，提升了用户体验<br/>\r\n2. 优化了浏览器和服务器之间的传输，减少不必要的数据往返，减少了带宽占用<br/>\r\n3. Ajax引擎在客户端运行，承担了一部分本来由服务器承担的工作，从而减少了大用户量下的服务器负载。<br/>\r\n', 0, '', 54, 0, 0, '1', 0, 0, ''),
(3, 'AJAX最大的特点是什么。<br/>\r\n', 'Ajax可以实现动态不刷新（局部刷新）<br/>\r\n就是能在不更新整个页面的前提下维护数据。这使得Web应用程序更为迅捷地回应用户动作，并避免了在网络上发送那些没有改变过的信息。', 0, '', 26, 0, 0, '2', 59, 0, ''),
(4, '请介绍一下XMLhttprequest对象。', 'Ajax的核心是JavaScript对象XmlHttpRequest。该对象在Internet Explorer 5中首次引入，它是一种支持异步请求的技术。简而言之，XmlHttpRequest使您可以使用JavaScript向服务器提出请求并处理响应，而不阻塞用户。通过XMLHttpRequest对象，Web开发人员可以在页面加载以后进行页面的局部更新。', 0, '', 34, 0, 0, '2', 0, 0, ''),
(5, 'AJAX技术体系的组成部分有哪些。', 'HTML，css，dom，xml，xmlHttpRequest，javascript', 0, '', 29, 0, 0, '1', 0, 0, ''),
(6, 'AJAX应用和传统Web应用有什么不同', '在传统的Javascript编程中，如果想得到服务器端数据库或文件上的信息，或者发送客户端信息到服务器，需要建立一个HTML form然后GET或者POST数据到服务器端。用户需要点击”Submit”按钮来发送或者接受数据信息，然后等待服务器响应请求，页面重新加载。<br/>\r\n因为服务器每次都会返回一个新的页面， 所以传统的web应用有可能很慢而且用户交互不友好。<br/>\r\n使用AJAX技术， 就可以使Javascript通过XMLHttpRequest对象直接与服务器进行交互。<br/>\r\n通过HTTP Request， 一个web页面可以发送一个请求到web服务器并且接受web服务器返回的信息(不用重新加载页面)，展示给用户的还是通一个页面，用户感觉页面刷新，也看不到到Javascript后台进行的发送请求和接受响应。', 0, '', 12, 0, 0, '3', 0, 0, ''),
(7, 'AJAX请求总共有多少种CALLBACK。', 'Ajax请求总共有八种Callback<br/>\r\nonSuccess<br/>\r\nonFailure<br/>\r\nonUninitialized<br/>\r\nonLoading<br/>\r\nonLoaded<br/>\r\nonInteractive<br/>\r\nonComplete<br/>\r\nonException<br/>', 0, '', 6, 0, 0, '2', 0, 0, ''),
(8, 'Ajax和javascript的区别。', 'javascript是一种在浏览器端执行的脚本语言，Ajax是一种创建交互式网页应用的开发技术 ，它是利用了一系列相关的技术其中就包括javascript。<br/>\r\nJavascript是由网景公司开发的一种脚本语言，它和sun公司的java语言是没有任何关系的，它们相似的名称只是一种行销策略。<br/>\r\n在一般的web开发中，javascript是在浏览器端执行的，我们可以用javascript控制浏览器的行为和内容。<br/>\r\n在 Ajax应用中信息是如何在浏览器和服务器之间传递的通过XML数据或者字符串', 0, '', 5, 0, 0, '2', 0, 0, ''),
(9, '在浏览器端如何得到服务器端响应的XML数据。', 'XMLHttpRequest对象的responseXMl属性', 0, '', 5, 0, 0, '2', 0, 0, ''),
(10, 'XMLHttpRequest对象在IE和Firefox中创建方式有没有不同。', '有，IE中通过new ActiveXObject()得到，Firefox中通过newXMLHttpRequest()得到', 0, '', 4, 0, 0, '3', 0, 0, ''),
(11, '介绍一下XMLHttpRequest对象的常用方法和属性。', 'open(“method”,”URL”) 建立对服务器的调用，第一个参数是HTTP请求    方式可以为GET，POST或任何服务器所支持的您想调用的方式。<br/>\r\n 第二个参数是请求页面的URL。<br/>\r\n    send()方法，发送具体请求<br/>\r\n    abort()方法，停止当前请求<br/>\r\n    readyState属性   请求的状态 有5个可取值0=未初始化 ，1=正在加载<br/>\r\n    2=以加载，3=交互中，4=完成<br/>\r\n    responseText 属性  服务器的响应，表示为一个串<br/>\r\n    reponseXML 属性 服务器的响应，表示为XML<br/>\r\n    status   服务器的HTTP状态码，200对应ok  400对应not found<br/>', 0, '', 4, 0, 0, '2', 0, 0, ''),
(12, '如果熟悉某种ajax框架，他可能会问到怎样在程序中使用这种框架', 'DWR框架介绍<br/>\r\n    DWR(DirectWeb Remoting)是一个WEB远程调用框架.利用这个框架可以让AJAX开发变得很简单.利用DWR可以在客户端利用JavaScript直接调用服务端的Java方法并返回值给JavaScript就好像直接本地客户端调用一样(DWR根据Java类来动态生成JavaScrip代码).<br/>\r\n   DWR的实现原理是通过反射，将java翻译成javascript，然后利用回调机制，从而实现了javascript调用Java代码', 0, '', 6, 0, 0, '3', 0, 0, ''),
(13, '介绍一下Prototype的$()函数，$F()函数，$A()函数都是什么作用', '$() 方法是在DOM中使用过于频繁的document.getElementById() 方法的一个便利的简写，就像这个DOM方法一样，这个方法返回参数传入的id的那个元素。<br/>\r\n$F()函数是另一个大收欢迎的“快捷键”，它能用于返回任何表单输入控件的值，比如textbox,drop-down list。这个方法也能用元素id或元素本身做为参数。<br/>\r\n$A()函数能把它接收到的单个的参数转换成一个Array对象。', 0, '', 6, 0, 0, '1', 0, 0, ''),
(14, 'AJAX的全称是什么？ 介绍一下AJAX？', 'AJAX的全称是Asynchronous JavaScript And XML.<br/>\r\nAJAX是2005年由Google发起并流行起来的编程方法， AJAX不是一个新的编程语言，但是它是一个使用已有标准的新的编程技术。\r\n使用AJAX可以创建更好，更快，更用户界面友好的Web应用。<br/>\r\nAJAX技术基于Javascript和HTTP Request.', 0, '', 5, 0, 0, '1', 0, 0, ''),
(15, 'Ajax主要包含了哪些技术？', 'Ajax（Asynchronous JavaScript + XML）的定义<br/>\r\n基于web标准（standards-based presentation）XHTML+CSS的表示；<br/>\r\n使用 DOM（Document Object Model）进行动态显示及交互；<br/>\r\n使用 XML 和 XSLT 进行数据交换及相关操作；<br/>\r\n使用XMLHttpRequest 进行异步数据查询、检索；<br/>\r\n使用 JavaScript 将所有的东西绑定在一起。英文参见Ajax的提出者Jesse James Garrett的原文,原文题目(Ajax: A New Approach to Web Applications)。<br/>\r\n类似于DHTML或LAMP，AJAX不是指一种单一的技术，而是有机地利用了一系列相关的技术。事实上，一些基于AJAX的“派生/合成”式（derivative/composite）的技术正在出现，如“AFLAX”。<br/>\r\nAJAX的应用使用支持以上技术的web浏览器作为运行平台。这些浏览器目前包括：<br/>Mozilla、Firefox、Internet Explorer、Opera、Konqueror及Safari。但是Opera不支持XSL格式对象，也不支持XSLT。', 0, '', 7, 0, 0, '3', 0, 0, ''),
(16, 'AJAX都有哪些优点和缺点？', '1、最大的一点是页面无刷新，用户的体验非常好。<br/>\r\n2、使用异步方式与服务器通信，具有更加迅速的响应能力。<br/>\r\n3、可以把以前一些服务器负担的工作转嫁到客户端，利用客户端闲置的能力来处理，减轻服务器和带宽的负担，节约空间和宽带租用成本。并且减轻服务器的负担，ajax的原则是“按需取数据”，可以最大程度的减少冗余请求，和响应对服务器造成的负担。<br/>\r\n4、基于标准化的并被广泛支持的技术，不需要下载插件或者小程序。<br/>\r\najax的缺点<br/>\r\n1、ajax不支持浏览器back按钮。<br/>\r\n2、安全问题 AJAX暴露了与服务器交互的细节。<br/>\r\n3、对搜索引擎的支持比较弱。<br/>\r\n4、破坏了程序的异常机制。<br/>\r\n5、不容易调试。<br/>', 0, '', 9, 0, 0, '3', 4, 1, ''),
(18, '冬瓜傻逼', '就会发觉是否看见说的话的', 0, '', 2, 0, 0, '', 0, 0, 'php/upload/de.png'),
(19, '冬瓜大傻逼', 'fdsagkdfshkhljdfgl', 0, '', 3, 0, 0, '', 0, 0, 'php/upload/album-hc.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `jo_aspnet`
--

CREATE TABLE IF NOT EXISTS `jo_aspnet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Detailed` text NOT NULL,
  `VALUE` int(10) NOT NULL,
  `Comment` text NOT NULL,
  `Reading` int(11) NOT NULL,
  `Like` int(11) NOT NULL,
  `Collect` int(11) NOT NULL,
  `Level` varchar(1) NOT NULL,
  `Favorite` int(11) NOT NULL,
  `comm_num` int(11) NOT NULL,
  `img_url` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `jo_aspnet`
--

INSERT INTO `jo_aspnet` (`ID`, `Title`, `Detailed`, `VALUE`, `Comment`, `Reading`, `Like`, `Collect`, `Level`, `Favorite`, `comm_num`, `img_url`) VALUES
(1, '简述javascript中的“=、==、===”的区别？', '=赋值<br/>\r\n\r\n==比较是否一般相等   "3"==3 //会做类型的隐式转换，true<br/>\r\n\r\n===比较是否严格相等 "3"===3 //先比较类型,再进行值比较，false <br/>', 0, '', 2, 0, 0, '1', 0, 0, ''),
(2, '看下列代码输出为何？解释原因', 'var a = null;<br/>\r\nalert(typeof a); <br/>\r\nvar b;<br/>\r\nalert(typeof b);<br/>\r\nalert(c);<br/>\r\n\r\na为null，也是一个对象，所以typeof(a)为object.<br/>\r\n\r\nb只有声明没有初始化，因此typeof(b)为undefined.<br/>\r\n\r\nc没有定义，因此alert(c)会出现error.', 0, '', 0, 0, 0, '2', 0, 0, ''),
(3, '编写javascript代码实现把两个数组合并，并删除第二个元素。', '合并js数组用concat方法，array1.concat(array2)。<br/>\r\n\r\n删除元素用splice方法，splice(1,1)，函数原型splice(index,count)，指从数组索引1处开始删除1个元素，即删除第二个元素。', 0, '', 0, 0, 0, '3', 0, 0, ''),
(4, '简述javascript的作用域和闭包', 'js变量的作用域是指：函数内定义的局部变量只在此函数内有效，而全局变量可以全局有效。<br/>\r\n\r\n闭包的作用就在于能够改变局部变量的作用域，将值保存下来，但是如果使用不当会造成无法回收变量，引起性能问题，甚至崩溃。', 0, '', 0, 0, 0, '2', 0, 0, ''),
(5, '列举你用过的javascript框架，并简述它们的优缺点', 'js框架：jQuery EasyUI、ExtJS、Bootstrap、AngularJS等等。<br/>\r\n\r\njQuery EasyUI：轻量级web前端ui开发框架，尤其适合MIS系统的界面开发，能够重用jquery插件。<br/>\r\n\r\nExtJS：统一的前端UI开发框架，学习难度中等。尤其适合MIS系统的界面开发，开发文档和例子代码都比较完整。缺点是大量的js脚本，降低了运行速度。<br/>\r\n\r\nBootstrap：响应式网站开发框架，优点是降低了后端开发人员开发前端页面的难度，统一了界面风格，缺点是界面风格比较单一。<br/>\r\n\r\nAngularJS：将java后端的优秀特性引入到了js前端，大而全的框架。缺点是学习曲线高，Angular2几乎重写。', 0, '', 1, 0, 0, '3', 0, 0, ''),
(6, '简述a.Equals(b)和a==b的区别？', 'Equals方法比较内容（值是否相等），==比较引用地址（是否指向同一个对象）。', 0, '', 1, 0, 0, '2', 0, 0, ''),
(7, 'ASP.NET的Application、Session、Cookie、ViewState和Cache等变量的区别是什么？', 'Application 应用程序级别<br/>\r\n\r\nSession 会话级别用户跟踪<br/>\r\n\r\nCookie 客户端存储少量信息<br/>\r\n\r\nViewState 保持ASP.NET控件状态的机制<br/>\r\n\r\nCache 缓存', 0, '', 0, 0, 0, '3', 0, 0, ''),
(8, '列举ASP.NET MVC ActionResult的返回值有几种类型？', '主要有View（视图）、PartialView（部分视图）、Content（内容）、Json（Json字符串）、Javascript（js脚本）、File（文件）等几种类型。', 0, '', 0, 0, 0, '2', 0, 0, ''),
(9, '简述ASP.NET WebApi相对于ASP.NET MVC的优点？', 'WebApi消息处理管道独立于ASP.NET平台，支持多种寄宿方式。', 0, '', 0, 0, 0, '2', 0, 0, ''),
(10, '简述ASP.NET请求的生命周期？', '用户从 Web 服务器请求应用程序资源->ASP.NET 接收对应用程序的第一个请求->为每个请求创建 ASP.NET 核心对象->将HttpApplication对象分配给请求->由HttpApplication 管线处理请求<br/>\r\n\r\nrefer: https://msdn.microsoft.com/zh-cn/library/ms178473(v=vs.100).aspx', 0, '', 0, 0, 0, '3', 0, 0, ''),
(11, 'ORM中的延迟加载与直接加载有什么异同？', '延迟加载（Lazy Loading）只在真正需要进行数据操作的时候再进行加载数据，可以减少不必要的开销。', 0, '', 0, 0, 0, '3', 0, 0, ''),
(12, '、简述Func<T>与Action<T>的区别？', 'Func<T>是有返回值的委托，Action<T>是没有返回值的委托。', 0, '', 0, 0, 0, '1', 0, 0, ''),
(13, '开启一个异步线程的几种方式？多线程编程时的注意事项？', 'APM（Asynchrocous Programming Model，比如：BeginXXX、IAsyncResult）、EAP（Event-Based Asynchronous Pattern，比如：DownloadContentAsync）、TPL（Task Parallel Library，比如：Task.Factory.StartNew）、async/await。<br/>\r\n\r\n线程饿死、线程死锁、线程同步、线程安全。', 0, '', 0, 0, 0, '2', 0, 0, ''),
(14, '简述Linq是什么，以及Linq的原理？并编写一个Linq to Object的示例代码', 'Linq（Language Integrated Query），其中Linq to Object是对Enumberable扩展方法的调用，在执行时会转化为Lambda然后执行。<br/>\r\n\r\n示例代码：Linq分组统计<br/>\r\nvar result = from p in list.AsEnumerable() <br/>\r\n             group p by p.Province into g <br/>\r\n             select new <br/>\r\n             { <br/>\r\n                 g.Key, <br/>\r\n                 SumValue = g.Sum(p => p.Value)<br/> \r\n             }; <br/>\r\nresult.ToList().ForEach((i) => <br/>\r\n{ <br/>\r\n    Console.WriteLine(i.Key + ":" + i.SumValue); <br/>\r\n});', 0, '', 0, 0, 0, '3', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `jo_css3`
--

CREATE TABLE IF NOT EXISTS `jo_css3` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Detailed` text NOT NULL,
  `VALUE` int(10) NOT NULL,
  `Comment` text NOT NULL,
  `Reading` int(11) NOT NULL,
  `Like` int(11) NOT NULL,
  `Collect` int(11) NOT NULL,
  `Level` varchar(1) NOT NULL,
  `Favorite` int(11) NOT NULL,
  `comm_num` int(11) NOT NULL,
  `img_url` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `jo_css3`
--

INSERT INTO `jo_css3` (`ID`, `Title`, `Detailed`, `VALUE`, `Comment`, `Reading`, `Like`, `Collect`, `Level`, `Favorite`, `comm_num`, `img_url`) VALUES
(1, '描述下“reset”CSS文件的作用和使用它的好处。', '因为浏览器的品种很多，每个浏览器的默认样式也是不同的，所以定义一个css reset可以使各浏览器的默认样式统一。', 0, '', 33, 0, 0, '1', 16, 0, ''),
(2, '解释下浮动和它的工作原理。', '关于浮动我们需要了解，浮动的框可以向左或向右移动，直到它的外边缘碰到包含框或另一个浮动框的边框为止。要想使元素浮动，必须为元素设置一个宽度（width）。虽然浮动元素不是文档流之中，但是它浮动后所处的位置依然是在浮动之前的水平方向上。由于浮动框不在文档的普通流中，所以文档的普通流中的块框表现得就像浮动框不存在一样，下面的元素填补原来的位置。有些元素会在浮动元素的下方，但是这些元素的内容并不一定会被浮动的元素所遮盖，对内联元素进行定位时，这些元素会考虑浮动元素的边界，会围绕着浮动元素放置。也可以把浮动元素想象成是被块元素忽略的元素，而内联元素会关注浮动元素的。', 0, '', 18, 0, 0, '1', 0, 0, ''),
(3, '列举不同的清除浮动的技巧，并指出它们各自适用的使用场景。', '使用空标签清除浮动。这种方法是在所有浮动标签后面添加一个空标签定义css clear:both.弊端就是增加了无意义标签。<br/>\r\n\r\n使用overflow。给包含浮动元素的父标签添加css属性overflow:auto;zoom:1;zoom:1用于兼容IE6。<br/>\r\n\r\n使用after伪对象清除浮动。该方法只适用于非IE浏览器。具体写法可参照以下示例。使用中需注意以下几点。一、该方法中必须为需要清除浮 动元素的伪对象中设置height:0，否则该元素会比实际高出若干像素；二、content属性是必须的，但其值可以为空，content属性的值设 为”.”，空亦是可以的。<br/>\r\n\r\n浮动外部元素<br/>\r\n\r\n此三种方法各有利弊，使用时应择优选择，比较之下第二种方法更为可取。', 0, '', 10, 0, 0, '1', 5, 0, ''),
(4, '解释下CSS sprites，以及你要如何在页面或网站中使用它。', 'CSS Sprites其实就是把网页中一些背景图片整合到一张图片文件中，再利用CSS的“background- image”，“background-repeat”，“background-position”的组合进行背景定位，background- position可以用数字能精确的定位出背景图片的位置。', 0, '', 4, 0, 0, '2', 0, 0, ''),
(5, '讨论CSS hacks，条件引用或者其他。', '各个浏览器都认识，这里给firefox用；<br/>\r\n\r\nbackground-color:red\\9;\\9所有的ie浏览器可识别；<br/>\r\n\r\nbackground-color:yellow\\0;\\0是留给ie8的+background-color:pink;+ie7定了；<br/>\r\n\r\n_background-color:orange;_专门留给神奇的ie6；:root#test{background-color:purple\\9;}:root是给ie9的，<br/>\r\n\r\n@media all and(min-width:0px){#test{background-color:black\\0;}}这个是老是跟ie抢着认\\0的神奇的opera，必须加个\\0,不然firefox，chrome，safari也都认识。<br/>\r\n\r\n@media screen and(-webkit-min-device-pixel-ratio:0){#test{background-color:gray;}}最后这个是浏览器新贵chrome和safari的。<br/>', 0, '', 2, 0, 0, '2', 0, 0, ''),
(6, '使用CSS预处理器的优缺点有哪些？', 'LESS&SassLESS是受Sass启发而开发的工具，它列出了如下开发的理由：<br/>\r\n\r\n“为什么要开发一个Sass的替代品呢？原因很简单：首先是语法。Sass的一个关键特性是缩进式的语法，这种语法可以产生柱式外观的代码。但是你需要 花费时间学习一门新的语法以及重新构建你现在的样式表。LESS给CSS带来了很多特性，使得LESS能够和CSS无缝地紧密结合在一起。因此，你可以平 滑地由CSS迁移到LESS，如果你只是对使用变量或者操作感兴趣的话，你不需要学习一整门全新的语言。”<br/>\r\n\r\nStylusStylus相对前两者较新，可以看官方文档介绍的功能。<br/>\r\n\r\n来自NodeJS社区，所以和NodeJS走得很近，与JavaScript联系非常紧密。还有专门JavaScript API：http://learnboost.github.io/stylus/docs/js.html<br/>\r\n支持Ruby之类等等框架；<br/>\r\n更多更强大的支持和功能总结：Sass看起来在提供的特性上占有优势，但是LESS能够让开发者平滑地从现存CSS文件过渡到LESS，而不需要像Sass那样需要将CSS文件转换成Sass格式。Stylus功能上更为强壮，和js联系更加紧密。', 0, '', 2, 0, 0, '3', 0, 0, ''),
(7, '请解释一下*{box-sizing:border-box;}的作用,并且说明使用它有什么好处？', '说到IE的bug，在IE6以前的版本中，IE对盒模型的解析出现一些问题，跟其它浏览器不同，将border与padding都包含在width之内。而另外一些浏览器则与它相反，是不包括border和padding的。<br/>\r\n\r\n在我们开发的过程中会发现，有时候，如果对页面中的大区域进行设置时，将border、padding计算到width和height之内，反而更 灵活。但W3C的CSS2.1规范却规定了他们并不能被包含其中。考虑到这个问题，css3中引入了一个新的属性：box-sizing，它具有 “content-box”和”border-box“两个值。<br/>\r\n\r\nbox-sizing:content-box<br/>\r\n当我们设置box-sizing:content-box;时，浏览器对盒模型的解释遵从我们之前认识到的W3C标准，当它定义width和height时，它的宽度不包括border和padding。<br/>\r\n\r\nbox-sizing:border-box<br/>\r\n当我们设置box-sizing:border-box;时，浏览器对盒模型的解释与IE6之前的版本相同，当它定义width和height 时，border和padding则是被包含在宽高之内的。内容的宽和高可以通过定义的“width”和“height”减去相应方向的 “padding”和“border”的宽度得到。内容的宽和高必须保证不能为负，必要时将自动增大该元素border box的尺寸以使其内容的宽或高 最小为0。', 0, '', 8, 0, 0, '2', 0, 0, ''),
(8, '请罗列出你所知道的display属性的全部值', '<img src="http://images2015.cnblogs.com/blog/716683/201510/716683-20151013142822460-1264753317.jpg">', 0, '', 18, 0, 0, '2', 2, 6, '');

-- --------------------------------------------------------

--
-- 表的结构 `jo_html5`
--

CREATE TABLE IF NOT EXISTS `jo_html5` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Detailed` text NOT NULL,
  `VALUE` int(10) NOT NULL,
  `Comment` text NOT NULL,
  `Reading` int(11) NOT NULL,
  `Like` int(11) NOT NULL,
  `Collect` int(11) NOT NULL,
  `Level` varchar(1) NOT NULL,
  `Favorite` int(11) NOT NULL,
  `comm_num` int(11) NOT NULL,
  `img_url` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- 转存表中的数据 `jo_html5`
--

INSERT INTO `jo_html5` (`ID`, `Title`, `Detailed`, `VALUE`, `Comment`, `Reading`, `Like`, `Collect`, `Level`, `Favorite`, `comm_num`, `img_url`) VALUES
(1, 'doctype（文档类型）的作用是什么？你知道多少种文档类型？', '此标签可告知浏览器文档使用哪种HTML或XHTML规范。该标签可声明三\r\n种DTD类型，分别表示严格版本、过渡版本以及基于框架的HTML文档。 HTML\r\n4.01规定了三种文档类型：Strict、Transitional以及Frameset。 XHTML 1.0规\r\n定了三种XML文档类型：Strict、Transitional以及Frameset。Standards（标\r\n准）模式（也就是严格呈现模式）用于呈现遵循最新标准的网页，而Quirks（包\r\n容）模式（也就是松散呈现模式或者兼容模式）用于呈现为传统浏览器而设计的\r\n网页。', 0, '', 92, 0, 0, '1', 37, 2, ''),
(2, '如果页面使用 ‘application/xhtml+xml’ 会有什么问题吗？', '一些老的浏览器不支持，实际上，任何最新的浏览器都将支持application/xhtml+xml媒体类型。大多数浏览器也接受以application/xml发送的XHTML文档。', 0, '', 70, 0, 0, '1', 26, 0, ''),
(3, 'HTML和XHTML有什么区别？', 'XHTML 与 HTML 4.01 标准没有太多的不同， XHTML1.0 是 XML 风格的 HTML4.01 ,标签的规范更加严格 , W3C一直是推崇XHTML这种严格类型的语法, 但是 XHTML 从 1.0 升级到了 1.1 以后就夭折了。', 0, '', 22, 0, 0, '1', 0, 0, ''),
(4, 'html和xhtml最主要的不同：', 'XHTML 元素必须被正确地嵌套。<br/>\r\n错误：&ltHead&gt&lt/Head&gt&ltBody&gt&lt/Body&gt<br/>\r\n正确：&lthead&gt&lt/head&gt&ltbody&gt&lt/body&gt<br/>\r\nXHTML 元素必须被关闭。<br/>\r\n\r\n错误：&ltp&gtxxxx<br/>\r\n正确: &ltp&gtxxxx&lt/p&gt<br/>\r\n标签名必须用小写字母。<br/>\r\n\r\n错误：&ltDiv&gt&lt/diV&gt<br/>\r\n正确：&ltdiv&gt&lt/div&gt<br/>\r\nXHTML 文档必须拥有根元素。<br/>\r\n\r\n其他不允许使用target=”_blank”<br/>\r\n\r\n从XHTML 1.1开始全面禁止target属性，如果想要有开新窗口的功能，就必须改写为rel=”external”，并搭配JavaScript实现此效果。<br/>\r\n\r\n错误：&lta href="http://blog.mukispace.com" target="_blank"&gtMUKI space&lt/a&gt<br/>\r\n正确：&lta href="http://blog.mukispace.com" rel="external"&gtMUKI space&lt/a&gt', 0, '', 12, 0, 0, '1', 0, 0, ''),
(5, 'doctype（文档类型）的作用是什么？你知道多少种文档类型？\r\n', '此标签可告知浏览器文档使用哪种HTML或XHTML规范。该标签可声明三种DTD类型，分别表示严格版本、过渡版本以及基于框架的HTML文档。<br/>\r\n\r\nHTML 4.01规定了三种文档类型：Strict、Transitional以及Frameset。<br/>\r\n\r\nXHTML 1.0规定了三种XML文档类型：Strict、Transitional以及Frameset。<br/>\r\n\r\nStandards（标准）模式（也就是严格呈现模式）用于呈现遵循最新标准的网页，而Quirks（包容）模式（也就是松散呈现模式或者兼容模式）用于呈现为传统浏览器而设计的网页。<br/>', 0, '', 12, 0, 0, '1', 5, 0, ''),
(6, '浏览器标准模式和怪异模式之间的区别是什么？', 'W3C标准推出以后，浏览器都开始采纳新标准，但存在一个问题就是如何保证旧的网页还能继续浏览，在标准出来以前，很多页面都是根据旧的渲染方法编 写的，如果用的标准来渲染，将导致页面显示异常。为保持浏览器渲染的兼容性，使以前的页面能够正常浏览，浏览器都保留了旧的渲染方法（如：微软的IE）。 这样浏览器渲染上就产生了Quircks mode和Standars mode，两种渲染方法共存在一个浏览器上。IE盒子模型和标准W3C盒子模 型：ie的width包括：padding\\border。标准的width不包括：padding\\border', 0, '', 7, 0, 0, '2', 0, 0, ''),
(7, '使用XHTML的局限有哪些？', 'XHTML 与HTML的区别为：\r\n\r\nXHTML 元素必须被正确地嵌套。<br/>\r\nXHTML 元素必须被关闭。<br/>\r\n标签名必须用小写字母。<br/>\r\nXHTML 文档必须拥有根元素。<br/>\r\n局限：所有的 XHTML 元素都必须被正确地嵌套，XHTML 必须拥有良好的结构，所有的标签必须小写，并且所有的 XHTML 元素必须被关闭。所有的 XHTML 文档必须拥有 DOCTYPE 声明，并且 html、head、title 和 body 元素必须存在。虽然代码更加的优雅，但缺少容错性，不利于快速开发。', 0, '', 6, 0, 0, '2', 0, 0, ''),
(8, 'data-属性的作用是什么？', 'data- 属性用于存储页面或应用程序的私有自定义数据。data- 属性赋予我们在所有 HTML 元素上嵌入自定义 data 属性的能力。存储的（自定义）数据能够被页面的 JavaScript 中利用，以创建更好的用户体验（不进行 Ajax 调用或服务器端数据库查询）。<br/>\r\n\r\ndata-* 属性包括两部分：<br/>\r\n属性名不应该包含任何大写字母，并且在前缀 “data-“ 之后必须有至少一个字符\r\n属性值可以是任意字符串\r\n', 0, '', 3, 0, 0, '3', 0, 0, ''),
(9, '请描述一下cookies，sessionStorage和localStorage的区别？', 'sessionStorage和localStorage是HTML5 Web Storage API提供的，可以方便的在web请求之间保存数 据。有了本地数据，就可以避免数据在浏览器和服务器间不必要地来回传递。sessionStorage、localStorage、cookie都是在浏 览器端存储的数据，其中sessionStorage的概念很特别，引入了一个“浏览器窗口”的概念。sessionStorage是在同源的同窗口（或 tab）中，始终存在的数据。也就是说只要这个浏览器窗口没有关闭，即使刷新页面或进入同源另一页面，数据仍然存在。关闭窗口 后，sessionStorage即被销毁。同时“独立”打开的不同窗口，即使是同一页面，sessionStorage对象也是不同的cookies会 发送到服务器端。其余两个不会。Microsoft指出InternetExplorer8增加cookie限制为每个域名50个，但IE7似乎也允许每 个域名50个cookie。<br/>\r\n\r\nFirefox每个域名cookie限制为50个。<br/>\r\nOpera每个域名cookie限制为30个<br/>。\r\nFirefox和Safari允许cookie多达4097个字节，包括名（name）、值（value）和等号。\r\nOpera允许cookie多达4096个字节，包括：名（name）、值（value）和等号。<br/>\r\nInternetExplorer允许cookie多达4095个字节，包括：名（name）、值（value）和等号。<br/>', 0, '', 7, 0, 0, '3', 0, 0, ''),
(10, '你熟悉SVG样式的书写吗？请详解', 'SVG 指可伸缩矢量图形 (Scalable Vector Graphics)<br/>\r\nSVG 用来定义用于网络的基于矢量的图形<br/>\r\nSVG 使用 XML 格式定义图形<br/>\r\nSVG 图像在放大或改变尺寸的情况下其图形质量不会有所损失<br/>\r\nSVG 是万维网联盟的标准<br/>\r\nSVG 与诸如 DOM 和 XSL 之类的 W3C 标准是一个整体<br/>\r\n\r\n&lt?xml version="1.0" standalone="no"?&gt\r\n      &lt!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"&gt\r\n      &ltsvg width="100%" height="100%" version="1.1" xmlns="http://www.w3.org/2000/svg"&gt\r\n          &ltcircle cx="100" cy="50" r="40" stroke="black" stroke-width="2" fill="red"/&gt\r\n      &lt/svg&gt', 0, '', 5, 0, 0, '3', 0, 0, ''),
(11, '以下关于HTML5的特性描述错误的是（）', '<pre>A.	HTML5会通过XMLHttpRequest2等技术，帮助Web应用和网站在多样化的环境中更快速的工作。\r\nB.	基于SVG、Canvas、WebGL及CSS3的3D功能，可以为用户呈现更加惊人的视觉效果。\r\nC.	基于HTML5开发的网页APP拥有更短的启动时间，更快的联网速度。\r\nD.	html4.0的升级版，原封不动保留了4中的所有功能和标签</pre>\r\n正确答案：D\r\n\r\n', 0, '', 1, 0, 0, '1', 0, 0, ''),
(12, '以下关于HTML5的特性描述错误的是（）', '<pre> \r\nA.	HTML5会通过XMLHttpRequest2等技术，帮助Web应用和网站在多样化的环境中更快速的工作。\r\nB.	基于SVG、Canvas、WebGL及CSS3的3D功能，可以为用户呈现更加惊人的视觉效果。\r\nC.	基于HTML5开发的网页APP拥有更短的启动时间，更快的联网速度。\r\nD.	html4.0的升级版，原封不动保留了4中的所有功能和标签\r\n</pre>\r\n正确答案：D\r\n\r\n', 0, '', 3, 0, 0, '1', 0, 0, ''),
(13, '对HTML5以下描述中错误的是（）', '<pre>\r\nA.	HTML5赋予网页更好的意义和结构\r\nB.	HTML5抛弃了原先简单的css改用更加先进的css3\r\nC.	支持网页端的Audio、Video等多媒体功能， 与网站自带的APPS，摄像头，影音功能相得益彰。\r\nD.	基于HTML5开发的网页APP拥有更短的启动时间，更快的联网速度，这些全得益于HTML5 APP Cache，以及本地存储功能\r\n</pre>\r\n正确答案：B', 0, '', 1, 0, 0, '1', 0, 0, ''),
(14, '以下关于video元素描述错误的是（）', '<pre>\r\nA.	使用video可以通过设置networkState属性来设置当前的网络状态\r\nB.	在video使用过程中可以通过currentSrc来获得播放的多媒体的url\r\nC.	video的buffered属性为只读属性\r\nD.	video的readyState属性可以获得当前播放位置的就绪状态。\r\n</pre>\r\n正确答案：A', 0, '', 1, 0, 0, '2', 0, 0, ''),
(15, '若要在网页中插入样式表style.css,以下用法中，正确的是（ ）。', '<pre>\r\nA.	&lt;Link Src=&quot;http://hovertree.com/texiao/html5/19/css/style.css&quot; type=text/css rel=stylesheet&gt;\r\nB.	&lt;Include href=&quot;http://hovertree.com/texiao/html5/19/css/style.css&quot; type=text/css rel=stylesheet&gt;\r\nC.	&lt;Link href=&quot;http://hovertree.com/texiao/html5/19/css/style.css&quot; type=text/css&gt;\r\nD.	&lt;Link href=&quot;http://hovertree.com/texiao/html5/19/css/style.css&quot; type=text/css rel=stylesheet&gt;\r\n</pre>\r\n正确答案：D', 0, '', 1, 0, 0, '1', 0, 0, ''),
(16, '以下可以在html页面中显示“&lt;”的是（ ）。', '<pre>\r\nA.	It;\r\nB.	&amp;Lt;\r\nC.	&It\r\nD.	&amp;lt;\r\n</pre>', 0, '', 3, 0, 0, '1', 0, 1, ''),
(17, '以下可以实现复选框的是（ ）', '<pre>\r\nA.	&lt;input type=iamge&gt;\r\nB.	&lt;input type=text&gt;\r\nC.	&lt;input type=checkbox&gt;\r\nD.	&lt;input type=submit&gt;\r\n</pre>\r\n正确答案：C', 0, '', 5, 0, 0, '1', 31, 0, ''),
(18, '通过域名的后缀可以看书网站所属的机构性质，后缀为.gov的为（ ）。', '<pre>\r\nA.	政府机构\r\nB.	教育机构\r\nC.	无盈利公益机构\r\nD.	个人应用\r\n</pre>\r\n正确答案：A', 0, '', 12, 0, 0, '2', 0, 1, ''),
(19, '以下关于域名的描述错误的是（ ）。', '<pre>\r\nA.	域名（Domain Name），是由一串用点分隔的名字组成的Internet上某一台计算机或计算机组的名称 \r\nB.	域名只能有字母、数字以及英文中的连词号组成 \r\nC.	域名区分字母的大小写 \r\nD.	对申请的域名长度有一定限制\r\n</pre>\r\n正确答案：C', 0, '', 24, 0, 0, '3', 0, 2, ''),
(20, '使用CSS为多个网页进行相同风格的布局和外观设置时，为了方便对这些网页进行修改，最好使用（ ）。\r\n', '<pre>\r\nA、外联式样式表\r\nB、JAVASCRIPT样式表\r\nC、内联式样式表\r\nD、VBSCRIPT样式表\r\n</pre>\r\n正确答案：A', 0, '', 121, 0, 0, '1', 24, 17, ''),
(76, '厉害了!', '额。。。', 0, '', 2, 0, 0, '', 0, 2, 'php/upload/banner.png'),
(77, '测试一下！', '额额额额额。。', 0, '', 0, 0, 0, '', 0, 0, 'php/upload/logo.png'),
(78, '厉害了！', '厉害了！', 0, '', 3, 0, 0, '', 2, 0, 'php/upload/logo.png'),
(81, '厉害了我的哥！', '这仅仅是一次测试而已。。', 0, '', 8, 0, 0, '', 0, 1, 'php/upload/logo.png'),
(82, '测试。。。', '来了来了', 0, '', 13, 0, 0, '', 3, 2, 'php/upload/2.png'),
(83, '再来一个测试！', '塑料袋开发焦恩俊覅偶尔啊我就覅哦啊耳机', 0, '', 9, 0, 0, '', 3, 1, 'php/upload/1.png'),
(84, '厉害了！我的API！', '啊啊啊啊啊啊啊啊啊啊', 0, '', 5, 0, 0, '', 0, 0, 'php/upload/1489467012293.jpeg'),
(85, '这次怎么样？', '来看看吧！', 0, '', 21, 0, 0, '', 0, 0, 'http://128.1.67.161/interviewee/php/upload/1489467012293.jpeg'),
(86, '呃。。。', '这是什么情况。。。', 0, '', 26, 0, 0, '', 1, 3, 'http://128.1.67.161/interviewee/php/upload/mmexport1488202729221.jpg'),
(87, '哈哈哈哈哈哈哈哈哈', '哈哈哈哈哈哈哈哈哈', 0, '', 73, 0, 0, '', 6, 11, 'http://128.1.67.161/interviewee/php/upload/1487990640381.jpeg'),
(88, '录入题目', '还是一个测试！', 0, '', 9, 0, 0, '', 2, 1, 'php/upload/ChMlWVXK9ciIWTEOAAHe9nwtrn0AAHsGgKT6PQAAd8O963.jpg'),
(89, '测试', '测试', 0, '', 3, 0, 0, '', 0, 0, 'http://128.1.67.161/interviewee/php/upload/1464677233332.jpg'),
(90, 'HTML5是什么？', 'HTML5', 0, '', 6, 0, 0, '', 0, 0, 'http://128.1.67.161/interviewee/php/upload/1465192630567.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `jo_javascript`
--

CREATE TABLE IF NOT EXISTS `jo_javascript` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Detailed` text NOT NULL,
  `VALUE` int(10) NOT NULL,
  `Comment` text NOT NULL,
  `Reading` int(11) NOT NULL,
  `Like` int(11) NOT NULL,
  `Collect` int(11) NOT NULL,
  `Level` varchar(1) NOT NULL,
  `Favorite` int(11) NOT NULL,
  `comm_num` int(11) NOT NULL,
  `img_url` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `jo_javascript`
--

INSERT INTO `jo_javascript` (`ID`, `Title`, `Detailed`, `VALUE`, `Comment`, `Reading`, `Like`, `Collect`, `Level`, `Favorite`, `comm_num`, `img_url`) VALUES
(1, '在js中如何判断当前浏览器正在以何种方式解析？', 'document对象有个属性compatMode,它有两个值：BackCompat对应quirks mode，CSS1Compat对应strict mode。', 0, '', 10, 0, 0, '1', 0, 0, ''),
(2, '解释下JavaScript中this是如何工作的。', 'this永远指向函数运行时所在的对象，而不是函数被创建时所在的对象。匿名函数或不处于任何对象中的函数指向window 。<br/>\r\n\r\n如果是call，apply,with，指定的this是谁，就是谁。<br/>\r\n\r\n普通的函数调用，函数被谁调用，this就是谁。', 0, '', 5, 0, 0, '1', 0, 0, ''),
(3, '解释下原型继承的原理', '以下代码展示了JS引擎如何查找属性：<br/>\r\n\r\nfunction getProperty(obj,prop) {<br/>\r\n    if (obj.hasOwnProperty(prop)) {<br/>\r\n        return obj[prop];<br/>\r\n    } else if (obj.__proto__!==null) {<br/>\r\n        return <br/>getProperty(obj.__proto__,prop);\r\n    } else {<br/>\r\n        return undefined;<br/>\r\n    }<br/>\r\n}<br/>\r\n<img src="http://images.cnitblog.com/blog2015/716683/201504/171011349018292.jpg"  width="600px"/>', 0, '', 4, 0, 0, '3', 0, 0, ''),
(4, '什么是闭包，如何使用它，为什么要使用它？', '包就是能够读取其他函数内部变量的函数。由于在Javascript语言中，只有函数内部的子函数才能读取局部变量，因此可以把闭包简单理解成“定义在一个函数内部的函数”。<br/>\r\n\r\n所以，在本质上，闭包就是将函数内部和函数外部连接起来的一座桥梁。闭包可以用在许多地方。它的最大用处有两个，一个是前面提到的可以读取函数内部的变量，另一个就是让这些变量的值始终保持在内存中。<br/>\r\n\r\n使用闭包的注意点：<br/>\r\n\r\n由于闭包会使得函数中的变量都被保存在内存中，内存消耗很大，所以不能滥用闭包，否则会造成网页的性能问题，在IE中可能导致内存泄露。解决方法是，在退出函数之前，将不使用的局部变量全部删除。<br/>\r\n闭包会在父函数外部，改变父函数内部变量的值。所以，如果你把父函数当作对象（object）使用，把闭包当作它的公用方法（Public Method），把内部变量当作它的私有属性（private value），这时一定要小心，不要随便改变父函数内部变量的值。<br/>\r\n\r\n关于闭包，详细了解请看JavaScript之作用域与闭包详解', 0, '', 5, 0, 0, '2', 0, 0, ''),
(5, '请举出一个匿名函数的典型用例？', '自执行函数，用闭包模拟私有变量、特权函数等。', 0, '', 2, 0, 0, '2', 0, 0, ''),
(6, '请指出JavaScript宿主对象和原生对象的区别？\r\n', '原生对象<br/>\r\n\r\nECMA-262 把本地对象（native object）定义为“独立于宿主环境的 ECMAScript 实现提供的对象”。<br/>\r\n\r\n“本地对象”包含哪些内容：Object、Function、Array、String、Boolean、Number、Date、RegExp、 Error、EvalError、RangeError、ReferenceError、SyntaxError、TypeError、 URIError。<br/>\r\n\r\n由此可以看出，简单来说，本地对象就是 ECMA-262 定义的类（引用类型）。<br/>\r\n\r\n内置对象<br/>\r\n\r\nECMA-262 把内置对象（built-in object）定义为“由 ECMAScript 实现提供的、独立于宿主环境的所有对象，在 ECMAScript 程序开始执行时出现”。这意味着开发者不必明确实例化内置对象，它已被实例化了。<br/>\r\n\r\n同样是“独立于宿主环境”。根据定义我们似乎很难分清“内置对象”与“本地对象”的区别。而 ECMA-262 只定义了两个内置对象，即 Global 和 Math （它们也是本地对象，根据定义，每个内置对象都是本地对象）。如此就可以理解了。内置对象是本地对象的一种。\r\n<br/>\r\n宿主对象<br/>\r\n\r\n何为“宿主对象”？主要在这个“宿主”的概念上，ECMAScript中的“宿主”当然就是我们网页的运行环境，即“操作系统”和“浏览器”。<br/>\r\n\r\n所有非本地对象都是宿主对象（host object），即由 ECMAScript 实现的宿主环境提供的对象。所有的BOM和DOM都是宿主对象。因为其对于不同的“宿主”环境所展示的内容不同。其实说白了就是，ECMAScript官方未定义的对象都属于宿主对象，因为其未定义的对象大多数是自己通过ECMAScript程序创建的对象。\r\n\r\n', 0, '', 3, 0, 0, '3', 0, 0, ''),
(7, 'call和.apply的区别是什么？', 'call方法:<br/>\r\n\r\n语法：call(thisObj，Object)<br/>\r\n定义：调用一个对象的一个方法，以另一个对象替换当前对象。<br/>\r\n说明：call 方法可以用来代替另一个对象调用一个方法。call 方法可将一个函数的对象上下文从初始的上下文改变为由 thisObj 指定的新对象。 如果没有提供 thisObj 参数，那么 Global 对象被用作 thisObj。<br/>\r\napply方法： <br/>\r\n语法：apply(thisObj，[argArray])<br/>\r\n定义：应用某一对象的一个方法，用另一个对象替换当前对象。<br/>\r\n说 明：如果 argArray 不是一个有效的数组或者不是 arguments 对象，那么将导致一个 TypeError。如果没有提供 argArray 和 thisObj 任何一个参数，那么 Global 对象将被用作 thisObj， 并且无法被传递任何参数。<br/>\r\n\r\n对于apply和call两者在作用上是相同的，但两者在参数上有以下区别：<br/>\r\n对于第一个参数意义都一 样，但对第二个参数：apply传入的是一个参数数组，也就是将多个参数组合成为一个数组传入，而call则作为call的参数传入（从第二个参数开 始）。如 func.call(func1,var1,var2,var3)对应的apply写法为：func.apply(func1, [var1,var2,var3])同时使用apply的好处是可以直接将当前函数的arguments对象作为apply的第二个参数传入。', 0, '', 1, 0, 0, '3', 0, 0, ''),
(8, '请解释变量声明提升。', 'var test = function() {<br/>\r\n    console.log(name); // 输出：<br/>undefined<br/>\r\n    var name = "jeri";<br/>\r\n    console.log(name); // 输出：jeri<br/>\r\n}<br/>\r\n\r\ntest();<br/>\r\n上述代码与下述代码等价。<br/>\r\n\r\nvar test = function() {<br/>\r\n    var name;<br/>\r\n    console.log(name); // 输出：<br/>undefined<br/>\r\n    name = "jeri";<br/>\r\n    console.log(name); // 输出：jeri\r\n}<br/>\r\n\r\ntest();<br/>\r\n由以上代码可知，在函数执行时，把变量的声明提升到了函数顶部，而其值定义依然在原来位置。', 0, '', 2, 0, 0, '3', 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `jo_jquery`
--

CREATE TABLE IF NOT EXISTS `jo_jquery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Detailed` text NOT NULL,
  `VALUE` int(10) NOT NULL,
  `Comment` text NOT NULL,
  `Reading` int(11) NOT NULL,
  `Like` int(11) NOT NULL,
  `Collect` int(11) NOT NULL,
  `Level` varchar(1) NOT NULL,
  `Favorite` int(11) NOT NULL,
  `comm_num` int(11) NOT NULL,
  `img_url` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `jo_jquery`
--

INSERT INTO `jo_jquery` (`ID`, `Title`, `Detailed`, `VALUE`, `Comment`, `Reading`, `Like`, `Collect`, `Level`, `Favorite`, `comm_num`, `img_url`) VALUES
(1, 'jQuery的美元符号$有什么作用？', '其实美元符号$只是”jQuery”的别名，它是jQuery的选择器，如下代码：<br/>\r\n\r\n$(document).ready(function(){<br/>\r\n\r\n});<br/>\r\n当然你也可以用jQuery来代替$，如下代码：<br/>\r\n\r\njQuery(document).ready(function(){<br/>\r\n\r\n});<br/>\r\njQuery中就是通过这个美元符号来实现各种灵活的DOM元素选择的，例如$(“#main”)即选中id为main的元素。', 0, '', 7, 0, 0, '1', 7, 0, ''),
(2, 'body中的onload()函数和jQuery中的document.ready()有什么区别？', 'onload()和document.ready()的区别有以下两点：<br/>\r\n\r\n1、我们可以在页面中使用多个document.ready()，但只能使用一次onload()。<br/>\r\n\r\n2、document.ready()函数在页面DOM元素加载完以后就会被调用，而onload()函数则要在所有的关联资源（包括图像、音频）加载完毕后才会调用。', 0, '', 2, 0, 0, '1', 0, 0, ''),
(3, 'jQuery中有哪几种类型的选择器？', '从我自己的角度来讲，可以有3种类型的选择器，如下：<br/>\r\n\r\n1、基本选择器：直接根据id、css类名、元素名返回匹配的dom元素。<br/>\r\n\r\n2、层次选择器：也叫做路径选择器，可以根据路径层次来选择相应的DOM元素。<br/>\r\n\r\n3、过滤选择器：在前面的基础上过滤相关条件，得到匹配的dom元素。<br/>', 0, '', 3, 0, 0, '1', 0, 0, ''),
(4, '请使用jQuery将页面上的所有元素边框设置为2px宽的虚线？', '这正是jQuery选择器上场的时候了，代码如下：<br/>\r\n\r\n<script language="javascript" <br/>type="text/javascript"><br/>\r\n\r\n         $("*").css("border", "2px dotted red"); <br/>\r\n\r\n</script><br/>', 0, '', 3, 0, 0, '2', 0, 0, ''),
(5, '当CDN上的jQuery文件不可用时，该怎么办？', '为了节省带宽和脚本引用的稳定性，我们会使用CDN上的jQuery文件，例如google的jquery cdn服务。但是如果这些CDN上的jQuery服务不可用，我们还可以通过以下代码来切换到本地服务器的jQuery版本：<br/>\r\n<script type="text/javascript" language="Javascript" src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.4.1.min.js "></script><br/>\r\n\r\n<script type=''text/javascript''>//<![CDATA[<br/>\r\n\r\nif (typeof jQuery == ''undefined'') {<br/>\r\n\r\ndocument.write(unescape("%3Cscript src=''/Script/jquery-1.4.1.min.js'' type=''text/javascript'' %3E%3C/script%3E"));<br/>\r\n\r\n}//]]><br/>\r\n\r\n</script>', 0, '', 3, 0, 0, '2', 0, 0, ''),
(6, '如何使用jQuery实现点击按钮弹出一个对话框？', '回答：代码如下：<br/>\r\n\r\nHTML：<br/>\r\n\r\n<input id="inputField" type="text" size="12"/><br/>\r\njQuery：<br/>\r\n\r\n<script type="text/javascript"> $(document).ready(function () { $(''#Button1'').click(function () { alert($(''#inputField'').attr("value")); }); }); </script>', 0, '', 3, 0, 0, '1', 0, 0, ''),
(7, 'jQuery中的Delegate()函数有什么作用？\r\n\r\n', 'delegate()会在以下两个情况下使用到：<br/>\r\n\r\n1、如果你有一个父元素，需要给其下的子元素添加事件，这时你可以使用delegate()了，代码如下：<br/>\r\n\r\n$("ul").delegate("li", "click", function(){<br/>\r\n\r\n$(this).hide();<br/>\r\n\r\n});<br/>\r\n2、当元素在当前页面中不可用时，可以使用delegate()', 0, '', 3, 0, 0, '2', 0, 0, ''),
(8, '怎样用jQuery编码和解码URL？', '在jQuery中，我们可以使用以下方法实现URL的编码和解码。<br/>\r\n\r\nencodeURIComponent(url) and decodeURIComponent(url)', 0, '', 2, 0, 0, '2', 0, 0, ''),
(9, '如何用jQuery禁用浏览器的前进后退按钮？', '实现代码如下：<br/>\r\n\r\n&ltscript type="text/javascript" language="javascript"&gt<br/>\r\n\r\n$(document).ready(function() {<br/>\r\n\r\n     window.history.forward(1);<br/>\r\n\r\n     //OR<br/>\r\n\r\n     window.history.forward(-1);<br/>\r\n\r\n});<br/>\r\n\r\n&lt/script&gt', 0, '', 2, 0, 0, '3', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `jo_name`
--

CREATE TABLE IF NOT EXISTS `jo_name` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `jo_name`
--

INSERT INTO `jo_name` (`ID`, `NAME`) VALUES
(1, '林云富'),
(2, '杨珂'),
(3, '张冬杰'),
(4, '张籍元'),
(5, '朱晓毅'),
(6, '贺茂奇'),
(7, '张超'),
(8, '罗欢'),
(9, '李锋'),
(10, '周卫忠'),
(11, '黄承沛'),
(12, '周新剑'),
(13, '王凉'),
(14, '王国栋');

-- --------------------------------------------------------

--
-- 表的结构 `jo_php`
--

CREATE TABLE IF NOT EXISTS `jo_php` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Detailed` text NOT NULL,
  `VALUE` int(10) NOT NULL,
  `Comment` text NOT NULL,
  `Reading` int(11) NOT NULL,
  `Like` int(11) NOT NULL,
  `Collect` int(11) NOT NULL,
  `Level` varchar(1) NOT NULL,
  `Favorite` int(11) NOT NULL,
  `comm_num` int(11) NOT NULL,
  `img_url` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `jo_php`
--

INSERT INTO `jo_php` (`ID`, `Title`, `Detailed`, `VALUE`, `Comment`, `Reading`, `Like`, `Collect`, `Level`, `Favorite`, `comm_num`, `img_url`) VALUES
(1, '请用最简单的语言告诉我PHP是什么？', 'PHP全称：Hypertext Preprocessor，是一种用来开发动态网站的服务器脚本语言。', 0, '', 34, 0, 0, '1', 1, 0, ''),
(2, '什么是MVC？', 'MVC由Model（模型）, View（视图）和Controller（控制器）组成，PHP MVC可以更高效地管理好3个不同层的PHP代码。<br/>\r\nModel：数据信息存取层。<br/>\r\nView：view层负责将应用的数据以特定的方式展现在界面上。<br/>\r\nController：通常控制器负责从视图读取数据，控制用户输入，并向模型发送数据。<br/>', 0, '', 22, 0, 0, '2', 30, 0, ''),
(3, '在页面中引用CSS有几种方式？', '在页面中使用CSS有3中方式：<br/>\r\n引用外部CSS文件<br/>\r\n内部定义Style样式<br/>\r\n内联样式<br/>', 0, '', 5, 0, 0, '1', 0, 0, ''),
(4, 'PHP支持多继承吗？', '不可以。PHP类只能继承一个父类，并用关键字“extended”标识。', 0, '', 3, 0, 0, '2', 0, 0, ''),
(5, '请问PHP中echo和print有什么区别？', '这两个看起来很相似，因为它们都是将一些值打印在屏幕上。但是echo和print的本质区别在于：echo用来输出字符串，显示多个值的时候可以用逗号隔开。只支持基本类型，print不仅可以打印字符串值，而且可以打印函数的返回值。', 0, '', 3, 0, 0, '1', 0, 0, ''),
(6, '请问GET和POST方法有什么区别？', '我们再网页上填写的表单信息都可以通过这两个方法将数据传递到服务器上，当我们使用GET方法是，所有的信息都会出现在URL地址中，并且使用GET方法最多只能传递1024个字符，所以如果在传输量小或者安全性不那么重要的情况下可以使用GET方法。说到POST方法，最多可以传输2MB字节的数据，而且可以根据需要调节', 0, '', 1, 0, 0, '1', 0, 0, ''),
(7, 'PHP中获取图像尺寸大小的方法是什么？', 'getimagesize () 获取图片的尺寸<br/>\r\nImagesx () 获取图片的宽度<br/>\r\nImagesy () 获取图片的高度<br/>', 0, '', 0, 0, 0, '2', 0, 0, ''),
(8, 'PHP中的PEAR是什么？', 'PEAR也就是为PHP扩展与应用库（PHP Extension and Application Repository），它是一个PHP扩展及应用的一个代码仓库。', 0, '', 0, 0, 0, '2', 0, 0, ''),
(9, '如何用PHP和MySQL上传视频？', '我们可以在数据库中存放视频的地址，而不需要将真正的视频数据存在数据库中。可以将视频数据存放在服务器的指定文件夹下，上传的默认大小是2MB，但是我们也可以在php.ini文件中修改max_file size选项来改变', 0, '', 0, 0, 0, '2', 0, 0, ''),
(10, 'PHP中的错误类型有哪些？', 'PHP中遇到的错误类型大致有3类。<br/>\r\n提示：这都是一些非常正常的信息，而非重大的错误，有些甚至不会展示给用户。比如访问不存在的变量。<br/>\r\n警告：这是有点严重的错误，将会把警告信息展示给用户，但不会影响代码的输出，比如包含一些不存在的文件。<br/>\r\n错误：这是真正的严重错误，比如访问不存在的PHP类。<br/>', 0, '', 0, 0, 0, '1', 0, 0, ''),
(11, '如何在PHP中定义常量？', 'PHP中使用Define () 来定义常量。<br/>\r\ndefine (“Newconstant”, 30);', 0, '', 1, 0, 0, '1', 0, 0, ''),
(12, '如何不使用submit按钮来提交表单？', '如果我们不想用submit按钮来提交表单，我们也可以用超链接来提交，我们可以这样写代码：<br/>\r\n<a href=”javascript: document.myform.submit();”>Submit Me</a>', 0, '', 3, 0, 0, '2', 1, 1, ''),
(13, '我是谁', '我是傻逼圈圈', 0, '', 5, 0, 0, '', 0, 1, 'php/upload/b.jpg'),
(14, '大家好！', '这里是PHP！', 0, '', 1, 0, 0, '', 0, 0, 'http://128.1.67.161/interviewee/php/upload/1471584057774.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `jo_user`
--

CREATE TABLE IF NOT EXISTS `jo_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(20) CHARACTER SET utf8 NOT NULL,
  `tel` varchar(11) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 NOT NULL,
  `age` int(5) NOT NULL,
  `work_for` varchar(20) CHARACTER SET utf8 NOT NULL,
  `infomation` varchar(50) CHARACTER SET utf8 NOT NULL,
  `other` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `jo_user`
--

INSERT INTO `jo_user` (`id`, `username`, `password`, `email`, `tel`, `sex`, `age`, `work_for`, `infomation`, `other`) VALUES
(1, '', '123123', '', '13850396673', '', 0, '', '', ''),
(2, '', '123456', '', '13170888452', '', 0, '', '', ''),
(4, '', '456456', '', '12315478888', '', 0, '', '', ''),
(5, '', '7913086', '', '13170888430', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `jo_xml`
--

CREATE TABLE IF NOT EXISTS `jo_xml` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Detailed` text NOT NULL,
  `VALUE` int(10) NOT NULL,
  `Comment` text NOT NULL,
  `Reading` int(11) NOT NULL,
  `Like` int(11) NOT NULL,
  `Collect` int(11) NOT NULL,
  `Level` varchar(1) NOT NULL,
  `Favorite` int(11) NOT NULL,
  `comm_num` int(11) NOT NULL,
  `img_url` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `jo_xml`
--

INSERT INTO `jo_xml` (`ID`, `Title`, `Detailed`, `VALUE`, `Comment`, `Reading`, `Like`, `Collect`, `Level`, `Favorite`, `comm_num`, `img_url`) VALUES
(1, 'XML有哪些解析技术?区别是什么?', '有DOM,SAX,STAX等  <br/> DOM:处理大型文件时其性能下降的非常厉害。这个问题是由DOM的树结构所造成的，这种结构占用的内存较多，而且DOM必须在解析文件之前把整个文档装入内存,适合对XML的随机访问； <br/>  SAX:不现于DOM,SAX是事件驱动型的XML解析方式。它顺序读取XML文件，不需要一次全部装载整个文件。 当遇到像文件开头，文档结束，或者标签开头与标签结束时，它会触发一个事件，用户通过在其回调事件中写入处理代码来处理XML文件，适合对XML的顺序访问； <br/>  STAX:Streaming APIfor XML (StAX)。 ', 0, '', 9, 0, 0, '3', 0, 0, ''),
(2, '你在项目中用到了XML技术的哪些方面?如何实现的?', '用到了数据存贮，信息配置两方面。在做数据交换平台时，将不同数据源的数据组装成XML文件，然后将XML文件压缩打包加密后通过网络传送给接收者，接收解密与解压缩后再同XML文件中还原相关信息进行处理。在做软件配置时，利用XML可以很方便的进行，软件的各种配置参数都存贮在XML文件中。', 0, '', 0, 0, 0, '3', 0, 0, ''),
(3, 'XML文档定义有几种形式？它们之间有何本质区别？解析XML 文档有哪几种方式？', '1. 两种形式 dtd schema；<br/>  2. 本质区别:schema本身是xml的，可以被XML解析器解析(这也是从DTD上发展schema的根本目的)；<br/> 3.有DOM,SAX,STAX等。', 0, '', 1, 0, 0, '2', 0, 0, ''),
(4, 'XML是什么?', 'xml提供一种描述结构化数据的方法,是一种简单,与平台无关并被广泛采用的标准,xml文档可以承载各种信息.', 0, '', 3, 0, 0, '1', 11, 0, ''),
(5, 'XML用来干什么?你说了解的XML技术及其应用?', '保存配置,站与站之间的交流,都用得到它，Xml不仅可以用来描述数据,还可以作为数据的载体。<br/>  1.用xml分离数据,数据单独放在xml中,集中精力更好的完成html的数据显示和布局,方便维护。<br/> 2.xml可以作为商业系统之间交换金融信息所使用的语言。<br/> 3.交换数据,用xml可以减少交换数据的复杂性。<br/> 4.xml可以用来共享数据.因为xml无关于硬件和软件。<br/> 5.xml可以充分的利用数据。 <br/> 6.可以用于创建新语言,xml是WML语言的母亲,WML无线标记语言,用于标识运行于手持设备上的internet程序。', 0, '', 1, 0, 0, '2', 0, 0, ''),
(6, 'XML和HTML的区别?', '1.设计上的区别：xml用来存储数据,重在数据本身,HTML用来定义数据,重在数 据的显示模式。<br/>  2.xml可扩展性强,因为他本身就是可扩展性标记语言,可创建个性化的标记语 言,提供更多数据操作。<br/> 3.xml语法比HTML严格。<br/> a.起始标签和结束标签要匹配, <br/>b.嵌套标签不能互相嵌套，<br/> c.区分大小写。<br/>  4.xml属性值必须放在引号中,html可有可无。<br/>  5.xml必须有相应的值,但html可以有不带值的属性名。', 0, '', 1, 0, 0, '3', 0, 0, ''),
(7, 'XML文件和普通配置文件相比有哪些优点?', '1.xml是一个标准的技术，在处理上可以更加的统一。 <br/> 2.从对配置文件的后期处理上，对xml的操作的api更多，更方面，而文本文件不是特别的方便。 <br/> 3. xml可以有定义语法的dtd文件，这样读取配置信息的时候，可以先根据dtd检查当前的xml配置文件是否语法正确，而文本文件没有办法检查语法。（对于配置文件非常关键）  <br/>  4.xml文件可以非常方便的转换成其他格式的文件，而文本文件不可以。 <br/>  5 xml利用xslt可以有更好的显示效果，而文本文件很难做到。 <br/>   6.xml可以非常方便的搜索其中的一些配置信息，试想如果配置文件很大，这个优点是很明显的，而文本文件则不太方便。 <br/>   7.xml可以携带更多、更丰富的的配置信息，而文本文件不容易做到。', 0, '', 1, 0, 0, '3', 0, 0, '');
