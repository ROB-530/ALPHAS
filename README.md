# ALPHAS: Autonomous Layered Positioning for Hierarchical Agents in Swarms

# Setup

## Prerequisites

- [Gazebo Garden](https://gazebosim.org/docs/garden/install/)
- [ROS2 Humble](https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debs.html)

Clone the repository and initialize submodules:

```sh
git clone git@github.com:ROB-530/ALPHAS.git
cd ALPHAS
git submodule update --init --recursive
```

Install dependencies:

```sh
sudo apt install libboost-program-options-dev libusb-1.0-0-dev ros-humble-motion-capture-tracking ros-humble-tf-transformations
pip install rowan nicegui cflib transforms3d
```

Build crazyswarm2:

```sh
cd ros2_ws
source /opt/ros/humble/setup.bash
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
```
