#include "ros/ros.h"
#include "std_msgs/String.h"

#include "exercice_1/charge_status.h"

#define QUEUE_SIZE (5)
#define CHARGE_STATUS_TOPIC ("charge_status")
#define REFRESH_FREQ (5)

int main(int argc, char **argv) {
    int dummyCounter = 100;

    if (argc < 3) {
        ROS_ERROR("Must pass the ID and name of the room!");
        return 1;
    }

    int roomId = std::stoi(argv[1]);
    std::string roomName = argv[2];
    std::string nodeName = "robot" + std::to_string(roomId);

    // Start node
    ros::init(argc, argv, nodeName);
    ros::NodeHandle n;

    // Publisher
    ros::Publisher pub = n.advertise<exercice_1::charge_status>(CHARGE_STATUS_TOPIC, QUEUE_SIZE); 
    ros::Rate loop_rate(REFRESH_FREQ);

    while (ros::ok()) {
        exercice_1::charge_status msg;

        msg.room_id = roomId;
        msg.room_name = roomName;
        msg.charge_status = dummyCounter--;

        if (dummyCounter < 0) dummyCounter = 100;

        pub.publish(msg);

        ROS_DEBUG("Printing...");
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}