## Requirements

- **Docksal** - all-purpose web-development environment based on Docker and Docker Compose.
See https://docksal.io/

- **Git** - a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
See https://git-scm.com/

## Install global custom docksal command

```bash
wget -O - https://raw.githubusercontent.com/fivejars/remote-docksal-config/INSTALL-SCRIPT/load-fj-docksal-commands.sh | bash
```

This script will download global commands to `~/.docksal/commands` directory

## How to use

Go to project root and run this command:

```bash
fin fj/docksal [project name] [branch name:optional]
```

This command will download appropriate `.docksal` directory to project root directory.

Please note that `.docksal` should be in `.gitignore`.

If you want to get `.docksal` update, just run this command again, it will pull updates from repository.

## Update global custom docksal command

Just run install command again, it will download updates.

Or go to `~/.docksal/commands/fj` directory and run `git pull`.