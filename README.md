# .dotfiles

Repository for setting up my virtual environments.

## Windows

Sets up my Windows environment.

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

7. Initialize Chocolatey and Scoop package managers.

```pwsh
.\.dotfiles\install.ps1
```

## Mac

Sets up my Mac environment.

## Linux

Sets up my Linux environment.

## Authors

- [Daniel Ribeirinha-Braga](https://github.com/DBragz)
