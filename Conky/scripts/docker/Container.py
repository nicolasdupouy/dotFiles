import subprocess

from Conky.scripts.docker import Constants

class Container:

    def __init__(self):
        container_ls = subprocess.check_output(Constants.DOCKER_CONTAINER_COMMAND)
        self.command_result = container_ls.decode(Constants.UTF_8)

    def count_containers(self):
        valid_lines = self.filter_header_and_empty_lines()
        line_number = len(valid_lines)
        if line_number > 1:
            return "{} {}".format(Constants.RUNNING_CONTAINERS, line_number)
        else:
            return "{} {}".format(Constants.RUNNING_CONTAINER, line_number)

    def filter_header_and_empty_lines(self):
        return [line for line in self.command_result.split(Constants.NEW_LINE) if not self.is_header_or_empty_line(line)]

    def is_header_or_empty_line(self, line):
        return self.is_empty_line(line) or self.contains_header(line)

    def is_empty_line(self, line):
        return len(line) == 0

    def contains_header(self, line):
        return Constants.CONTAINER_ID in line and Constants.IMAGE in line