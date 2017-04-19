# swiftCategory
一些常用的分类

### UIView：
添加View的x，y，width，height，centerX，centerY，maxY，maxX属性

```object
let myView = UIView()
print(myView.x)
print(myView.y)
print(myView.centerX)
print(myView.centerY)
print(myView.maxX)
print(myView.maxY)

```

### UIDevice：
APP相关信息：获取App的版本号，App的版本，App的名称
设备相关：获取设备的型号，设备UUID，获取设备名称（如iPhone：王伟的iPhone），系统版本号（iPhone，ipad，TV）的具体型号

```object
debugPrint(UIDevice.current.appName)
debugPrint(UIDevice.current.modelName)
debugPrint(UIDevice.current.deviceModel)

```

### UIBarButtonItem：
自定义返回一个UIBarButtonItem

```object
let barButtonItem = UIBarButtonItem.itemWithTarget(target: self, action: #selector(ViewController.backClick), image: "", title: "", selectImage: "")
        print(barButtonItem)
```

