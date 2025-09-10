# Install ROS in WSL

🌏 [English](ROS_in_WSL.md), [한국어](ROS_in_WSL.kr.md)

⏰ About 60 mins required

---

This page is based on the official. [ROS kinetic installation](http://wiki.ros.org/kinetic/Installation), [ROS melodic installation](http://wiki.ros.org/melodic/Installation).

1. Open your WSL.
2. Setup your `sources.list`: Setup your computer to accept software from `packages.ros.org`.

    💥 Please copy and paste the following commands. **`Ctrl`+`v` does *NOT* work on Linux terminals. Please use the following method.**

    - If you are using WSL, `right click` on the mouse.
    - If you are using a native Linux, `Ctrl`+`Shift`+`v`

    ```bash
    sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
    ```

3. Set up your keys

    ```bash
    sudo apt install curl # if you haven't already installed curl
    curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
    ```

    ![ros](/img/ros/ros01.PNG)

4. Make sure your Debian package index is up-to-date.

    ```bash
    sudo apt update
    ```

    ![ros](/img/ros/ros02.PNG)

5. Install ROS packages: ROS, rqt, rviz, and robot-generic libraries

    - For kinetic (Ubuntu 16.04),
        ```bash
        sudo apt install ros-kinetic-desktop
        ```
    - For melodic (Ubuntu 18.04),
        ```bash
        sudo apt install ros-melodic-desktop
        ```

6. Initialize `rosdep`. Once the ROS is installed, it must be initialized.

    ```bash
    sudo rosdep init
    ```

7. After initializing, update `rosdep`.

    ```bash
    rosdep update
    ```

    ![rosdep](/img/ros/ros03.PNG)

8. Environment setup. It's convenient if the ROS environment variables are automatically added to your bash session every time a new shell is launched:

    - For kinetic (Ubuntu 16.04),
        ```bash
        echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
        source ~/.bashrc
        ```
    - For melodic (Ubuntu 18.04),
        ```bash
        echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
        source ~/.bashrc
        ```

    ![source](/img/ros/ros04.PNG)

9. Dependencies for building packages.

    ```bash
    sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential
    ```

10. Verifying your installation

    ```bash
    printenv | grep ROS
    ```

    ![check ros](/img/ros/ros05.PNG)

---

11. Installing other package for practice

    ```bash
    sudo apt update
    sudo apt install python3-rostopic
    sudo apt install ros-foxy-rqt*
    sudo apt install ros-foxy-ros2topic
    sudo strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5
    ```

---

[>> Back to the main page](/README.md)
