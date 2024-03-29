# .dotfiles

Repository for setting up my virtual environments.

## Windows 11

1. Open **Terminal** application.

2. Install Git.

```pwsh
winget install --id Git.Git -e --source winget
```

3. Exit **Terminal**.

4. Open a new **Terminal**.

5. Enable PowerShell scripts.

```pwsh
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

6. From your home directory clone the repository.

```pwsh
git clone git@github.com:DBragz/.dotfiles.git
```

7. Run initialization script.

```pwsh
Set-Location .\.dotfiles\
.\install.ps1
```

8. Open up nvim and install plugins using Packer.

```pwsh
nvim
:PackerSync
```

## Windows 10

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

7. From your home directory clone the repository.

```pwsh
git clone git@github.com:DBragz/.dotfiles.git
```

8. Run initialization script.

```pwsh
Set-Location .\archive\.dotfiles\
.\install.ps1
```

9. Click **Y** then **Enter** to install PowerShell 7.

10. Right click **PowerShell** and go to **Properties**. It is important to note that the following steps can also be used in **Command Prompt** and **Windows Terminal**.

11. Select the **Fonts** tab and select **MesloLGS NF**, if not available select **MesloLGS NFM**, and click **OK**.

12. Open up a new **Terminal** window **not** in **Administrator** mode.

13. Open up nvim and install plugins using packer.

```pwsh
nvim
:PackerSync
```

## Mac

1. From your home directory clone the repository.

```zsh
git clone git@github.com:DBragz/.dotfiles.git
```

2. Run initialization script.

```zsh
cd .dotfiles/
./install.sh
```

3. Click **command** and **,** and go to **Profiles** -> **Text**. It is important to note that the following steps can also be used in **Terminal** and **iTerm**.

4. Select the **Fonts** tab and select **MesloLGS Nerd Font**, if not available select **MesloLGS NFM**, and click **OK**.

5. Open up nvim and install plugins using packer.

```pwsh
nvim
:PackerSync
```

## Linux

1. From your home directory clone the repository.

```sh
git clone git@github.com:DBragz/.dotfiles.git
```

2. Run initialization script.

```sh
cd .dotfiles/
./install.sh
```

### Alpine

**Note:** These steps continue after running through the [Linux](https://github.com/DBragz/.dotfiles#linux) section.

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

