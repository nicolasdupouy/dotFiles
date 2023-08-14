import subprocess

from src.docker import Constants
from src.docker.Container import Container
from src.docker.Swarm import Swarm

class DockerInformations():
    def __init__(self):
        self.swarm = Swarm()

    def display_informations(self):
        self.display_machine()
        if self.swarm.isInitialized():
            self.display_stack()
            self.display_service()
        self.display_container()

    def display_machine(self):
        self.display_command(Constants.DOCKER_MACHINE_COMMAND)

    def display_stack(self):
        self.display_command(Constants.DOCKER_STACK_COMMAND)

    def display_service(self):
        self.display_command(Constants.DOCKER_SERVICE_COMMAND)

    def display_command(self, command):
        print(self.get_command_to_display(command))

    def get_command_to_display(self, command):
        result = [self.get_command_line_entered(command)] \
                 + self.get_command_output(command)
        return "\n".join(result)

    def get_command_line_entered(self, command):
        return '> ' + " ".join(command)

    def get_command_output(self, command):
        docker_machine_ls = subprocess.check_output(command)
        result = docker_machine_ls.decode(Constants.UTF_8)
        return result.split(Constants.NEW_LINE)

    def display_container(self):
        container = Container()
        print(container.count_containers())
        print(container.get_container_names())