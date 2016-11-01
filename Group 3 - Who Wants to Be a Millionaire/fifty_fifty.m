%% % The purpose of a using a 50/50 lifeline is to eliminate 2 answers, and be
% left with the right answer and one wrong one, supposedly making it easier
% to work out the right answer.

% The code is repeated for 4 eventualities, if the answer is A,B,C or D.
%%

temp_Answer = handles.temp_Answer
rightanswer = handles.rightanswer
question = handles.question
pause(1)

% If the value of temp_Answer = 1, which is A, eliminate options 2(B) and
% 4 (D). temp_Answer is the numerical value given to the correct answer
if temp_Answer=='1' 
        set(handles.B,'String', '') % Here I have set the handles, for the answers to B and D to show nothing/be empty.
        set(handles.D,'String', '')
        set(handles.pushbutton23,'visible', 'off') % Since on the game you can only use a lifeline once, I have set the visibility to off so it can't be pushed again.
        [y,Fs] = audioread('50_50.wav'); % Once the button is pressed the audio file, 50_50 will play.
        sound(y,Fs);
end
% If the value of temp_Answer = 2 (B), eliminate options 1 (A) and 3 (C)  
if temp_Answer == '2'
        set(handles.A,'String', '') % Here I have set the handles, for the answers to B and D to show nothing/be empty.
        set(handles.C,'String', '')
        set(handles.pushbutton23,'visible', 'off') % Since on the game you can only use a lifeline once, I have set the visibility to off so it can't be pushed again.
        [y,Fs] = audioread('50_50.wav');  % Once the button is pressed the audio file, 50_50 will play.
        sound(y,Fs);
end
% If the value of temp_Answer = 3 (C), eliminate options 2 (B)and 4 (D)
if temp_Answer == '3'
        set(handles.B,'String', '') % Here I have set the handles, for the answers to B and D to show nothing/be empty.
        set(handles.D,'String', '')
        set(handles.pushbutton23,'visible', 'off') % Since on the game you can only use a lifeline once, I have set the visibility to off so it can't be pushed again.
        [y,Fs] = audioread('50_50.wav');  % Once the button is pressed the audio file, 50_50 will play.
        sound(y,Fs);
end
% If the value of temp_Answer = 4 (D), eliminate options 1 (A) and 3 (C)
if temp_Answer == '4'
       set(handles.A, 'String', '') % Here I have set the handles, for the answers to B and D to show nothing/be empty.
       set(handles.C, 'String', '')
       set(handles.pushbutton23,'visible', 'off') % Since on the game you can only use a lifeline once, I have set the visibility to off so it can't be pushed again.
       [y,Fs] = audioread('50_50.wav');  % Once the button is pressed the audio file, 50_50 will play.
       sound(y,Fs);
end
guidata(hObject, handles);
