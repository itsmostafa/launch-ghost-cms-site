
.PHONY: all help start up

# make all - Default Target. Does nothing.
all:
	@echo "For more information try 'make help'."

# target: help - Display callable targets.
help:
	@egrep "^# target:" [Mm]akefile

# target: start = install all packages and enable ufw
start:
	sudo chmod +x ./etc/ubuntu-start.sh
	echo -e "yes\nyes\nyes\nyes" | ./etc/ubuntu-start.sh

# target: up = run ghost application
up:
	docker-compose up -d

# target: stop = stop ghost application
stop:
	docker-compose stop

# target: update = update to latest version of ghost
update:
	sudo chmod +x ./etc/update.sh
	./etc/update.sh
