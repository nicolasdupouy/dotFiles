import subprocess

from Conky.scripts.docker import Constants
from Conky.scripts.docker.Container import Container


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
    container = Container()
    print(container.count_containers())
    #s = command_result.split(NEW_LINE)
    #print(command_result)



docker_machine()
docker_container()




#[print(elem) for elem in s]
#print(type(docker_machine_ls.astype(str)))
#print(docker_machine_ls)
#print(docker_machine_ls.replace('"', '').replace("\n","").replace("\N","").replace("'", '').replace("[","").replace("]",""))


#print("Hello Friend !")

