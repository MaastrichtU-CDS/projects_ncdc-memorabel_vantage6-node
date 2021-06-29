from pathlib import Path
from vantage6.common.globals import (
    APPNAME,
    STRING_ENCODING
)


#
#   NODE SETTINGS
#
DEFAULT_NODE_SYSTEM_FOLDERS = False

DEFAULT_NODE_ENVIRONMENT = "application"

DEFAULT_GPU_IMAGE_PLACEHOLDER = "gpu-image"

DEFAULT_GPU_IMAGE_KEY = "GPU_DOCKER_IMAGE"

#
#   INSTALLATION SETTINGS
#
PACAKAGE_FOLDER = Path(__file__).parent.parent.parent

NODE_PROXY_SERVER_HOSTNAME = "proxyserver"

DATA_FOLDER = PACAKAGE_FOLDER / APPNAME / "_data"

# with open(Path(PACAKAGE_FOLDER) / APPNAME / "node" / "VERSION") as f:
#     VERSION = f.read()