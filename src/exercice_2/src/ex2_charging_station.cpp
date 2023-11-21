#include "ros/ros.h"

#include "exercice_2/charge_status_req.h"
#include "exercice_2/charge_status_answer.h"


#define QUEUE_SIZE (5)
#define CHARGE_STATUS_ANSWER_TOPIC ("/charge_status/answer")
#define CHARGE_STATUS_REQ_TOPIC ("/charge_status/req")
#define REFRESH_FREQ (5)


void receivedRobotPosition(const exercice_2::charge_status_answer::ConstPtr &msg) {
    ROS_INFO("Robot is at %d - %s!", msg->room_id, msg->room_name.c_str());
}

int main(int argc, char **argv) {
    std::string roomName;
    int id;
    int timeout;

    ros::init(argc, argv, "charging_station");
    ros::NodeHandle n("~");
    ros::Publisher pub = n.advertise<exercice_2::charge_status_req>(CHARGE_STATUS_REQ_TOPIC, QUEUE_SIZE);
    ros::Subscriber sub = n.subscribe(CHARGE_STATUS_ANSWER_TOPIC, QUEUE_SIZE, receivedRobotPosition);

    // Get info from param
    n.param<int>("id", id, 0);
    n.param<std::string>("name", roomName, "default");
    n.param<int>("timeout", timeout, 5);
    
    exercice_2::charge_status_req msg;
    msg.id = id;

    ros::Rate loop_rate(1.0 / timeout);

    while (ros::ok()) {
        pub.publish(msg);

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}