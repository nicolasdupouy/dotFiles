import subprocess

import Constants
from Container import Container


def docker_machine():
    print("> docker-machine ls")
    docker_machine_ls = subprocess.check_output(Constants.DOCKER_MACHINE_COMMAND)
    result = docker_machine_ls.decode(Constants.UTF_8)
    s = result.split(Constants.NEW_LINE)
    for elem in s:
        print(elem)

def docker_container():
    container = Container()
    print(container.count_containers())
    container.display_container_names()

docker_machine()
docker_container()
