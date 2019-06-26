import subprocess

from src.docker import Constants
from src.docker.Container import Container

def display_machine():
    display_command(Constants.DOCKER_MACHINE_COMMAND)

def display_stack():
    display_command(Constants.DOCKER_STACK_COMMAND)

def display_service():
    display_command(Constants.DOCKER_SERVICE_COMMAND)

def display_command(command):
    print(get_command_to_display(command))

def get_command_to_display(command):
    result = [get_command_line_entered(command)] \
           + get_command_output(command)
    return "\n".join(result)

def get_command_line_entered(command):
    return '> ' + " ".join(command)

def get_command_output(command):
    docker_machine_ls = subprocess.check_output(command)
    result = docker_machine_ls.decode(Constants.UTF_8)
    return result.split(Constants.NEW_LINE)

def display_container():
    container = Container()
    print(container.count_containers())
    print(container.get_container_names())

if __name__ == '__main__':
    display_machine()
    display_stack()
    display_service()
    display_container()
