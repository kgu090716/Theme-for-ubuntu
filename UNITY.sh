#! /bin/bash

#0. CLS

clear

#1. 로고 화면

echo ""
echo ""
echo "    *UNITY THEME INSTALLER*   "
sleep 1
echo "       *유니티 테마 설치*       "
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
echo "      2)unity-tweak-tool (유니티 트윅 도구)"
echo "      3)PLANK (DOCK 프로그램)"

echo "        *테마*  "
echo "      4)NUMIX  "
echo "      5)PAPER  "
echo ""
echo "       *프로그램 실행*"
echo "      6)PLANK 설정 실행"
echo ""
echo "      0)EXIT  "
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
sudo apt-get install unity-tweak-tool
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
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme numix-icon-theme-square numix-icon-theme-circle numix-gtk-theme numix-blue-gtk-theme
echo "실행완료"
sleep 1
continue ;;

5)clear
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme paper-gtk-theme
echo "실행완료"
sleep 1
continue ;;

6)clear
plank --preferences
echo "실행완료"
sleep 1
continue ;;

0) exit 0 ;;

*)echo "다시 입력해 주세요." ;;
esac
done
