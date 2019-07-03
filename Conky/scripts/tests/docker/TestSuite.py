import unittest

from tests.docker.ContainerTest import ContainerTest
from tests.docker.SwarmTest import SwarmTest

def get_suite():
    suite = unittest.TestSuite()
    suite.addTest(unittest.makeSuite(ContainerTest))
    suite.addTest(unittest.makeSuite(SwarmTest))
    return suite

if __name__ == "__main__":
    unittest.TextTestRunner().run(get_suite())