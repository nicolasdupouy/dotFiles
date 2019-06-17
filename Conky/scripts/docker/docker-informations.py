import subprocess

from Conky.scripts.docker import Constants


def docker_machine():
    #subprocess.run(["ls", "-l"])
    print("> docker-machine ls")
    #subprocess.run(["docker-machine", "ls"])
    docker_machine_ls = subprocess.check_output(Constants.DOCKER_MACHINE_COMMAND)
    #print("> docker-machine ls \n{}".format(docker_machine_ls))
    result = docker_machine_ls.decode(Constants.UTF_8)
    s = result.split(Constants.NEW_LINE)
    #l1 = [element for element in result.split(NEW_LINE) if len(element) > 0]
    #l2 = filter(lambda x: len(x) > 0, s)
    for elem in s:
        print(elem)

def docker_container():
    container_ls = subprocess.check_output(Constants.DOCKER_CONTAINER_COMMAND)
    command_result = container_ls.decode(Constants.UTF_8)
    print(count_containers(command_result))
    #s = command_result.split(NEW_LINE)
    #print(command_result)

def count_containers(command_result):
    valid_lines = filter_header_and_empty_lines(command_result)
    line_number = len(valid_lines)
    if line_number > 1:
        return "{} {}".format(Constants.RUNNING_CONTAINERS, line_number)
    else:
        return "{} {}".format(Constants.RUNNING_CONTAINER, line_number)

def filter_header_and_empty_lines(command_result):
    return [line for line in command_result.split(Constants.NEW_LINE) if not is_header_or_empty_line(line)]

def is_header_or_empty_line(line):
    return is_empty_line(line) or contains_header(line)

def is_empty_line(line):
    return len(line) == 0

def contains_header(line):
    return Constants.CONTAINER_ID in line and Constants.IMAGE in line

docker_machine()
docker_container()




#[print(elem) for elem in s]
#print(type(docker_machine_ls.astype(str)))
#print(docker_machine_ls)
#print(docker_machine_ls.replace('"', '').replace("\n","").replace("\N","").replace("'", '').replace("[","").replace("]",""))


#print("Hello Friend !")

