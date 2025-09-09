# Install ROS2 in WSL

🌏 [English](ROS_in_WSL.md), [한국어](ROS_in_WSL.kr.md)

⏰ About 60 mins required

---

This page is based on the official. [ROS2 foxy installation](https://docs.ros.org/en/foxy/index.html).

1. Open your WSL.
2. Set up your keys

    💥 Please copy and paste the following commands. **`Ctrl`+`v` does *NOT* work on Linux terminals. Please use the following method.**

    - If you are using WSL, `right click` on the mouse.
    - If you are using a native Linux, `Ctrl`+`Shift`+`v`

    ```bash
    sudo apt update && sudo apt install curl gnupg lsb-release
    sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
    ```

3. Setup your `sources.list`: Setup your computer to accept software from `packages.ros.org`.


    ```bash
    sudo apt install curl # if you haven't already installed curl
    curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
    ```

    ![ros](/img/ros/image10.png)

4. Make sure your Debian package index is up-to-date.

    ```bash
    sudo apt update
    ```

    ![ros](/img/ros/image1.png)

5. Install ROS2 foxy packages: ROS2, rqt, rviz, and robot-generic libraries

    ```bash
    sudo apt install ros-foxy-desktop
    ```

6. Initialize `rosdep`. Once the ROS2 is installed, it must be initialized.

    ```bash
    sudo rosdep init
    ```

7. After initializing, update `rosdep`.

    ```bash
    rosdep update
    ```

    ![rosdep](/img/ros/image9.png)

8. Environment setup. It's convenient if the ROS2 environment variables are automatically added to your bash session every time a new shell is launched:

    - For Foxy (Ubuntu 20.04),
        ```bash
        echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
        source ~/.bashrc
        ```

    ![source](/img/ros/image8.png)

9. Dependencies for building packages.

    ```bash
     sudo apt install python3-rosdep python3-colcon-common-extensions
    ```

10. Verifying your installation

    ```bash
    printenv | grep ROS
    ```

    ![check ros](/img/ros/image7.png)

---

[>> Back to the main page](/README.md)
