import subprocess

from src.docker import Constants


class Swarm:

    def isInitialized(self):
        return True if self.run_check_command()==Constants.RETURN_CODE_SUCCESS else False

    def run_check_command(self):
        return subprocess.call(Constants.DOCKER_STACK_COMMAND, stdout=subprocess.PIPE)