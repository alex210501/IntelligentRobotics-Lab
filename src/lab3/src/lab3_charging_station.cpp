#include "ros/ros.h"
#include <actionlib/client/simple_action_client.h> 
#include <actionlib/client/terminal_state.h> 

#include <lab3/ChargeAction.h>

#define ACTION_NAME "charge"

typedef actionlib::SimpleActionClient<lab3::ChargeAction> Client;

class ChargeActionClient
{
    ros::NodeHandle n;
    Client client;

public:
    ChargeActionClient(std::string name) : client(name, true) {};

    void waitForServer() { client.waitForServer(); }
    void sendGoal(int battery_goal) {
        lab3::ChargeGoal goal;

        goal.goal = battery_goal;

        client.sendGoal(
            goal,
            boost::bind(&ChargeActionClient::doneCallback, this, _1, _2),
            boost::bind(&ChargeActionClient::activeCallback, this),
            boost::bind(&ChargeActionClient::feedbackCallback, this, _1)
        );
    }

    void activeCallback() { ROS_INFO("Goal just went send!"); }
    
    void feedbackCallback(const lab3::ChargeFeedbackConstPtr& feedback) {
        ROS_INFO("Feedback - %d%%", feedback->battery);
    }

    void doneCallback(const actionlib::SimpleClientGoalState& state, lab3::ChargeResultConstPtr) {
        ROS_INFO("Action finished - %s", state.toString().c_str());   
    }
};


int main(int argc, char **argv) {
    ros::init(argc, argv, "charging_station");
    ChargeActionClient client(ACTION_NAME);

    client.waitForServer();
    client.sendGoal(90);

    while(ros::ok()) { 
        ros::spinOnce(); 
    }

    return 0;
}