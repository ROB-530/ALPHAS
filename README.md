# ALPHAS: Autonomous Layered Positioning for Hierarchical Agents in Swarms

Reliable and accurate localization is paramount for autonomous
drone swarms. However, in challenging scenarios, GPS signals
can become weak or entirely blocked by environmental features
such as dense forests, mountains, or urban canyons formed by high
buildings. The density of the swarm itself might also contribute
to signal degradation in certain configurations. Furthermore,
relying solely on traditional odometry-based techniques often
leads to accumulated drift, compromising long-term accuracy without
external corrections like loop closure or global fixes.

To overcome these challenges, we propose a cooperative,
tiered localization strategy for heterogeneous drone swarms.
Our system architecture distinguishes between two agent
types: Alpha drones, equipped with high-precision global
localization sensors acting as mobile anchors, and Beta drones,
which estimate their positions using onboard sensors and
relative measurements to nearby agents. This approach aims to
achieve robust, swarm-wide localization by leveraging inter-agent
communication and relative information, thereby enhancing
resilience to sensor noise and environmental uncertainty
while potentially reducing the need for expensive global
positioning hardware on every agent.

# Setup

## Prerequisites

- [Gazebo Garden](https://gazebosim.org/docs/garden/install/)
- [ROS2 Humble](https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debs.html)

1. Clone the repository and initialize submodules:

```sh
git clone git@github.com:ROB-530/ALPHAS.git
cd ALPHAS
git submodule update --init --recursive
```

2. Install dependencies:

```sh
sudo apt install cmake build-essential libboost-program-options-dev libusb-1.0-0-dev ros-humble-motion-capture-tracking ros-humble-tf-transformations
pip install rowan nicegui cflib transforms3d Jinja2 empy catkin_pkg lark pytest
# or pip install -r requirements.txt
```

3. Build crazyswarm2:

```sh
cd ros2_ws
source /opt/ros/humble/setup.bash
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
```

4. Install crazyflie-lib-python:

```sh
cd ../CrazySim/crazyflie-lib-python
pip install -e .
```

5. Install crazyflie-firmware:

```sh
cd ../crazyflie-firmware
mkdir -p sitl_make/build && cd $_
cmake ..
make all
```

# Run the simulation

## Launch the simulation

```sh
bash CrazySim/crazyflie-firmware/tools/crazyflie-simulation/simulator_files/gazebo/launch/sitl_singleagent.sh -m crazyflie -x 0 -y 0
ros2 launch crazyflie launch.py backend:=cflib
```
