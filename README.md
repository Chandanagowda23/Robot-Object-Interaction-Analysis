# Robot Object Interaction Analysis

## Overview
This MATLAB function, `Project2`, calculates the expected time for a robot to reach an object based on a specified probability parameter, `p`. The function models the robot's movement in discrete steps, considering different distances between the robot and the object.

## Function Description
The function takes a probability parameter `p` as input and returns the expected time for the robot to reach the object. The analysis is conducted in discrete steps, with the distance between the robot and the object influencing the expected time.

## Parameters
- `p`: Probability parameter influencing the robot's movement.

## Mathematical Model
The function utilizes a mathematical model to compute the expected time for the robot's movement. It considers different distances between the robot and the object, adjusting the expected time accordingly.

## Usage
To use the function, provide a value for the probability parameter `p` and call the function. Example usage:
```matlab
expected_time = Project2(0.5);
disp(['Expected Time: ' num2str(expected_time)]);
