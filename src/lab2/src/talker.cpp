#include "ros/ros.h"
#include "lab2/msg1.h"
#include <sstream>
int main(int argc, char **argv)
{
    ros::init(argc, argv, "example2_a");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<lab2::msg1>("message", 1000);
    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        lab2::msg1 msg;
        msg.A = 21;
        msg.B = 32;
        msg.C = 43;
        pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}