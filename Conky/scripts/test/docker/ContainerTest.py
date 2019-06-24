import unittest
from src.docker.Container import Container
from unittest.mock import patch

class ContainerTest(unittest.TestCase):


    COMMAND_RESULT_ZERO_CONTAINER = "CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES"
    COMMAND_RESULT_ONE_CONTAINER = '''CONTAINER ID        IMAGE                             COMMAND             CREATED             STATUS              PORTS               NAMES
f728a8c2b5b9        hello_friend_python_application   "python app.py"     6 seconds ago       Up 4 seconds        80/tcp              clever_golick'''
    COMMAND_RESULT_TWO_CONTAINER = '''CONTAINER ID        IMAGE                             COMMAND             CREATED              STATUS              PORTS               NAMES
d878f6455fd9        hello_friend_python_application   "python app.py"     4 seconds ago        Up 3 seconds        80/tcp              cocky_beaver
f728a8c2b5b9        hello_friend_python_application   "python app.py"     About a minute ago   Up About a minute   80/tcp              clever_golick'''

    OUTPUT_RESULT_ZERO_CONTAINER = "> Running container: 0"
    OUTPUT_RESULT_ONE_CONTAINER = '''> Running container: 1
  => 1: f728a8c2b5b9 / hello_friend_python_application / 80/tcp'''
    OUTPUT_RESULT_TWO_CONTAINER = '''> Running containers: 2
  => 1: d878f6455fd9 / hello_friend_python_application / 80/tcp
  => 2: f728a8c2b5b9 / hello_friend_python_application / 80/tcp'''

    @patch.object(Container, 'get_command_result')
    def test_no_container_running_should_display_zero(self, mock_my_method):
        # Could be made with the class name
        #Container.get_command_result = MagicMock(return_value = self.COMMAND_RESULT_ZERO_CONTAINER)
        list_of_return_values = self.COMMAND_RESULT_ZERO_CONTAINER
        def side_effect():
            return list_of_return_values
        mock_my_method.side_effect = side_effect

        container = Container()
        result = container.count_containers()
        self.assertEqual(self.OUTPUT_RESULT_ZERO_CONTAINER, result)

    @patch.object(Container, 'get_command_result')
    def test_one_container_running_should_display_one(self, mock_my_method):
        list_of_return_values = self.COMMAND_RESULT_ONE_CONTAINER
        def side_effect():
            return list_of_return_values
        mock_my_method.side_effect = side_effect

        container = Container()
        result = container.count_containers() + '\n' + container.get_container_names()
        self.assertEqual(self.OUTPUT_RESULT_ONE_CONTAINER, result)

    @patch.object(Container, 'get_command_result')
    def test_two_container_running_should_display_two(self, mock_my_method):
        list_of_return_values = self.COMMAND_RESULT_TWO_CONTAINER
        def side_effect():
            return list_of_return_values
        # Doesn't work ! :mock_my_method.side_effect = self.COMMAND_RESULT_TWO_CONTAINER
        mock_my_method.side_effect = side_effect

        container = Container()
        result = container.count_containers() + '\n' + container.get_container_names()
        self.assertEqual(self.OUTPUT_RESULT_TWO_CONTAINER, result)

    if __name__ == '__main__':
        unittest.main()