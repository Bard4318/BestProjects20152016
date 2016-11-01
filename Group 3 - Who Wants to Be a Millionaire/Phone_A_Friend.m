%%%% 
% Phone A Friend
% Please note that there is no mistake in the code if the "person on the
% phone" gives the wrong answer or is unable to help. This was made to seem
% realistic therefore thefurther into the quiz you get the less sure the
% "friend" will be 

%%
temp_Answer = handles.temp_Answer
rightanswer = handles.rightanswer
question= handles.question
pause(1)
%% 
% Creates a matrix of numbers related to the colour of each pixel for the
% selected image.
myicon= imread('wwtbam.png');
%% How to understand the Messagebox coding 
% The messagebox tool creates a pop up. Inside the first '' is the message that
% the individual would like to display. Inside the second '' is the title
% of the popup. Inside the third is the icon that we would like
% displayed, custom allows you to insert any image desired, the myicon is
% related to the line above of code in which myicon is equal to the reading
% of the photo desired

%% 100 QUESTIONS
% For each prize amount (100,200,...,1,000,000) I have created 4 if
% statements, you use  && if you are working with scalar values, and & if you are working
% with a vector.
if (question==1) & ( temp_Answer== '1') % If question =1,£100 and if temp_answer =1(A)
    msgbox('I am 100% sure the answer is A, remember you only get 3 lifelines so try not to use them this early on','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off') % Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once.
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs); % Plays sound
end 

