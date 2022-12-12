# .dotfiles

Repository for setting up my virtual environments.

## Windows

1. Download and install [**App Installer**](https://apps.microsoft.com/store/detail/app-installer/9NBLGGH4NNS1?hl=en-us&gl=us).

2. Open up Windows PowerShell as **Administrator**.

3. Enable PowerShell scripts.

```pwsh
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

4. Close Windows PowerShell.

5. Open up another Windows PowerShell not as **Administrator**.

6. Clone repository.

```pwsh
git clone git@github.com:DBragz/.dotfiles.git
```

7. Run initialization script.

```pwsh
Set-Location .\.dotfiles\
.\install.ps1
```

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

```ash
git clone git@github.com:DBragz/.dotfiles.git
```

2. Run initialization script.

```ash
cd .dotfiles/
./install.sh
```

### Alpine

1. Source the `.profile` file.  

```ash
source $HOME/.profile
```

## Authors

- [Daniel Ribeirinha-Braga](https://github.com/DBragz)

