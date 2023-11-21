#include "ros/ros.h"
#include <actionlib/server/simple_action_server.h>

#include "lab3/ChargeAction.h"

#define ACTION_TOPIC "/charge"
#define CHARGING_TIME 11

typedef actionlib::SimpleActionServer<lab3::ChargeAction> Server;

class ChargeAction 
{
    ros::NodeHandle n;
    Server server;
    std::string action_name;
    lab3::ChargeFeedback feedback;

public:
    ChargeAction(std::string name) : server(n, 
                                            name, 
                                            boost::bind(&ChargeAction::execute, this, _1), 
                                            false),
                                     action_name(name) 
    {
        server.start();
    }

    void execute(const lab3::ChargeGoalConstPtr &goal) 
    {
        ros::Rate rate(1);
        float battery = 5;  // 5 %
        float charging_rate = (float)(goal->goal - battery) / CHARGING_TIME;
        
        for (int i = 0; i < CHARGING_TIME; i++) {
            battery += charging_rate;

            feedback.battery = (int)battery;
            server.publishFeedback(feedback);
            ROS_INFO("Feedback - %d%%", feedback.battery);
            rate.sleep();
        }

        lab3::ChargeResult result;

        if (battery == goal->goal) {
            result.result = true;
            server.setSucceeded(result);
        } else {
            result.result = false;
            server.setPreempted(result);
        }
    }
};


int main(int argc, char **argv) {
    ros::init(argc, argv, "lab3_robot");
    ChargeAction chargeAction("charge");

    while (ros::ok()) {
        ros::spinOnce();
    }

    return 0;
}