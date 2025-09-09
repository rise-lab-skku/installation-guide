# WSL Installation

🌏 [English](WSL.md), [한국어](WSL.kr.md)

⏰ About 40 mins required

---

1. [WSL이나 Linux 같은 것들은 무엇인가요?](#WSL이나-Linux-같은-것들은-무엇인가요)
1. [WSL 활성화 하기](#WSL-활성화-하기)
1. [우분투 설치](#우분투-설치)

## WSL이나 Linux 같은 것들은 무엇인가요?

간단히 말하자면 [**리눅스**](https://en.wikipedia.org/wiki/Linux)는 윈도우나 맥OS 같은 운영체제입니다. 무료이며 전세계의 매우 많은 엔지니어와 프로그래머 들이 쓰고 있습니다.

- [**우분투(Ubuntu)**](https://en.wikipedia.org/wiki/Ubuntu)는 다양한 리눅스 종류 중에서 가장 유명한 시리즈 이름입니다.
- 리눅스 운영체제들은 역사와 계열에 따라 분류될 수 있으며, 우분투는 이 중에서 [**데비안(Debian)**](https://en.wikipedia.org/wiki/Debian) 계열로 분류됩니다.
- [**WSL**](https://docs.microsoft.com/en-us/windows/wsl/about)는 마이크로소프트에서 공식적으로 제공되는 기능으로 윈도우에서 리눅스 시스템을 쉽게 쓸 수 있도록 제공되는 기능입니다.
- WSL은 **Windows Subsystem for Linux (Linux용 Windows 하위 시스템)** 입니다.

## WSL 활성화 하기

1. **`프로그램 및 기능`** 에서 **`제어판`** 을 엽니다.

    > 본 가이드에 나오는 모든 사진은 영문판 Windows를 기준으로 제작되었습니다. 양해 바랍니다.

    ![Control Panel](/img/wsl/control_panel1.PNG)

1. **`Windows 기능 켜기/끄기`** 를 클릭하세요.
2. **`Linux용 Windows 하위 시스템`** 을 체크하여 활성화하고, 예 버튼을 누르세요. 그러면 이제 WSL 설치를 위한 준비가 된 것입니다.

   > 만약 WSL을 활성화하는 체크박스를 찾을 수 없다면, Windows를 최신 버전으로 업데이트하고 다시 확인해보세요. WSL 기능은 Windows 홈에디션이라도 설치가 가능합니다. Windows 업데이트를 어디서 해야할 지 모르겠다면 [**여기**](https://support.microsoft.com/en-us/help/4027667/windows-10-update) 를 클릭하세요.

    ![Control Panel](/img/wsl/control_panel2.PNG)
    ![Control Panel](/img/wsl/control_panel3.PNG)
    ![Control Panel](/img/wsl/control_panel4.PNG)

    > 참고: 업데이트를 완료하려면 컴퓨터를 다시 시작해야합니다.

## 우분투 설치

1. Microsoft 스토어를 엽니다.

    ![Windows App Store](/img/wsl/wsl1.PNG)

1. 우분투 20.04를 설치하겠습니다. [**이 링크**](https://apps.microsoft.com/detail/9mttcl66cpxj?hl=ko-KR&gl=KR)를 클릭하여 설치할 수도 있고 아니면 직접 검색하여 설치해도 됩니다.

    > **(주의)** 만약 숫자가 안 붙어 있다면 최신 버전을 뜻합니다.(2025년 9월 기준 24.04)

    ![wsl](/img/wsl/wsl_kyu_1.png)

1. 이제 시작 메뉴에서 **Ubuntu**를 볼 수 있을 겁니다.

    ![wsl](/img/wsl/wsl_kyu_2.png)

1. **Ubuntu**를 열고 잠시 후면 아래의 창을 볼 수 있습니다.

    ![wsl](/img/wsl/wsl5.PNG)

1. **username** 을 입력하고 `Enter`를 누르세요. 행복한 리눅스 경험을 위해서 **username**은 단순하게 만들어 주세요. 그리고 나면 **password** 를 설정해야 합니다. 리눅스에서는 비밀번호를 매우 자주 사용해야합니다. 그러니 너무 복잡한 비밀번호는 추천하지 않습니다.

    > 비밀번호를 입력하면서 아무 것도 보이지 않는다고 걱정하지 마세요. 리눅스 터미널에서는 원래 입력된 비밀번호가 보이지 않습니다.

    ![wsl](/img/wsl/wsl6.PNG)

1. 이제 우분투가 설치되었습니다. 아래의 명령어를 입력하여 최신 버전으로 업데이트 하세요. (비밀번호나 동의를 뜻하는 'y' 문자를 입력해야 할 수도 있습니다.)

    ```bash
    sudo apt-get update
    sudo apt-get upgrade
    ```

    > 이 과정이 만약 처음일 경우 10 ~ 30분 정도 걸립니다.

---
[>> 메인 페이지로 돌아가기](/README.md)
