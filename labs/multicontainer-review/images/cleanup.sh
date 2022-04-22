#!/bin/bash

# Stops and deletes all containers

podman stop $(podman ps -qa) ; podman rm $(podman ps -qa)

