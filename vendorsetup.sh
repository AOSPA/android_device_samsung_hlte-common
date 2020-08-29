#!/bin/bash

repo sync -j$(nproc --all) --force-sync packages/apps/Settings
repo sync -j$(nproc --all) --force-sync frameworks/base

repopick -t aosp_hostapd # hostapd: Don't notify connected/disconnected stations