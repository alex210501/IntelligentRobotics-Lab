#include "ros/ros.h"
#include "exercice_1/charge_status.h"


#define QUEUE_SIZE (5)
#define CHARGE_STATUS_TOPIC ("charge_status")

void chargeStatusCallback(const exercice_1::charge_status::ConstPtr &msg) {
    ROS_INFO("--- New message ---");
    ROS_INFO("Room ID: %d", msg->room_id);
    ROS_INFO("Room name: %s", msg->room_name.c_str());
    ROS_INFO("Charge status: %d", msg->charge_status);
}

int main(int argc, char **argv) {
    // Start node
    ros::init(argc, argv, "charging_station");
    ros::NodeHandle n;

    // Subscriber
    ros::Subscriber sub = n.subscribe(CHARGE_STATUS_TOPIC, QUEUE_SIZE, chargeStatusCallback);

    ros::spin();

    return 0;
}