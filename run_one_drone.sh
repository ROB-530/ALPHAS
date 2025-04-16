#!/bin/bash

bash CrazySim/crazyflie-firmware/tools/crazyflie-simulation/simulator_files/gazebo/launch/sitl_singleagent.sh -m crazyflie -x 0 -y 0 &
sleep 8
ros2 launch crazyflie launch.py backend:=cflib
