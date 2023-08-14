import unittest
from unittest.mock import patch

from src.docker import Constants
from src.docker.Swarm import Swarm


class SwarmTest(unittest.TestCase):

    def setUp(self):
        self.swarm = Swarm()

    def mock_side_effect_for_success_return_code(self):
        return Constants.RETURN_CODE_SUCCESS

    def mock_side_effect_for_error_return_code(self):
        return Constants.RETURN_CODE_ERROR

    @patch.object(Swarm, 'run_check_command')
    def test_Swarm_not_initialized(self, stub):
        stub.side_effect = self.mock_side_effect_for_error_return_code
        self.assertEqual(False, self.swarm.isInitialized())

    @patch.object(Swarm, 'run_check_command')
    def test_Swarm_is_initialized(self, stub):
        stub.side_effect = self.mock_side_effect_for_success_return_code
        self.assertEqual(True, self.swarm.isInitialized())
