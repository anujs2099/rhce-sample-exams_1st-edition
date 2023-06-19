#!/bin/bash

echo ""
sudo subscription-manager attach

echo ""
sudo yum update -y

echo ""
sudo reboot
