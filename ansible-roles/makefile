all: clean  ansible-c ansible-h

ansible-c:
	@docker run -d -v ${PWD}/playbooks:/ansible -v ${PWD}/ssh-keys:/root/.ssh --name ansible-c --network ansible rafigabashirova/ansible-ubuntu:21.10 tail -f /dev/null

ansible-h:
	@docker run -d  --name ansible-h --network ansible wardove/ubuntu:ssh
	@docker run -d --name ansible-h2 --network ansible wardove/ubuntu:ssh

clean:
	@docker container rm -f ansible-h ansible-c ansible-h2
