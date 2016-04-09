# README
####利用`openURL(开放链接)`实现从一个APP跳转到另一个App、调用电话、短信、Safari、邮件、设置、AppStore等。
#####一、调用其他原生应用:
`urlString:`
**电话："telprompt://18780267225"**
**短信："sms://18780267225"**
**邮件："mailto://asahikuang@yahoo.com"**
**Safari： "https://www.baidu.com"**
**AppStore："itms-apps://itunes.apple.com/cn/app/id414478124?mt=8"**
**music： "music://"**
**设置："prefs:root=WIFI"**

```
let result = UIApplication.sharedApplication().canOpenURL(url)
        if result {
            print("yeah,can open url")
            UIApplication.sharedApplication().openURL(url)
        }
        else {
            print("can't open url")
        }
```

#####二、跳转到另一个APP:
1.到需要跳转的App（test1）,新增`plist`项目如下:

![pic url](https://github.com/Asahi-Kuang/picture/blob/master/plist.png?raw=true)

2.到test02 APP, 自定义url schemes，在`plist`中进行:

![pic url](https://github.com/Asahi-Kuang/picture/blob/master/plist2.png?raw=true)

3.设置urlString为`"MyURLSchemes://"`



