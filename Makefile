COLOR_NC='\e[0m'
COLOR_GREEN='\e[0;32m'
COLOR_B_CYAN='\e[1;36m'
TAB='           '

all: up

compose: up

start: up

decompose: down

stop: down

up:
	@mkdir -p src
	@echo =============================================
	@echo '=                                           ='
	@echo -e '=   '${COLOR_GREEN}Files at ${COLOR_B_CYAN}src/ ${COLOR_GREEN}are shared with pgadmin${COLOR_NC}'   ='
	@echo '=                                           ='
	@echo =============================================
	@docker compose up

down:
	@docker compose down

connect: cmd-connect

cmd-connect:
	@docker compose exec cmd-interface sh

remove: re

refresh: re

ref: re

re:
	@docker compose down --rmi local --remove-orphans -v
