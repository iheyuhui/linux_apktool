
#使用该工具时必须确保你的系统已经安装了java环境且正确的设置了java环境变量。


#使用方法：终端命令
#反编译以及回编译apk
#1. 将ROM包/system/framework/下面的所有的系统apk拷贝到目录framework目录下。MIUI还需要把system/miui.apk和miuisystem.apk也放进来才可以反编译系统软件
#2. 在该工具的根目录打开shell终端，运行命令： ./add_framework.sh（加载系统框架，如果反编译第三方软件可以跳过）

#3.反编译命令：java -jar apktool.jar d Settings.apk    (Settings.apk可以换成你想要反编译的apk或者jar）
回编译命令：java -jar apktool.jar b Settings          （Settings为你回编译的目录，根据自己的修改）
这里以Settings.apk为例，实际使用时要修改成你要反编译的apk的名称。
#4. 如果反编译没有出错，在target目录下会生成反编译后的文件。此时你可以对反编译后的文件进行修改。
#5. 在该工具的根目录下运行命令： ./recompile.sh 来进行回编译。此命令如果执行成功，在target/dist目录下面会生成
   回编译后的apk，你可以提取里面你修改后的文件，然后替换到原来的apk包中，然后替换进系统进行测试。


签名操作：
#1. 在该工具的根目录下面有一个sign_apk文件夹，该文件夹下面的文件即为签名相关的文件。
#2. 进入sign_apk文件夹，拷贝要签名的apk到该目录下，打开shell终端，输入命令： ./sign.sh  Settings.apk来对文件Settings.apk进行签名。
   实际使用时你需要把这里的Settings.apk换成你自己要进行签名的apk。
#3. 签名完成后，在该目录下的out文件夹下面即可发现签名后的apk。


工具问题导致的反编译或者回编译错误解决办法：
#1. aapt导致的错误，此时可以通过从android SDK中提取最新的aapt文件进行替换来解决。
#2. apktool导致的错误。此时可以通过去更新下载最新的apktool进行替换来解决。

以上两个问题主要适用于你未做任何修改但却不能反编译或者回编译的问题。
# linux_apktool
