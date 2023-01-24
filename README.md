## for windows
### build
1. cd ./noetic_planning_demo
2. docker-compose up -d --build

### exec
1. docker-compose exec noetic-planning-demo bash
2. screen
(term 1)
3. roslaunch turtlebot3-gazebo 
(term 2)
4. roslaunch turtlebot3-slam slam slam_method:=gmapping
(term 3)
5. roslaunch turtlebot3-teleop
(term 4)
6. rosluanch turtlebot3-navigation move_base.launch