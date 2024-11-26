#!/bin/bash

echo "Keybinds:"
echo "		p pause"
echo "		9 add volume -2"
echo "		/ add volume -2"
echo "		0 add volume 2"
echo "		* add volume 2"
echo ""

while true; do
    echo "Select radio:"
    printf "1. Anime[\033[31myggdrasilradio\033[0m]\n"
    printf "2. Phonk[\033[31mbadradio\033[0m]\n"
    printf "3. Phonk[\033[31mradiorecord.ru/station/phonk\033[0m]\n"
	printf "4. Anime[\033[31manison.fm\033[0m]\n"
	printf "5. Brazil Phonk[\033[31mUnknown\033[0m]\n"
	printf "6. Lofi[\033[31m247onlineradio.com\033[0m]\n"
	read -r -p "Choice: " answer
    case $answer in
        [1]* ) mpv https://yggdrasilradio.net/yggdrasilradio_aac_56kbps.pls;;
        [2]* ) mpv https://s2.radio.co/s2b2b68744/listen;;
		[3]* ) mpv https://hls-01-radiorecord.hostingradio.ru/record-phonk/96/playlist.m3u8;;
		[4]* ) mpv https://anison.fm/anison.m3u;;
		[5]* ) mpv https://stream.zeno.fm/bo5mblm77w6vv;;
		[6]* ) mpv https://ec3.yesstreaming.net:3585/stream;;
        * ) echo "Please answer 1, 2, 3, 4, 5, 6";;
    esac
done
