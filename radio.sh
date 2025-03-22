#!/bin/bash

RED='\033[31m'
RESET='\033[0m'

COLUMN_SEPARATOR='\t'
# shellcheck disable=SC2034
read -r rows cols < <(stty size)
if [ "$cols" -lt 100 ]; then
  COLUMN_SEPARATOR="\n"
else
  COLUMN_SEPARATOR="\t"
fi

printf "Keybinds:"
printf "\t %b 9 %b add volume -2" "$RED" "$RESET"
printf "\t %b / %b add volume -2" "$RED" "$RESET"
printf "\t %b 0 %b add volume 2" "$RED" "$RESET"
printf "\t %b * %b add volume 2\n" "$RED" "$RESET"
printf "\t\t %b p %b pause" "$RED" "$RESET"
printf "\t %b X %b exit for app\n\n" "$RED" "$RESET"

while true; do
    echo "Select radio:"
    printf "a1. Anime [%b YggdrasilRadio %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "a2. Phonk [%b BadRadio %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "a3. Phonk [%b radiorecord.ru/station/phonk %b]\n" "$RED" "$RESET"
    printf "a4. Anime [%b Anison.fm %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "a5. Brazil Phonk [%b Unknown %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "a6. Lofi [%b 247OnlineRadio.com %b]\n\n" "$RED" "$RESET"
    printf "b1. Chill: [%b Lofi Girl %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b2. Chill: [%b Chillhop %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b3. Chill: [%b Box Lofi %b]\n" "$RED" "$RESET"
    printf "b4. Chill: [%b The Bootleg Boy %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b5. Chill: [%b Radio Spinner %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b6. Chill: [%b SmoothChill %b]\n" "$RED" "$RESET"
    printf "b7. Chill: [%b Boolout %b]\n" "$RED" "$RESET"
    printf "b8. Chill: [%b Radio Record Lo-Fi %b]\n\n" "$RED" "$RESET"
    printf "b9. Anime: [%b BakaNo %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b10. Anime: [%b Tsubaki %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b11. Anime: [%b chiru.no %b]\n" "$RED" "$RESET"
    printf "b12. Anime: [%b listen.moe %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b13. Anime: [%b r-a-d.io %b]\n\n" "$RED" "$RESET"
    printf "b14. Chiptune: [%b Rainwave %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b15. Classics: [%b Baroque %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b16. Classics: [%b Neoclassical %b]\n" "$RED" "$RESET"
    printf "b17. Vgm: [%b Kohina %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b18. Vgm: [%b RPG Gamers %b]%b" "$RED" "$RESET" "$COLUMN_SEPARATOR"
    printf "b19. Vgm: [%b Rainwave %b]\n" "$RED" "$RESET"
    printf "b20. Vgm: [%b VGM Radio %b]\n" "$RED" "$RESET"
    printf "X. %b Exit %b for app\n" "$RED" "$RESET"
    
    read -r -p "Choice: " answer
    case $answer in
        a1 ) mpv "https://yggdrasilradio.net/yggdrasilradio_aac_56kbps.pls";;
        a2 ) mpv "https://s2.radio.co/s2b2b68744/listen";;
        a3 ) mpv "https://hls-01-radiorecord.hostingradio.ru/record-phonk/96/playlist.m3u8";;
        a4 ) mpv "https://anison.fm/anison.m3u";;
        a5 ) mpv "https://stream.zeno.fm/bo5mblm77w6vv";;
        a6 ) mpv "https://ec3.yesstreaming.net:3585/stream";;
        b1 ) mpv "https://play.streamafrica.net/lofiradio";;
        b2 ) mpv "http://stream.zeno.fm/fyn8eh3h5f8uv";;
        b3 ) mpv "http://stream.zeno.fm/f3wvbbqmdg8uv";;
        b4 ) mpv "http://stream.zeno.fm/0r0xa792kwzuv";;
        b5 ) mpv "https://live.radiospinner.com/lofi-hip-hop-64";;
        b6 ) mpv "https://media-ssl.musicradio.com/SmoothChill";;
        b7 ) mpv "https://ec2.yesstreaming.net:1910/stream";;
        b8 ) mpv "https://radiorecord.hostingradio.ru/lofi96.aacp";;
        b9 ) mpv "http://144.217.203.184:8398/listen.pls?sid=1&t=.m3u";;
        b10 ) mpv "http://142.4.209.132:8000/listen.pls?sid=1&t=.m3u";;
        b11 ) mpv "http://142.4.209.132:8000/listen.pls?sid=1&t=.m3u";;
        b12 ) mpv "http://stream.tsubakianimeradio.com:9000/play.mp3";;
        b13 ) mpv "https://relay0.r-a-d.io/main.mp3";;
        b14 ) mpv "https://rainwave.cc/tune_in/4.ogg.m3u";;
        b15 ) mpv "https://strm112.1.fm/baroque_mobile_mp3?aw_0_req.gdpr=true";;
        b16 ) mpv "http://s02.radio-tochka.com:4630/stream";;
        b17 ) mpv "https://kohina.duckdns.org/icecast/stream.ogg";;
        b18 ) mpv "http://www.rpgamers.net/radio/radio.m3u";;
        b19 ) mpv "https://rainwave.cc/tune_in/1.ogg.m3u";;
        b20 ) mpv "https://vgmradio.com/vgmradio.m3u";;
        [Xx]* ) 
            echo "Exiting the application..."
            break
            ;;
        * ) echo "Please answer 1, 2, 3, 4, 5, 6, or X";;
    esac
done
