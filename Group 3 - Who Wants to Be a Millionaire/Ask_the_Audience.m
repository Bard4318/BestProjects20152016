temp_Answer = handles.temp_Answer
rightanswer = handles.rightanswer
question = handles.question
pause(1)

%% Step 1: Generating the random values
% This generates a random row vector where there are 4 elements to match
% the 4 possible answers to choose from, represented by x.
% As the values displayed by the audience need to sum to 1, my row vector z
% represents each element in vector x divided by the sum of the elements in
% x to obtain a decimal which in turn sums to 1.
% Multiplied by 100 in order to give a percentage number rather than a
% decimal.

x = rand([1,4])
z = (x./sum(x))*100

%% Step 2: Allocating the element values in vector z to the answer options
% For our ask the audience we wanted to do it where the correct answer had
% the highest probability of being correct by the audience. Therefore for
% every correct answer there is a function.
% The same layout applies where an 'if' function is used:

if temp_Answer=='1'         % If the answer is equal to A, (1).
    A = max(z)              % The probability for option A will be the highest value of the matrix z.
    [~,idx] = max(z)        % Here the ~ means for an output to be discarded. This means that the index value of the maximum value of vector z is discarded. 
    z(idx) = []             % This ensures that the index chosen above displays an empty cell and that only answer choice A will have the highest probability.
    B = z(1,1)              % The vector z now becomes a [1,3] matrix so here B is assigned the value of row 1 column 1.
    C = z(1,2)              % C is assigned the value of row 1 column 2.
    D = z(1,3)              % D is assigned the value of row 1 column 3.
    f = [A,B,C,D]           % f is a row vector to display all the values for the question answers.
    figure                  % In order to display the results.
    bar(f)                  % Creates a bar chart of the vector f.
    bar(f,0.5)              % Indicates the bar takes up half the space to ensure the results are obvious to the contestant.
    Labels = {'A', 'B', 'C', 'D'};                      % Labels each bar to the given answer choice.
    set(gca, 'XTick', 1:4, 'XTickLabel', Labels);       % This sets the current axis handles, (gca = axis handles), for x to range from 1 to 4 as there are four options to be displayed.
    xlabel('Answer Options')                            % Labels the x-axis.
    ylabel('Audience Percentage')                       % Labels the y-axis.
    set(handles.pushbutton25,'visible', 'off')          % Ensures the pushbutton for ask the audience is no longer visible so cannot be used.
    [y,Fs] = audioread('Audienceend.wav');              % Loads the audio file that makes the sound for ask the audience, 'Audienceend.wav'.
    sound(y,Fs);                                        % Plays the chosen audio file.
end 

if temp_Answer=='2'         % If the answer is equal to B, (2).
    B = max(z)              % The probability for option B will be the highest value of the matrix z.
    [~,idx] = max(z)        % Here the ~ means for an output to be discarded. This means that the index value of the maximum value of vector z is discarded.
    z(idx) = []             % This ensures that the index chosen above displays an empty cell and that only answer choice B will have the highest probability.
    A = z(1,1)              % The vector z now becomes a [1,3] matrix so here A is assigned the value of row 1 column 1. 
    C = z(1,2)              % C is assigned the value of row 1 column 2.
    D = z(1,3)              % D is assigned the value of row 1 column 3.
    f = [A,B,C,D]           % f is a row vector to display all the values for the question answers.
    figure                  % In order to display the results.
    bar(f)                  % Creates a bar chart of the vector f.
    bar(f,0.5)              % Indicates the bar takes up half the space to ensure the results are obvious to the contestant.
    Labels = {'A', 'B', 'C', 'D'};                      % Labels each bar to the given answer choice.
    set(gca, 'XTick', 1:4, 'XTickLabel', Labels);       % This sets the current axis handles, (gca = axis handles), for x to range from 1 to 4 as there are four options to be displayed.
    xlabel('Answer Options')                            % Labels the x-axis.
    ylabel('Audience Percentage')                       % Labels the y-axis.
    set(handles.pushbutton25,'visible', 'off')          % Ensures the pushbutton for ask the audience is no longer visible so cannot be used.
    [y,Fs] = audioread('Audienceend.wav');              % Loads the audio file that makes the sound for ask the audience, 'Audienceend.wav'.
    sound(y,Fs);                                        % Plays the chosen audio file.
