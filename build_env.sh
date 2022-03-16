echo "1.正在更新软件源"
sudo apt-get update
echo "2.正在安装依赖"
sudo apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget curl swig rsync
echo "3.拉取源码"
git clone https://github.com/coolsnowwolf/lede
echo "4.进入lede文件夹"
cd ./lede
echo "5.添加feed 源"
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo "6.更新feed源"
./scripts/feeds update -a
echo "7.安装feed"
./scripts/feeds install -a
echo "配置编译"
make menuconfig
