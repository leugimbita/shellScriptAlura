#! /bin/bash

ps aux --sort=%mem | grep -v grep | head -16 > /home/guiggs17/top15process.txt
