import unittest
from unittest.mock import patch

from src.docker import Constants
from src.docker.Swarm import Swarm


class SwarmTest(unittest.TestCase):

    ERROR_WHEN_NOT_INITIALIZED = 'Error response from daemon: This node is not a swarm manager. Use "docker swarm init" or "docker swarm join" to connect this node to swarm and try again.'

    def setUp(self):
        self.swarm = Swarm()

    def mock_side_effect_for_success_return_code(self):
        return Constants.RETURN_CODE_SUCCESS

    def mock_side_effect_for_error_return_code(self):
        return Constants.RETURN_CODE_ERROR

    @patch.object(Swarm, 'run_check_command')
    def test_Swarm_not_initialized(self, stub):
        stub.side_effect = self.mock_side_effect_for_error_return_code
        self.assertEquals(False, self.swarm.isInitialized())

    @patch.object(Swarm, 'run_check_command')
    def test_Swarm_is_initialized(self, stub):
        stub.side_effect = self.mock_side_effect_for_success_return_code
        self.assertEquals(True, self.swarm.isInitialized())