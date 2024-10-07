% Request the user to enter the desired color
selectedColor = input('Enter the color of the ball (red, green, blue): ', 's');

% Initialize a 3D matrix for the image
% Consider a sample image with size 100x100 pixels
ballImage = zeros(100, 100, 3); % RGB image

% Begin switch-case block
switch selectedColor
    case 'red'
        % Using for-loop to set the ball image to red
        tic;
        for i = 1:size(ballImage, 1)
            for j = 1:size(ballImage, 2)
                ballImage(i, j, 1) = 1; % Set red channel to 1
            end
        end
        toc;

    case 'green'
        % Using vectorization to set the ball image to green
        tic;
        ballImage(:, :, 2) = 1; % Set green channel to 1
        toc;

    case 'blue'
        % Using vectorization to set the ball image to blue
        tic;
        ballImage(:, :, 3) = 1; % Set blue channel to 1
        toc;

    otherwise
        disp('Unknown color selected. Please choose red, green, or blue.');
end
