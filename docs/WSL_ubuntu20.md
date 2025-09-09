# WSL Installation

🌏 [English](WSL.md), [한국어](WSL.kr.md)

⏰ About 40 mins required

---

1. [What are things like WSL, Linux, and so on?](#What-are-things-like-WSL-Linux-and-so-on)
1. [Activate WSL](#Activate-WSL)
1. [Install Ubuntu](#Install-Ubuntu)

## What are things like WSL, Linux, and so on?

In a nutshell, [**Linux**](https://en.wikipedia.org/wiki/Linux) is a computer operating system such as Windows or macOS. It is free and used by many engineers and programmers around the world.

- [**Ubuntu**](https://en.wikipedia.org/wiki/Ubuntu) is the name of the most famous series of the many Linux family.
- Linux series can be classified according to their history and derivation, Ubuntu is classified as [**Debian**](https://en.wikipedia.org/wiki/Debian) series.
- [**WSL**](https://docs.microsoft.com/en-us/windows/wsl/about) is a feature that makes it easy to use these Linux systems in the Windows.
- WSL is **Windows Subsystem for Linux**.

## Activate WSL

1. Open the **`Programs and Features`** from the **`Control Panel`**.

    ![Control Panel](/img/wsl/control_panel1.PNG)

1. Click the **`Turn Windows freatures on or off`**.
2. Enable **`Windows Subsystem for Linux`** and press the OK button. Then you are ready to install WSL.

   > If you can not find the WSL checkbox, update Windows to make it up to date and try again. WSL is also available in the Windows Home edition. If you don't know how to update Windows, click [**here**](https://support.microsoft.com/en-us/help/4027667/windows-10-update).

    ![Control Panel](/img/wsl/control_panel2.PNG)
    ![Control Panel](/img/wsl/control_panel3.PNG)
    ![Control Panel](/img/wsl/control_panel4.PNG)

    > Note: You must restart your computer to complete the update.

## Install Ubuntu

1. Open the Microsoft Store.

    ![Windows App Store](/img/wsl/wsl1.PNG)

1. Install Ubuntu 20.04. You can just chick [**this link**](https://apps.microsoft.com/detail/9mttcl66cpxj?hl=ko-KR&gl=KR) or find it by search.

    > **(Caution)** If there is no numbering, that is up-to-date version.(24.04, September 2025)

    ![wsl](/img/wsl/wsl_kyu_1.png)

1. Now, you can find **Ubuntu** on the Start menu.

    ![wsl](/img/wsl/wsl_kyu_2.png)

1. Open the **Ubuntu** and, after a while, you will see the below.

    ![wsl](/img/wsl/wsl5.PNG)

1. Enter the **username** you want to use and press `Enter`. For your happy Linux, make **username** simple. And next, set a **password**. In Linux, you have to use passwords very often. So I do not recommend too complex passwords.

   > Do not worry about what you can not see when you enter your password. On Linux terminals, you can not see the password you entered.

    ![wsl](/img/wsl/wsl6.PNG)

1. Now Ubuntu is installed. Please enter the command below for the update. (You may enter the password or the letter 'y'.)

    ```bash
    sudo apt-get update
    sudo apt-get upgrade
    ```

    > This process takes about 10 ~ 30 minutes for the first time.

---
[>> Back to the main page](/README.md)
