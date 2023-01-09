# fish shell  configurations

# aliases
# navigation aliases
alias ..='cd ..'
alias home='cd --'

# apt alias
alias install='sudo apt install -y'
alias update='sudo apt update -y'
alias upgrade='sudo apt upgrade -y'
alias uninstall='sudo apt remove --autoremove'
alias autoremove='sudo apt autoremove'
alias autoclean='sudo apt autoclean'
alias purge='sudo apt purge --autoremove'

# maven aliases
# alias install='mvn clean install -DskipTests'
# alias build='mvn clean package -DskipTests'
# alias assert='mvn test'
# alias clean='mvn clean'

# spring boot
#calias run='mvn spring-boot:run'
# alias build-image='mvn spring-boot:build-image -DskipTests'

# other aliases 

# docker/docker-compose alias
alias db='docker build'
alias dc='docker-compose'

# git aliases
alias g='git'
# alias gp='git push'
alias gi='git init'
alias gr='git remote'
alias pull='git pull'

# functional aliases

function commit
	if test (count $argv) -lt 1
		echo "Error: missing 'commit message'"
		echo "Usage: commit <commit message>"
	else
		g add .
		git commit -m $argv[1]
		# gpom
	end
end

function push
	if test (count $argv) -lt 1
		echo "Error: missing 'commit message'"
		echo "Usage: push <commit message>"
	else
		g add .
		git commit -m $argv[1]
		git push
	end
end

function run
	sdlc run
end

function assert
	sdlc test
end

function build
	sdlc build
end

# source config.fish.local
if test -f $HOME/.config/fish/config.local.fish
	. $HOME/.config/fish/config.local.fish
end
