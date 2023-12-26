function [expected_time] = Project2(p)

    robot = 5; % Robot position
    object = 19; % Object position
    second_value = (2-3*p)/(1-p)^2; % Calculated expected time when there is a 2 unit distance
    first_value= 1/(1-p); % Calculated expected time when there is a 1 unit distance
    expected_time = 0; 
    iterator = 3;

    while 1 % Loop till object position, starting from the robot position
        exp_current = (1/(1-p))+ (((1-2*p)*(first_value))/(1-p)) + ((p * (second_value))/ (1-p)); % Computing the each unit expected time.
        if (iterator > object)
            break;
        elseif (iterator >= robot) && (iterator <= object) % If the iteration has reached the robot poition
            expected_time = exp_current + expected_time; % computing cumulative expected time from the distance of object to the robot.
        elseif (iterator < robot) && (iterator <= object)
            expected_time = 0;
        end
        iterator = iterator+1; % Next position
        second_value = first_value; 
        first_value= exp_current;
    end

    expected_time = expected_time / 15; % with respect to the position (Uniformly distributed)

end
