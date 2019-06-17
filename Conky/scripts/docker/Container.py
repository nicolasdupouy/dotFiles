import subprocess

import Constants

class Container:

    def __init__(self):
        container_ls = subprocess.check_output(Constants.DOCKER_CONTAINER_COMMAND)
        command_result = container_ls.decode(Constants.UTF_8)
        self.valid_lines = self.filter_header_and_empty_lines(command_result)

    def count_containers(self):
        line_number = len(self.valid_lines)
        if line_number > 1:
            return "{} {}".format(Constants.RUNNING_CONTAINERS, line_number)
        else:
            return "{} {}".format(Constants.RUNNING_CONTAINER, line_number)

    def display_container_names(self):
        for index, line in enumerate(self.valid_lines):
            elements = self.split_results(line)
            (container_id, image) = self.extract_container_and_image_name(elements)
            print("  => {}: {} / {}".format(index+1, container_id, image))

    def filter_header_and_empty_lines(self, command_result):
        return [line for line in command_result.split(Constants.NEW_LINE) if not self.is_header_or_empty_line(line)]

    def is_header_or_empty_line(self, line):
        return self.is_empty_line(line) or self.contains_header(line)

    def is_empty_line(self, line):
        return len(line) == 0

    def contains_header(self, line):
        return Constants.CONTAINER_ID in line and Constants.IMAGE in line

    def split_results(self, line):
        return [elem for elem in line.split(' ') if len(elem) > 0]

    def extract_container_and_image_name(self, elements):
        return (elements[0], elements[1])