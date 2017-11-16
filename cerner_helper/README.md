⛱ آموزش نصب 
CerNer Helper & Cli


🚧 پیش نیاز اول

sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install git redis-server lua5.2 liblua5.2-dev lua-lgi libnotify-dev unzip tmux -y && add-apt-repository ppa:ubuntu-toolchain-r/test && sudo apt-get update && apt-get upgrade && sudo apt-get install libconfig++9v5 libstdc++6 && sudo apt autoremove

سورسو کلون می کنیم 👇

git clone https://github.com/PockerTGteam/CerNer-Helper

❗️ سپس دستورات زیر
 
cd cerner_helper

chmod +x C

./C install

./C config
 
./C login-Cli ///=> شماره ربات

برای نصب API
./C login-Api

لوگین میشیم توکن APIرو وارد میکنیم

/C Change-Login ///=> تغییر Cli <=> Api

./C start
_______
پوشه

bot

فایل

bot.lua

در خط ۲۸ بجای توکن توکن ربات هلپر آفلاین ینی ای پی ای رو بزارید

خط ۳۹ بجای ۸۵ ایدی عددی خودتون و بجای ۶۹ ایدی عددی ربات آنلایتون سی ال ای

در خط ۴۰ ایدی عددی خودتون رو بجای ۸۵ بزارید

در خط ۴۱ ایدی عددی کانالتون رو بجای ۱۳ بزارید

در خط ۴۲ ایدی عددی ربات آفلاین ای پی ای رو بزارید بجای ۹۰

در خط ۴۳ ایدی کانالتون رو بزارید بجای کانال

برید داخل فایل

api.lua

در پوشه اصلی

در خط ۱۱ توکن ربات ررو بجای توکن بزارید

در خط ۱۹ بجای ۸۵ ایدی عددی خودتون و بجای ۶۹ ایدی عددی ربات آنلاین

در خط ۲۹۹ بجای ۸۵ ایدی عددی خودتون و بجای ۶۹ ایدی عددی ربات آنلاین ینی سی ال ای رو بزارید

بعد از همه اینا حتما سیو کنید

و کد های پایینو بزنید

اتولانچ ربات آنلاین ینی سی ال ای

killall -9 bash
 killall screen

cd cerner_helper

chmod +x Company

screen ./Company

روشن کردن ربات هلپر آفلاین ینی همون ای پی ای

cd cerner_helper

chmod +x api.lua

screen lua api.lua

اتولانچ ربات Api

cd cerner_helper

chmod +x api.sh

chmod +x apiauto.sh

screen ./apiauto.sh