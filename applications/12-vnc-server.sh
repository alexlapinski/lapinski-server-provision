#!/bin/sh
# 
# https://help.ubuntu.com/community/VNC/Servers#TigerVNC
#

sudo apt install -y tigervnc-standalone-server tigervnc-viewer

# TODO: Update File
# FILE: /etc/default/vncserver

sudo update-rc.d vncserver defaults