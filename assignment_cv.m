% Define a zero matrix of size 100x100
A = zeros(100, 100);

% Center of the shape
Cx = 50;
Cy = 50;

% Radius or distance threshold
Radius = 20;

% For Euclidean Distance
for i = 1:100
    for j = 1:100
        % Euclidean distance formula
        if sqrt((Cx - i)^2 + (Cy - j)^2) <= Radius
            A(i, j) = 255; % Assign value for Euclidean distance
        end
    end
end
imshow(A);
title('Euclidean Distance');

% Clear A and reuse it for City Block distance
A = zeros(100, 100);

% For City Block (Manhattan) Distance
for i = 1:100
    for j = 1:100
        % City Block distance formula
        if abs(Cx - i) + abs(Cy - j) <= Radius
            A(i, j) = 255; % Assign value for City Block distance
        end
    end
end
figure;
imshow(A);
title('City Block Distance');

% Clear A and reuse it for Chessboard distance
A = zeros(100, 100);

% For Chessboard Distance
for i = 1:100
    for j = 1:100
        % Chessboard distance formula
        if max(abs(Cx - i), abs(Cy - j)) <= Radius
            A(i, j) = 255; % Assign value for Chessboard distance
        end
    end
end
figure;
imshow(A);
title('Chessboard Distance');
