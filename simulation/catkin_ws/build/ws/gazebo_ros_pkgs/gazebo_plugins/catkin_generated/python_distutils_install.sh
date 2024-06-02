#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_plugins"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/truan/Object-Detection/simulation/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/truan/Object-Detection/simulation/catkin_ws/install/lib/python3/dist-packages:/home/truan/Object-Detection/simulation/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/truan/Object-Detection/simulation/catkin_ws/build" \
    "/usr/bin/python3" \
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_plugins/setup.py" \
     \
    build --build-base "/home/truan/Object-Detection/simulation/catkin_ws/build/ws/gazebo_ros_pkgs/gazebo_plugins" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/truan/Object-Detection/simulation/catkin_ws/install" --install-scripts="/home/truan/Object-Detection/simulation/catkin_ws/install/bin"
