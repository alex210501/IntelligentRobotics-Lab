#include "ros/ros.h"
#include "std_msgs/String.h"

#include "exercice_2/charge_status_req.h"
#include "exercice_2/charge_status_answer.h"


#define QUEUE_SIZE (5)
#define CHARGE_STATUS_ANSWER_TOPIC ("/charge_status/answer")
#define CHARGE_STATUS_REQ_TOPIC ("/charge_status/req")
#define REFRESH_FREQ (100)


bool reqReceived = false;

void sendChargeStatus(const exercice_2::charge_status_req::ConstPtr &msg) {
    reqReceived = true;
    ROS_INFO("Request received from %d!", msg->id);
}

int main(int argc, char **argv) {
    // Start node
    ros::init(argc, argv, "robot");
    ros::NodeHandle n("~");
    ros::Publisher pub = n.advertise<exercice_2::charge_status_answer>(CHARGE_STATUS_ANSWER_TOPIC, QUEUE_SIZE);
    ros::Subscriber sub = n.subscribe(CHARGE_STATUS_REQ_TOPIC, QUEUE_SIZE, sendChargeStatus);

    ros::Rate loopRate(REFRESH_FREQ);

    while (ros::ok()) {
        if (reqReceived) {
            exercice_2::charge_status_answer answer;

            answer.room_id = 3;
            answer.room_name = "Damn";
            answer.status = 100;
            reqReceived = false;

            pub.publish(answer);
        }

        ros::spinOnce();
        loopRate.sleep();
    }

    return 0;
}