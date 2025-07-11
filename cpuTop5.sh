#! /bin/bash

ps aux --sort=%cpu | grep -v grep | head -6 
