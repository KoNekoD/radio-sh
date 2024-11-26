#!/bin/bash

RED='\033[31m'
RESET='\033[0m'

echo "Keybinds:"
echo "		p pause"
echo "		9 add volume -2"
echo "		/ add volume -2"
echo "		0 add volume 2"
echo "		* add volume 2"
echo "		X exit for app"
echo ""

while true; do
    echo "Select radio:"
    printf "1. Anime [${RED}YggdrasilRadio${RESET}]\n"
    printf "2. Phonk [${RED}BadRadio${RESET}]\n"
    printf "3. Phonk [${RED}RadioRecord.phonk${RESET}]\n"
    printf "4. Anime [${RED}Anison.fm${RESET}]\n"
    printf "5. Brazil Phonk [${RED}Unknown${RESET}]\n"
    printf "6. Lofi [${RED}247OnlineRadio.com${RESET}]\n"
    printf "X. ${RED}Exit${RESET} for app\n"
    
    read -r -p "Choice: " answer
    case $answer in
        [1]* ) mpv https://yggdrasilradio.net/yggdrasilradio_aac_56kbps.pls;;
        [2]* ) mpv https://s2.radio.co/s2b2b68744/listen;;
        [3]* ) mpv https://hls-01-radiorecord.hostingradio.ru/record-phonk/96/playlist.m3u8;;
        [4]* ) mpv https://anison.fm/anison.m3u;;
        [5]* ) mpv https://stream.zeno.fm/bo5mblm77w6vv;;
        [6]* ) mpv https://ec3.yesstreaming.net:3585/stream;;
        [Xx]* ) 
            echo "Exiting the application..."
            break
            ;;
        * ) echo "Please answer 1, 2, 3, 4, 5, 6, or X";;
    esac
done
