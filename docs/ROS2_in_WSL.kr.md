# Install ROS2 in WSL

🌏 [English](ROS_in_WSL.md), [한국어](ROS_in_WSL.kr.md)

⏰ About 60 mins required

---

This page is based on the official. [ROS2 foxy installation](https://docs.ros.org/en/foxy/index.html).

1. WSL을 엽니다.

2. 서버에 접근할 수 있도록 키를 설정합니다.

    💥 아래의 명령을 직접치지 말고 복사/붙여넣기 하십시오. **`Ctrl`+`v`는 Linux 터미널에서 작동하지 *않습니다*. 대신에 다음의 방법을 사용하세요.**

    - WSL을 사용한다면, `우클릭`하면 붙여넣기가 됩니다.
    - 그냥 네이티브 Linux라면, `Ctrl`+`Shift`+`v`를 쓰세요.

    ```bash
    sudo apt update && sudo apt install curl gnupg lsb-release
    sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
    ```

3. `sources.list` 설정하기: 여러분의 컴퓨터가 `packages.ros.org`로부터 소프트웨어 목록을 가져올 수 있도록 설정합니다.



    ```bash
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
    ```


    ![ros](/img/ros/image10.png)

4. 패키지 인덱스를 최신으로 업데이트합니다.

    ```bash
    sudo apt update
    ```

    ![ros](/img/ros/image1.png)

5. ROS2 foxy 패키지를 설치합니다. ROS2, rqt, rviz 등이 포함되어 있습니다.

    ```bash
    sudo apt install ros-foxy-desktop
    ```

6. `rosdep` 초기화. ROS가 일단 설치되면 처음 한번은 `rosdep`를 초기화해야 합니다.

    ```bash
    sudo rosdep init
    ```

7. 초기화 후에는 `rosdep`를 업데이트합니다.

    ```bash
    rosdep update
    ```

    ![rosdep](/img/ros/image9.png)

8. 환경 설정. 이 과정을 진행해야 여러분의 bash 세션마다 자동으로 ROS 환경변수들이 불려지기 때문에 매우 편리합니다.

    - For Foxy (Ubuntu 20.04),
        ```bash
        echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
        source ~/.bashrc
        ```

    ![source](/img/ros/image8.png)

9. 패키지 빌드를 위한 의존성을 설치합니다.

    ```bash
     sudo apt install python3-rosdep python3-colcon-common-extensions
    ```

10. 설치가 잘 되었는지 검증합니다. 사진과 똑같은 결과가 나올 필요는 없지만 비슷한 결과를 볼 수 있어야 합니다.

    ```bash
    printenv | grep ROS
    ```

    ![check ros](/img/ros/image7.png)

11. 기타 실습을 위해 필요한 패키지를 설치합니다.

    ```bash
    sudo apt install python3-rostopic
    ```

---

[>> Back to the main page](/README.md)
