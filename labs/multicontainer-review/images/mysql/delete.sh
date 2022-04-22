#!/bin/bash

podman stop test-mysql
podman rm test-mysql
sleep 9
sudo rm -rf work
