#! /bin/bash

#0. CLS

clear

#1. 로고 화면

echo ""
echo ""
echo "     *CHANGE THEME IN Ubuntu (GNOME/UNITY)*   "
sleep 1
echo "         *우분투 테마변경 (그놈/유니티)*       "
sleep 1
echo ""
echo "           -문의 : kgu090716@gmail.com-             "
sleep 3

#1-1. CLS

clear

#2. 자동검색
echo "자동검색중입니다..."
sleep 2
case $XDG_CURRENT_DESKTOP in
ubuntu:GNOME) echo "GNOME(그놈)이다!!!"
sleep 1
./GNOME.sh
exit 0 ;;
ubuntu:UNITY) echo "UNITY(유니티)다!!!"
sleep 1
./UNITY.sh
exit 0 ;;
*)echo "모르겠다!!!"
sleep 1;;
esac

#3. 메뉴화면

while [ 1 ]
do

echo ""
echo ""
echo "     당신의 리눅스는 GNOME인가요 UBUNTU인가요?"
echo ""
echo "      1)GNOME  "
echo "      2)UNITY  "
echo "      3)잘 모르겠다.  "
echo ""
echo "      0)EXIT  "
echo ""
echo ""

echo -n "  번호를 입력해 주세요 : "
read menu
case $menu in
1)./GNOME.sh
exit 0 ;;
2)./UNITY.sh
exit 0 ;;
3)
clear
echo ""
echo $XDG_CURRENT_DESKTOP
echo ""
echo "메인화면으로 돌아가려면 엔터(ENTER)키를 누르십시오."
read
continue ;;
0) exit 0 ;;
*)echo "다시 입력해 주세요." ;;
esac
done
