#! /bin/bash

#0. CLS

clear

#1. 로고 화면

echo ""
echo ""
echo "    *GNOME THEME INSTALLER*   "
sleep 1
echo "        *그놈 테마 설치*      "
echo ""
echo ""
sleep 3

#1-1. CLS

clear

#2. 메뉴화면
while [ 1 ]
do

echo ""
echo ""
echo "     설치하고자 하는 프로그램을 선택하십시오."
echo ""
echo "        *프로그램*  "
echo "      1)패키지 업데이트"
echo "      2)GNOME-tweak-tool (그놈 트윅 도구)"
echo "      3)PLANK (DOCK 프로그램)"
echo "      4)chrome-gnome-shell 설치"
echo ""
echo "        *테마*  "
echo "      5)NUMIX  "
echo "      6)PAPER  "
echo ""
echo "       *프로그램 실행*"
echo "      7)PLANK 설정 실행"
echo ""
echo "      8)테마 수동 적용"
echo ""
echo "     *사이트(파이어 폭스 실행)*"
echo "      9)Gnome 확장 - User themes"
echo "      10)Gnome 확장 - Dash to Dock (DOCK)"
echo "      11)Gnome-look(테마 모음 사이트)"
echo ""
echo "      0)EXIT"
echo ""
echo ""


echo -n "  번호를 입력해 주세요 : "
read menu
case $menu in
1)clear
sudo apt-get update
sudo apt-get upgrade
echo "실행완료"
sleep 1
continue ;;

2)clear
sudo apt-get install gnome-tweak-tool
echo "실행완료"
sleep 1
continue ;;

3)clear
sudo add-apt-repository ppa:ricotz/docky
sudo apt-get update && sudo apt-get install plank
echo "실행완료"
sleep 1
continue ;;

4)clear
sudo apt-get install chrome-gnome-shell
echo "실행완료"
sleep 1
continue ;;

5)clear
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme numix-icon-theme-square numix-icon-theme-circle numix-gtk-theme numix-blue-gtk-theme
echo "실행완료"
sleep 1
continue ;;

6)clear
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme paper-gtk-theme
echo "실행완료"
sleep 1
continue ;;

7)clear
plank --preferences
echo "실행완료"
sleep 1
continue ;;

8)clear
mkdir gnome-icons
mkdir gnome-themes
mkdir ~/.icons
mkdir ~/.icons
echo "gnome-icons 폴더와 gnome-themes 폴더가 생성되었습니다."
echo "다음 폴더에 아이콘, 테마를 폴더째로 넣으세요."
echo "넣었으면 Enter 키를 눌러주십시오..."
read
cp -r gnome-icons/* ~/.icons/
echo "아이콘 적용중..."
sleep 1
cp -r gnome-themes/* ~/.themes/
echo "테마 적용중..."
sleep 1
rm -rf gnome-icons
echo "아이콘폴더 삭제중..."
sleep 1
rm -rf gnome-themes
echo "테마폴더 삭제중..."
sleep 1
echo "실행완료! GNOME TWEAK 가서 설정하세요!"
sleep 1
continue ;;

9)clear
echo -n "당신의 GNOME 버전 : "
gnome-shell --version
echo "확인했으면 Enter 키를 눌러주십시오..."
read
echo "인터넷 창을 닫으시면 다시 실행됩니다."
firefox https://extensions.gnome.org/extension/19/user-themes/
continue ;;


10)clear
echo -n "당신의 GNOME 버전 : "
gnome-shell --version
echo "확인했으면 Enter 키를 눌러주십시오..."
read
echo "인터넷 창을 닫으시면 다시 실행됩니다."
firefox https://extensions.gnome.org/extension/307/dash-to-dock/
continue ;;

11)clear
echo "인터넷 창을 닫으시면 다시 실행됩니다."
firefox https://www.gnome-look.org/
echo "실행완료"
sleep 1
continue ;;

0) exit 0 ;;

*)echo "다시 입력해 주세요." ;;
esac
done
