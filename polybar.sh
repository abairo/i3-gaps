#!/bin/bash
sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2 -y && git clone https://github.com/jaagr/polybar.git && cd polybar && sudo ./build.sh

sudo chown -R $USER:$USER ~/.config/polybar && wget https://gitlab.com/terminalroot/popy/raw/master/launch.sh -O ~/.config/polybar/launch.sh && chmod +x ~/.config/polybar/launch.sh && echo -e 'for_window [class="^.*"] border pixel 0\ngaps inner 10\ngaps outer 2\nexec_always --no-startup-id $HOME/.config/polybar/launch.sh' >> ~/.config/i3/config
