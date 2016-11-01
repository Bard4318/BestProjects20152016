temp_Answer = handles.temp_Answer;
rightanswer = handles.rightanswer;
question = handles.question;
% This code is for when Answer D has been selected
% Setting the final answer prompt, and setting the background colour of the chosen option
set(handles.question_field,'string','Is that your final answer?');
set(handles.D,'BackgroundColor',[0.87058 0.5 0]);
% If the value of temp_Answer = 1 (A), highlight 'A' as green.
if temp_Answer=='1'
    pause(1)
    for i = 1:3
        set(handles.A,'BackgroundColor',[0 0.7 0]) %GREEN%
        pause(0.2)
        set(handles.A,'BackgroundColor',[0.16862 0.38039 0.82352]) %BLUE%
        pause(0.2)
    end
    set(handles.A,'BackgroundColor',[0 0.7 0]) %GREEN%
end
% If the value of temp_Answer = 2 (B), highlight 'B' as green.     
if temp_Answer == '2'
    pause(2)
    for i = 1:3
        set(handles.B,'BackgroundColor',[0 0.7 0]) %GREEN%
        pause(0.2)
        set(handles.B,'BackgroundColor',[0.16862 0.38039 0.82352]) %BLUE%
        pause(0.2)
    end
    set(handles.B,'BackgroundColor',[0 0.7 0])
end
% If the value of temp_Answer = 3 (C), highlight 'C' as green
if temp_Answer == '3'
    pause(2)
    for i = 1:3
        set(handles.C,'BackgroundColor',[0 0.7 0]) %GREEN%
        pause(0.2)
        set(handles.C,'BackgroundColor',[0.16862 0.38039 0.82352]) %BLUE%
        pause(0.2)
    end
    set(handles.C,'BackgroundColor',[0 0.7 0])
end
% If the value of temp_Answer = 4 (the correct answer), flash 'D' as green and orange
if temp_Answer == '4'
    pause(2)
    for i = 1:3
        set(handles.D,'BackgroundColor',[0 0.7 0]) %GREEN%
        pause(0.2)
        set(handles.D,'BackgroundColor',[0.87058 0.5 0]) %ORANGE%
        pause(0.2)
    end
    set(handles.D,'BackgroundColor',[0 0.7 0]) %GREEN%
    rightanswer = rightanswer + 1;
end
pause(0.2)

