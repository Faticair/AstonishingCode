from fabric.api import *
from fabric.contrib.console import confirm
from fabric.utils import abort
from fabric.colors import *

env.hosts = ['10.0.39.221']
env.port = 22
env.user = 'zahi'
env.password = 'zahi'

def hostname():
    run('hostname')

def ls(path='.'):
    run('ls {}'.format(path))
    
def network():
    run('ifconfig')
