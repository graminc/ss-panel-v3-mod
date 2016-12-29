#/bin/bash
#请先自行配置好git仓库以及上游仓库。
gitdir='git仓库配置目录'
webdir='网站目录'
githubadr='git@github.com:your_username/ss-panel-v3-mod.git'
cd $gitdir
git fetch upstream
git merge upstream/master
git push origin master
cd $webdir
cp config/.config.php ~
chattr -i public/.user.ini
mv public/.user.ini .
ls |grep -v filemod.sh |xargs rm -rf 
git clone $githubadr 
mv ss-panel-v3-mod/* .
chown -R root:root *
chmod -R 755 *
chown -R www:www storage
mv .user.ini public/
chattr +i public/.user.ini
cp ~/.config.php config/
rm ss-panel-v3-mod -rf
