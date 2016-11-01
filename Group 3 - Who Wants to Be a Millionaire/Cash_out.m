temp_Answer = handles.temp_Answer
rightanswer = handles.rightanswer
question = handles.question
pause(1)

%% Overview of the code for the Cash-out option
% The aim of the cashout is when the contestant clicks this pushbutton
% it'll automatically stop the game and come up with a message saying how
% much they have won. Here the pushbutton31 relates to the cash-out option
% however more detail about the interface can be found in the 'Interface
% Detail' script to gain further understanding.


% Question 1 cash-out option
if question == 1                                    % Relates what question stage the contestant is on, in this case the 1st question.
    set(handles.cashout1,'visible','on')            % Makes the static textbox for the first cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
end

% Question 2 cash-out option
if question == 2                                    % Relates what question stage the contestant is on, in this case the 2nd question.
    set(handles.cashout2,'visible','on')            % Makes the static textbox for the second cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end

% Question 3 cash-out option
if question == 3                                    % Relates what question stage the contestant is on, in this case the 3rd question.
    set(handles.cashout3,'visible','on')            % Makes the static textbox for the third cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.  
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end 

% Question 4 cash-out option
if question == 4                                    % Relates what question stage the contestant is on, in this case the 4th question.
    set(handles.cashout4,'visible','on')            % Makes the static textbox for the fourth cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end 

% Question 5 cash-out option
if question == 5                                    % Relates what question stage the contestant is on, in this case the 5th question.
    set(handles.cashout5,'visible','on')            % Makes the static textbox for the fifth cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end 

% Question 6 cash-out option
if question == 6                                    % Relates what question stage the contestant is on, in this case the 6th question.
    set(handles.cashout6,'visible','on')            % Makes the static textbox for the sixth cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end 

% Question 7 cash-out option
if question == 7                                    % Relates what question stage the contestant is on, in this case the 7th question.
    set(handles.cashout7,'visible','on')            % Makes the static textbox for the seventh cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end

% Question 8 cash-out option
if question == 8                                    % Relates what question stage the contestant is on, in this case the 8th question.
    set(handles.cashout8,'visible','on')            % Makes the static textbox for the eighth cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end 

% Question 9 cash-out option
if question == 9                                    % Relates what question stage the contestant is on, in this case the 9th question.
    set(handles.cashout9,'visible','on')            % Makes the static textbox for the ninth cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end 

% Question 10 cash-out option
if question == 10                                   % Relates what question stage the contestant is on, in this case the 10th question.
    set(handles.cashout10,'visible','on')           % Makes the static textbox for the tenth cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end             

% Question 11 cash-out option
if question == 11                                   % Relates what question stage the contestant is on, in this case the 11th question.
    set(handles.cashout11,'visible','on')           % Makes the static textbox for the eleventh cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end 

% Question 12 cash-out option
if question == 12                                   % Relates what question stage the contestant is on, in this case the 12th question.
    set(handles.cashout12,'visible','on')           % Makes the static textbox for the twelfth cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end 

% Question 13 cash-out option
if question == 13                                   % Relates what question stage the contestant is on, in this case the 13th question.
    set(handles.cashout13,'visible','on')           % Makes the static textbox for the thirteenth cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end 

% Question 14 cash-out option
if question == 14                                   % Relates what question stage the contestant is on, in this case the 14th question.
    set(handles.cashout14,'visible','on')           % Makes the static textbox for the fourteenth cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end 

% Question 15 cash-out option
if question == 15                                   % Relates what question stage the contestant is on, in this case the 15th question.
    set(handles.cashout15,'visible','on')           % Makes the static textbox for the fifteenth cash-out visible stating how much the contestant has won.
    set(handles.pushbutton28,'visible','on')        % Makes the static textbox for the replay option visible.
    set(handles.pushbutton31,'visible','off')       % As the contestant has used the cash-out option the pushbutton relating to it will no longer be visible.
    set(handles.A,'visible','off')                  % The textbox relating to the answer for A will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.B,'visible','off')                  % The textbox relating to the answer for B will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.C,'visible','off')                  % The textbox relating to the answer for C will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.D,'visible','off')                  % The textbox relating to the answer for D will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.question_field,'visible','off')     % The textbox relating to where the question is displayer will no longer visible once cash-out is clicked on to ensure the cash-out message is seen clearly.
    set(handles.result,'visible','off')             % The textbox relating to where the result for the contestant is revelaved will no longer visible once cash-out is clicked on to ensure the message is seen clearly.
    set(handles.pushbutton23,'enable','off')        % This pushbutton relates to the lifeline 50/50. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton30,'enable','off')        % This pushbutton relates to the lifeline Phone a Friend. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game.
    set(handles.pushbutton25,'enable','off')        % This pushbutton relates to the lifeline Ask the Audience. This sets this option when cash-out is clicked to be disabled as the contestant has finished their game
end

guidata(hObject, handles);