% Question 1
if question == 1; % If question is number 1
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','Congratulations! You have just won £100!') % Displays the string as the answer is correct
        set(handles.pushbutton5,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','Thats the wrong answer! You walk away with nothing') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
    end
end
% Question 2
if question == 2  % If question is number 2
    if rightanswer == 1% If the correct answer is B
        set(handles.result,'String','Congratulations! You have just won £200!')% Displays the string as the answer is correct
        set(handles.pushbutton8,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 %However, if the answer is incorrect
        set(handles.result,'String','You just lost £100! You walk away with nothing') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 1
        global global_struct
        global_struct.question = question
    end
end
guidata(hObject, handles);
% Question 3
if question == 3 % If question is number 3
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','Congratulations! You have just won £300!') % Displays the string as the answer is correct
        set(handles.pushbutton9,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You just lost £200! You walk away with nothing') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 1
        global global_struct
        global_struct.question = question
    end
end
% Question 4
if question == 4  % If question is number 4
    if rightanswer == 1% If the correct answer is B
        set(handles.result,'String','Congratulations! You have just won £500!') % Displays the string as the answer is correct
        set(handles.pushbutton10,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You just lost £300! You walk away with nothing') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 1
        global global_struct
        global_struct.question = question
    end
end
guidata(hObject, handles);
% Question 5
if question == 5  % If question is number 5
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','You have just won £1000!') % Displays the string as the answer is correct
        set(handles.pushbutton11,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You just lost £500! You walk away with nothing') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 1
        global global_struct
        global_struct.question = question
    end
end
% Question 6
if question == 6  % If question is number 6
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','Youve just won £2000!') % Displays the string as the answer is correct
        set(handles.pushbutton12,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You had a go, but unfortunately that was the wrong answer. But you walk away with £1000') % Displays the string
        set(handles.pushbutton27,'visible','on'); % Makes the replay push button visible
    end
end
% Question 7
if question == 7  % If question is number 7
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','Amazing, you just won £4000!') % Displays the string as the answer is correct
        set(handles.pushbutton13,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You had £2000...') % Displays the string
        pause(1) % Pause between string display
        set(handles.result,'String','and you just lost £1000. You walk away with £1000') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 6
        global global_struct
        global_struct.question = question
    end
end
% Question 8
if question == 8  % If question is number 8
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','You had £4000...') % Displays the string 
        pause(1) % Pause between string display
        set(handles.result,'String','and you just doubled it!') % Displays the string
        set(handles.pushbutton14,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You just lost £3000. Unlucky, you walk away with £1000. Bad luck!') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 6
        global global_struct
        global_struct.question = question
    end
end
% Question 9
if question == 9  % If question is number 9
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','You just made £16,000!') % Displays the string as the answer is correct
        set(handles.pushbutton15,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You had £8000...') % Displays the string
        pause(1) % pause between string display
        set(handles.result,'String','and you just lost £7000. You walk away with £1000') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 6
        global global_struct
        global_struct.question = question
    end
end
% Question 10
if question == 10 % If question is number 10
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','You had £16,000...') % Displays the string 
        pause(2) % pause between string display
        set(handles.result,'String','and you just won £32,000!') % Displays the string
        set(handles.pushbutton16,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You had £16,000...') % Displays the string
        pause(2) % Pause between string display
        set(handles.result,'String','and you just lost £15,000. You just missed out on the £32,000, and you leave with £1000') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 6
        global global_struct
        global_struct.question = question
    end
end
% Question 11
if question == 11 % If question is number 11
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','You took a gamble, and it paid off! You just won £64,000') % Displays the string as the answer is correct
        set(handles.pushbutton17,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You didnt lose anything, but you do walk away with £32,000.') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
    end
end
% Question 12
if question == 12 % If question is number 12
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','Congratulations! You just won a whopping £125,000!!!') % Displays the string as the answer is correct
        set(handles.pushbutton18,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You had £64,000...') % Displays the string
        pause(2) % Pause between string display
        set(handles.result,'String','and you just lost £32,000. You leave with £32,000') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 11
        global global_struct
        global_struct.question = question
    end
end
% Question 13
if question == 13 % If question is number 13
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','You are on a roll!! That question just won you £250,000!') % Displays the string as the answer is correct
        set(handles.pushbutton19,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You took a risk, and this time it didnt pay off. You lost £93,000') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 11
        global global_struct
        global_struct.question = question
    end
end
% Question 14
if question == 14 % If question is number 14
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','You had £250,000...') % Displays the string as the answer is correct
        pause(2) % Pause between string display
        set(handles.result,'String','and you just doubled it!') % Displays the string
        set(handles.pushbutton20,'visible','on'); % Makes the continue push button visible
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You just lost £218,000! You walk away with £32,000') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        question = 11
        global global_struct
        global_struct.question = question
    end
end
% Question 15
if question == 15 % If question is number 15
    if rightanswer == 1 % If the correct answer is B
        set(handles.result,'String','You had £500,000...') % Displays the string
        pause(2) % Pause between string display
        set(handles.result,'String','AND YOU JUST WON £1,000,000! You are a millionaire! Congratulations!') % Displays the string
        set(handles.pushbutton28,'visible','on'); % Makes the replay push button visible
        [y,Fs] = audioread('MillionPoundQuestionright.wav'); % Loads sound
        sound(y,Fs);  % Plays sound, that was loaded above
        question = 16
        global global_struct
        global_struct.question = question
    elseif rightanswer == 0 % However, if the answer is incorrect
        set(handles.result,'String','You were so close! You just lost £468,000') % Displays the string
        set(handles.pushbutton27,'visible','on') % Makes the replay push button visible
        [y,Fs] = audioread('wrongnogain.wav'); % Loads sound
        question = 11
        global global_struct
        global_struct.question = question
    sound(y,Fs); % Plays sound, that was loaded above
    end
end
% Stores everything in the guidata
guidata(hObject, handles);