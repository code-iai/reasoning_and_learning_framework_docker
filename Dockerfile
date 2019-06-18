FROM codeiai/ralf-base:1.0.3
WORKDIR /home/ros/catkin_ws/src
ENV PYTHONUNBUFFERED=0
COPY reasoning_and_learning_framework ./reasoning_and_learning_framework
COPY reasoning_and_learning_framework_msgs ./reasoning_and_learning_framework_msgs
COPY json_prolog_msgs ./json_prolog_msgs

RUN /bin/bash -c 'source /opt/ros/kinetic/setup.bash; cd /home/ros/catkin_ws/; catkin_make'
ENTRYPOINT /bin/bash -c 'source /opt/ros/kinetic/setup.bash; source /home/ros/catkin_ws/devel/setup.bash; python reasoning_and_learning_framework/src/ralf.py /app/models/'
