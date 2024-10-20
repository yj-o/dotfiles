#!/bin/zsh

# check if an argument is provided
if [[ $# -eq 0 ]] || { [[ $1 != "full" ]] && [[ $1 != "base" ]]; }; then
  echo "Usage: $0 {full|base}"
  exit 1
fi

# update and locale settings
sudo apt update && sudo apt install locales -y
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

# add ROS repository
sudo apt install software-properties-common -y
sudo add-apt-repository universe

sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# install the selected ROS package
sudo apt update
sudo apt upgrade -y

if [[ $1 == "full" ]]; then
    echo "Installing ROS Humble Desktop (full) & gazebo"
    sudo apt install ros-humble-desktop -y
    sudo apt install ros-humble-ros-gz -y
elif [[ $1 == "base" ]]; then
    echo "Installing ROS Humble Base"
    sudo apt install ros-humble-ros-base -y
fi

# install development tools
sudo apt install ros-dev-tools -y
sudo apt-get install -y python3-argcomplete
sudo apt-get install -y python3-colcon-common-extensions
sudo apt-get install -y python3-rosdep 
sudo apt-get install ros-humble-rosbag2-storage-mcap -y
sudo apt install ros-humble-foxglove-bridge -y
sudo rosdep init
rosdep update

# source the setup files
echo "source /opt/ros/humble/setup.zsh" >> ~/.zshrc
echo "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh" >> ~/.zshrc

echo "Installation completed successfully!"
