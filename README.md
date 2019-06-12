# RALF

## Prerequisites

1. RALF is not shipped with trained models. Please train your own models first.
See https://github.com/code-iai/neem-auto-learner for more details.
2. Docker installed on your computer with support for Linux containers.
3. ROS is installed. See https://www.ros.org .

## How to use it
1. Start a roscore 
    ```bash
   roscore
   ```
2. To execute RALF for the first time just execute the following command: 
   ```bash
   docker run --network host --name ralf --mount source=<PATH_TO_YOUR_TRAINED_MODELS>,target=/app/models codeiai/ralf:1.0.0
   ```   
3. If you started the container once with the "docker run" command, please use the following command for future usage: 
    ```bash
    docker start ralf --attach
    ```    