if (question==1) && ( temp_Answer== '2')% If question =1,£100 and if temp_answer =2(B)
    msgbox('I am 100% sure the answer is B, remember you only get 3 lifelines so try not to use them this early on','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==1) && ( temp_Answer== '3')%If question =1,£100 and if temp_answer =3(C)
    msgbox('I am 100% sure the answer is C, remember you only get 3 lifelines so try not to use them this early on','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==1) && ( temp_Answer== '4')%If question =1,£100 and if temp_answer =4(D)
    msgbox('I am 100% sure the answer is D, remember you only get 3 lifelines so try not to use them this early on','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

%% 200 QUESTIONS
if (question==2) && ( temp_Answer== '1')% If question =2,£200 and if temp_answer =1(A)
    msgbox('I know this! I remember reading a book about this a few months ago, the correct answer is A','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==2) && ( temp_Answer== '2')% If question =2,£200 and if temp_answer =2(B)
    msgbox('I know this! I remember reading a book about this a few months ago, the correct answer is B','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==2) && ( temp_Answer== '3')%If question =2,£200 and if temp_answer =3(C)
    msgbox('I know this! I remember reading a book about this a few months ago, the correct answer is C','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==2) && ( temp_Answer== '4')%If question =2,£200 and if temp_answer =4(D)
    msgbox('I know this! I remember reading a book about this a few months ago, the correct answer is D','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

%% 300 QUESTIONS
if (question==3) && ( temp_Answer== '1')% If question =3,£300 and if temp_answer =1(A)
    msgbox('This is obvious, relax. Take your time from now on. The correct answer is A','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==3) && ( temp_Answer== '2')% If question =3,£300 and if temp_answer =2(B)
    msgbox('This is obvious, relax. Take your time from now on. The correct answer is B','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==3) && ( temp_Answer== '3')%If question =3,£300 and if temp_answer =3(C)
    msgbox('This is obvious, relax. Take your time from now on. The correct answer is C','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==3) && ( temp_Answer== '4')%If question =3,£300 and if temp_answer =4(D)
    msgbox('This is obvious, relax. Take your time from now on. The correct answer is D','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 500 QUESTIONS
if (question==4) && ( temp_Answer== '1')% If question =4,£500 and if temp_answer =1(A)
    msgbox('Im almost certain that the answer is A','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==4) && ( temp_Answer== '2')% If question =4,£500 and if temp_answer =2(B)
    msgbox('Im almost certain that the answer is B','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==4) && ( temp_Answer== '3')%If question =4,£500 and if temp_answer =3(C)
    msgbox('Im almost certain that the answer is C','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==4) && ( temp_Answer== '4')%If question =4,£500 and if temp_answer =4(D)
    msgbox('Im almost certain that the answer is D','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 1000 QUESTIONS
if (question==5) && ( temp_Answer== '1')% If question =5,£1000 and if temp_answer =1(A)
    msgbox('£1000, you are doing so well! Keep on going. I am 100% sure about this one, the answer is A','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==5) && ( temp_Answer== '2')% If question =5,£1000 and if temp_answer =2(B)
    msgbox('£1000, you are doing well! Keep on going. I am 100% sure about this one, the answer is B','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==5) && ( temp_Answer== '3')%If question =5,£1000 and if temp_answer =3(C)
    msgbox('£1000, you are doing well! Keep on going. I am 100% sure about this one, the answer is C','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==5) && ( temp_Answer== '4')%If question =5,£1000 and if temp_answer =4(D)
    msgbox('£1000, you are doing well! Keep on going. I am 100% sure about this one, the answer is D','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 2000 QUESTIONS
if (question==6) && ( temp_Answer== '1')% If question =6,£2000 and if temp_answer =1(A)
    msgbox('Hmmm, let me think about this for a moment... I think the answer is B. No, wait I think it might be A...','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==6) && ( temp_Answer== '2')% If question =6,£2000 and if temp_answer =2(B)
    msgbox('Hmmm, let me think about this for a moment... I think the answer is C. No, wait I think it might be B...','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==6) && ( temp_Answer== '3')%If question =6,£2000 and if temp_answer =3(C)
    msgbox('Hmmm, let me think about this for a moment... I think the answer is D. No, wait I think it might be C...','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==6) && ( temp_Answer== '4')%If question =6,£2000 and if temp_answer =4(D)
    msgbox('Hmmm, let me think about this for a moment... I think the answer is A. No, wait I think it might be D...','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 4000 QUESTIONS
if (question==7) && ( temp_Answer== '1')% If question =7,£4000 and if temp_answer =1(A)
    msgbox('You have asked the right person, I know this. A is undoubtably correct ','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==7) && ( temp_Answer== '2')% If question =7,£4000 and if temp_answer =2(B)
    msgbox('You have asked the right person, I know this. B is undoubtably correct','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==7) && ( temp_Answer== '3')%If question =7,£4000 and if temp_answer =3(C)
    msgbox('You have asked the right person, I know this. C is undoubtably correct','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==7) && ( temp_Answer== '4')%If question =7,£4000 and if temp_answer =4(D)
    msgbox('You have asked the right person, I know this. D is undoubtably correct','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end

%% 8000 QUESTIONS
if (question==8) && ( temp_Answer== '1')% If question =8,£8000 and if temp_answer =1(A)
    msgbox('Hmmm maybe the answer is A... or B. Honestly I dont know so im afraid I cant help you','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==8) && ( temp_Answer== '2')% If question =8,£8000 and if temp_answer =2(B)
    msgbox('Hmmm maybe the answer is A... or B. Honestly I dont know so im afraid I cant help you','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==8) && ( temp_Answer== '3')%If question =8,£8000 and if temp_answer =3(C)
    msgbox('Hmmm maybe the answer is A... or C. Honestly I dont know so im afraid I cant help you','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==8) && ( temp_Answer== '4')%If question =8,£8000 and if temp_answer =4(D)
    msgbox('Hmmm maybe the answer is B... or D. Honestly I dont know so im afraid I cant help you','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 16,000 QUESTIONS
if (question==9) && ( temp_Answer== '1')% If question =9,£16,000 and if temp_answer =1(A)
    msgbox('This is a very interesting question, by process of elimination the only possible answer is A','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==9) && ( temp_Answer== '2')% If question =9,£16,000 and if temp_answer =2(B)
    msgbox('This is a very interesting question, by process of elimination the only possible answer is B','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==9) && ( temp_Answer== '3')%If question =9,£16,000 and if temp_answer =3(C)
    msgbox('This is a very interesting question, by process of elimination the only possible answer is C','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==9) && ( temp_Answer== '4')%If question =9,£16,000 and if temp_answer =4(D)
    msgbox('This is a very interesting question, by process of elimination the only possible answer is D','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 32,000 QUESTIONS
if (question==10) && ( temp_Answer== '1')% If question =10,£32,000 and if temp_answer =1(A)
    msgbox('This is great progress you are making. Fortunately I know the answer to this one, its A','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==10) && ( temp_Answer== '2')% If question =10,£32,000 and if temp_answer =2(B)
    msgbox('This is great progress you are making. Fortunately I know the answer to this one, its B','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs); % Plays sound
end  

if (question==10) && ( temp_Answer== '3')%If question =10,£32,000 and if temp_answer =3(C)
    msgbox('This is great progress you are making. Fortunately I know the answer to this one, its C','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs); % Plays sound
end 

if (question==10) && ( temp_Answer== '4')%If question =10,£32,000 and if temp_answer =4(D)
    msgbox('This is great progress you are making. Fortunately I know the answer to this one, its D','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 64,000 QUESTIONS
if (question==11) && ( temp_Answer== '1')% If question =11,£64,000 and if temp_answer =1(A)
    msgbox('64 thousand! That is impressive, I remember seeing something about this on TV, answer A rings a bell I think','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==11) && ( temp_Answer== '2')% If question =11,£64,000 and if temp_answer =2(B)
    msgbox('64 thousand! That is impressive, I remember seeing something about this on TV, answer B rings a bell I think','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==11) && ( temp_Answer== '3')%If question =11,£64,000 and if temp_answer =3(C)
    msgbox('64 thousand! That is impressive, I remember seeing something about this on TV, answer C rings a bell I think','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==11) && ( temp_Answer== '4')%If question =11,£64,000 and if temp_answer =4(D)
    msgbox('64 thousand! That is impressive, I remember seeing something about this on TV, answer D rings a bell I think','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 125000 QUESTIONS
if (question==12) && ( temp_Answer== '1')% If question =12,£125,000 and if temp_answer =1(A)
    msgbox('I am unsure about this, I think the answer is A, that being said I am not certain so go with what you think','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==12) && ( temp_Answer== '2')% If question =12,£125,000 and if temp_answer =2(B)
    msgbox('I am unsure about this, I think the answer is B, that being said I am not certain so go with what you think','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==12) && ( temp_Answer== '3')%If question =12,£125,000 and if temp_answer =3(C)
    msgbox('I am unsure about this, I think the answer is C, that being said I am not certain so go with what you think','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==12) && ( temp_Answer== '4')%If question =12,£125,000 and if temp_answer =4(D)
    msgbox('I am unsure about this, I think the answer is D, that being said I am not certain so go with what you think','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 250,000 QUESTIONS
if (question==13) && ( temp_Answer== '1')% If question =13,£250,000 and if temp_answer =1(A)
    msgbox('Wow £250,000, you have done amazingly well! By process of elimination B and D are incorrect, so the answer must be either A or C','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==13) && ( temp_Answer== '2')% If question =13,£250,000 and if temp_answer =2(B)
    msgbox('Wow £250,000, you have done amazingly well! By process of elimination A and C are incorrect, so the answer must be either B or D','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==13) && ( temp_Answer== '3')%If question =13,£250,000 and if temp_answer =3(C)
    msgbox('Wow £250,000, you have done amazingly well! By process of elimination A and B are incorrect, so the answer must be either C or D','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==13) && ( temp_Answer== '4')%If question =13,£250,000 and if temp_answer =4(D)
    msgbox('Wow £250,000, you have done amazingly well! By process of elimination A and C are incorrect, so the answer must be either B or D','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 500,000 QUESTIONS
if (question==14) && ( temp_Answer== '1')% If question =14,£500,000 and if temp_answer =1(A)
    msgbox('This is a life changing amount of money, the cashout option is always there, I dont know the answer but I do know C is incorrect','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==14) && ( temp_Answer== '2')% If question =14,£500,000 and if temp_answer =2(B)
    msgbox('This is a life changing amount of money, the cashout option is always there, I dont know the answer but I do know D is incorrect','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end  

if (question==14) && ( temp_Answer== '3')%If question =14,£500,000 and if temp_answer =3(C)
    msgbox('This is a life changing amount of money, the cashout option is always there, I dont know the answer but I do know A is incorrect','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

if (question==14) && ( temp_Answer== '4')%If question =14,£500,000 and if temp_answer =4(D)
    msgbox('This is a life changing amount of money, the cashout option is always there, I dont know the answer but I do know B is incorrect','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messagebox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%% 1000000 QUESTIONS
if  question==15 % If the question is number 15, for the million pounds. No second part as the the message is the same for all answers
    msgbox('Im afraid I dont know, you have got this far, you can answer this too. Sorry and good luck','Phone A Friend','custom',myicon);% Creates a messagebox, the details of which are explained in the "How to understand the messaegbox coding section".
    set(handles.pushbutton30,'visible','off')% Turns the push button off once used, this creates a realistic game as in real life the player can only use each lifeline once.
    [y,Fs] = audioread('phoneafriend.wav');% Loads sound, 'phoneafriend.wav' is the audiofile desired
    sound(y,Fs);% Plays sound
end 

%%
guidata(hObject,handles);