end 

if temp_Answer=='3'         % If the answer is equal to C, (3).
    C = max(z)              % The probability for option C will be the highest value of the matrix z.
    [~,idx] = max(z)        % Here the ~ means for an output to be discarded. This means that the index value of the maximum value of vector z is discarded.
    z(idx) = []             % This ensures that the index chosen above displays an empty cell and that only answer choice C will have the highest probability.
    A = z(1,1)              % The vector z now becomes a [1,3] matrix so here A is assigned the value of row 1 column 1. 
    B = z(1,2)              % B is assigned the value of row 1 column 2.
    D = z(1,3)              % D is assigned the value of row 1 column 3.
    f = [A,B,C,D]           % f is a row vector to display all the values for the question answers.
    figure                  % In order to display the results.
    bar(f)                  % Creates a bar chart of the vector f.
    bar(f,0.5)              % Indicates the bar takes up half the space to ensure the results are obvious to the contestant.
    Labels = {'A', 'B', 'C', 'D'};                     % Labels each bar to the given answer choice.
    set(gca, 'XTick', 1:4, 'XTickLabel', Labels);      % This sets the current axis handles, (gca = axis handles), for x to range from 1 to 4 as there are four options to be displayed.
    xlabel('Answer Options')                           % Labels the x-axis.
    ylabel('Audience Percentage')                      % Labels the y-axis.
    set(handles.pushbutton25,'visible', 'off')         % Ensures the pushbutton for ask the audience is no longer visible so cannot be used.
    [y,Fs] = audioread('Audienceend.wav');             % Loads the audio file that makes the sound for ask the audience, 'Audienceend.wav'. 
    sound(y,Fs);                                       % Plays the chosen audio file.
end 

if temp_Answer=='4'        % If the answer is equal to D, (4).
    D = max(z)             % The probability for option D will be the highest value of the matrix z.
    [~,idx] = max(z)       % Here the ~ means for an output to be discarded. This means that the index value of the maximum value of vector z is discarded.
    z(idx) = []            % This ensures that the index chosen above displays an empty cell and that only answer choice D will have the highest probability.
    A = z(1,1)             % The vector z now becomes a [1,3] matrix so here A is assigned the value of row 1 column 1.
    B = z(1,2)             % B is assigned the value of row 1 column 2.
    C = z(1,3)             % D is assigned the value of row 1 column 3.
    f = [A,B,C,D]          % f is a row vector to display all the values for the question answers.
    figure                 % In order to display the results.
    bar(f)                 % Creates a bar chart of the vector f.
    bar(f,0.5)             % Indicates the bar takes up half the space to ensure the results are obvious to the contestant.
    Labels = {'A', 'B', 'C', 'D'};                      % Labels each bar to the given answer choice.
    set(gca, 'XTick', 1:4, 'XTickLabel', Labels);       % This sets the current axis handles, (gca = axis handles), for x to range from 1 to 4 as there are four options to be displayed.
    xlabel('Answer Options')                            % Labels the x-axis.
    ylabel('Audience Percentage')                       % Labels the y-axis.
    set(handles.pushbutton25,'visible', 'off')          % Ensures the pushbutton for ask the audience is no longer visible so cannot be used.
    [y,Fs] = audioread('Audienceend.wav');              % Loads the audio file that makes the sound for ask the audience, 'Audienceend.wav'.
    sound(y,Fs);                                        % Plays the chosen audio file.
end 

guidata(hObject, handles);

