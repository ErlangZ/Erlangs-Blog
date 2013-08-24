use `blog_db`;
delete from articles;
delete from categories;
delete from contains_rel;


insert into articles(id, title, author, create_time, modify_time, content) 
values(1, '如何做到一秒渲染一个移动页面', '谷歌开发者', '2013/08/13', '2013/08/13',
'声明：原文版权属于 Google，原文以 CC BY 3.0 协议发布，原文中的代码部分以 Apache 2.0协议发布。中文翻译部分并非官方文档，仅供参考。PageSpeedInsights可以分析一个网页是否遵循了我们的攻略，从而在移动网络上用不到一秒的时间完成一次页面渲染。研究显示，任何超过一秒钟的延迟都将打断用户的思维顺流状态，带来较差的体验。我们的目标是不论在任何设备或网络条件下，都要维持用户在网页中的沉浸状态，提供更好的体验。想要满足一秒的时间预算并不是那么容易。不过幸运的是，我们并不需要在这个时间预算内渲染出整个页面，而是要在一秒以内传输并渲染出首屏内容，让用户尽快与页面互动。然后，当用户在和首屏内容进行互动时，页面的剩余部分可以在后台持续加载完整。（译注：原文中的“ATF”一词源自传统出版业，指的是报纸头版的中折线以上区域，这块黄金区域往往用来刊登最有吸引力的新闻。延伸到互联网领域，ATF指的是页面中不需要滚动就可以看到的首屏内容。）适应高延迟的移动网络。在移动设备上达到“首屏秒开”的准则，需要面对其它网络所遇不到的独特挑战。用户可能正通过 2G、3G 或 4G等各种各样的网络来访问你的网站。移动网络的延迟要明显高于有线连接，并且将消耗我们“首屏秒开”预算中的一大部分：3G网络的往返时间将消耗200-300ms4G网络的往返时间将消耗50-100ms3G是全球范围内占据统治地位的移动网络，而4G网络正在普及之中，你需要明白你的主流用户仍然在使用3G网络来访问你的页面。基于这个原因，我们不得不假设平均每次网络请求将消耗200ms。明白了这一点之后，我们来倒推一下时间。如果我们来分析一下浏览器与服务器之间一次典型的通信过程，会发现 600 ms 的时间就已经被网络本身消耗掉了：一次 DNS 查询用于将主机名（比如 google.com）解析为 IP 地址，一次网络往返用于发起 TCP 握手，以及最后一次完整的网络往返用于发送 HTTP 请求。我们就只剩下 400 ms 了'),

(2, '我从其他人的Shell脚本中学到的', 'Fizer Khan', '2013/08/20', '2013/08/20',
'我是一个Shell脚本迷，也很喜欢从其他人的Shell脚本里学习一些有趣的东西。最近我偶然接触到用于方便ssh服务器双重认证的 authy-ssh 脚本。浏览脚本后我学到了一些很酷的东西，在此也想分享给大家。很多时候，你会想让echo能以多种颜色区分不同输出。比如，绿色表示成功，红色告知失败，黄色提示警告。仅当设置DEBUG标志时才打印调试信息。还有来自于一些很酷的Geeks的单行debug函数：这里使用 which 命令来查找可执行文件 curl 的路径。如果成功找到，则可执行文件文件是存在的，否则就不存在。 &>/dev/null 将标准输出和标准错误重定向到 /dv/null （也就是不显示在终端上了）。<python-code>
function debug() {
    if [[ $DEBUG ]]
    then
        echo ">>> $*"
    fi
}# For any debug message
debug "Trying to find config file"</python-code>'),

 (3, '40多个关于人脸检测/识别的API、库和软件','mashape','2013/08/19','2013/08/19',
'自从谷歌眼镜被推出以来，围绕人脸识别，出现了很多争议。我们相信，不管是不是通过智能眼镜，人脸识别将在人与人交往甚至人与物交互中开辟无数种可能性。为了帮助研究过程中探索人脸识别，我们列出以下人脸检测和识别API。希望有所帮助！仔细算算自己在家上班已经有差不多4年了，所以回想起整个过程，只有一种感受，那就是再也回不去了。我相信很多在家工作多年的朋友也会有同样的感受，“自由”这东西一旦拥有就太难再放弃掉。我现在无法想象我每天要在上下班的路上耽搁1-2个小时，每天要准时一大早起床，每周无论有事没事都必须工作5天，不能每天坐在我最舒适的椅子和桌子面前工作… 最关键的是，我不能放弃这一份已经拥有的 “自由” — 嗯？问题搞深沉了.. 这篇文章我并不是想介绍在家 SOHO如何如何好，我想谈的是如果你也想成为一名在家 SOHO 的程序员你应该怎么做。');


insert into categories(id, name) 
values (1, '设计'), 
		(2, '程序员'), 
		(3,'技术');


insert into contains_rel(id, article_id, category_id) values(1, 1, 1), (2, 2, 3), (3, 3, 2);