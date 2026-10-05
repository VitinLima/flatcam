#!/usr/bin/bash

# System packages

sudo apt install \
	libfreetype6 \
	libgeos-dev \
	libgdal-dev \
	python3-dev \
	python3-pip \
	python3-tk

# Python packages

#rm -rf ./.venv
#python3 -m venv ./.venv
#source ./.venv/bin/activate
#pip install -r ./requirements.txt

touch launch.sh
echo "source $(pwd)/.venv/bin/activate" > launch.sh
echo "python3 $(pwd)/flatcam.py" >> launch.sh


touch Flatcam.desktop
echo "[Desktop Entry]" > Flatcam.desktop
echo "Type=Application" >> Flatcam.desktop
echo "Terminal=false" >> Flatcam.desktop
echo "Exec=bash -c '$(pwd)/launch.sh'" >> Flatcam.desktop
echo "Name=FlatCam" >> Flatcam.desktop
echo "Icon=$(pwd)/assets/resources/flatcam_icon128.png" >> Flatcam.desktop

sudo mv ./Flatcam.desktop /usr/share/applications/Flatcam.desktop
