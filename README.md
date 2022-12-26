# .dotfiles

Repository for setting up my virtual environments.

## Windows

1. Download and install [**App Installer**](https://apps.microsoft.com/store/detail/app-installer/9NBLGGH4NNS1?hl=en-us&gl=us).

2. Click the **Windows** key and search and then click on **Developer Settings**.

3. Under **Developer Mode** turn **On** the setting **Install apps from any source, including loose files.**

4. Open up Windows PowerShell as **Administrator**.

5. Enable PowerShell scripts.

```pwsh
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```
6. Change directory to **HOMEPATH**

```pwsh
Set-Location $env:HOMEPATH
```

7. Clone repository.

```pwsh
git clone git@github.com:DBragz/.dotfiles.git
```

8. Run initialization script.

```pwsh
Set-Location .\.dotfiles\
.\install.ps1
```

9. Click **Y** then **Enter** to install PowerShell 7.

10. Right click **PowerShell** and go to **Properties**. It is important to note that the following steps can also be used in **Command Prompt** and **Windows Terminal**.

11. Select the **Fonts** tab and select **MesloLGS NF**, if not available select **MesloLGS NFM**, and click **OK**.

## Mac

1. Clone repository.

```zsh
git clone git@github.com:DBragz/.dotfiles.git
```

2. Run initialization script.

```zsh
cd .dotfiles/
./install.sh
```

## Linux

1. Clone repository.

```sh
git clone git@github.com:DBragz/.dotfiles.git
```

2. Run initialization script.

```sh
cd .dotfiles/
./install.sh
```

### Alpine

**Note:** These steps continue after running through the **Linux** section.

1. Source the `.profile` file.  

```ash
source $HOME/.profile
```

2. Open Vim and install Vim plugins.


```ash
vim
:PlugInstall
```

## Authors

- [Daniel Ribeirinha-Braga](https://github.com/DBragz)

