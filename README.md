# .dotfiles

Repository for setting up my virtual environments.

## Windows

Sets up my Windows environment.

1. Open up PowerShell as **Administrator**.

2. Clone repository.

```posh
git clone git@github.com:DBragz/.dotfiles.git
```

3. Enable PowerShell scripts.

```posh
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

4. Initialize environment.

```posh
.\.dotfiles\install.ps1
```

## Mac

Sets up my Mac environment.

## Linux

Sets up my Linux environment.

## Authors

- [Daniel Ribeirinha-Braga](https://github.com/DBragz)
