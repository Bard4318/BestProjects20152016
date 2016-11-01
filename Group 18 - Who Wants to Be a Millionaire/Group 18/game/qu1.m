function varargout = qu1(varargin)
% QU1 MATLAB code for qu1.fig
%      QU1, by itself, creates a new QU1 or raises the existing
%      singleton*.
%
%      H = QU1 returns the handle to a new QU1 or the handle to
%      the existing singleton*.
%
%      QU1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QU1.M with the given input arguments.
%
%      QU1('Property','Value',...) creates a new QU1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before qu1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to qu1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help qu1

% Last Modified by GUIDE v2.5 17-Jan-2016 23:47:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @qu1_OpeningFcn, ...
                   'gui_OutputFcn',  @qu1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before qu1 is made visible.
function qu1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to qu1 (see VARARGIN)

% Choose default command line output for qu1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.axes1,'visible','off')
ques_1=fileread('questions_1.txt'); %This gathers the data from the txt file and stores it as a cell
ans_1=fileread('answer_1.txt');
l=1:1:8;
n=length(l);
number=(randi(n)); %This selects a random number from the n cell

ques=strsplit(ques_1,'!'); %This gathers the data from the cell and splits them by !
q=(ques{number}); %This finds the nth question using the randomly generated number and stores it in a cell
ans=strsplit(ans_1,'!'); %This gathers the data from the cell and splits them by !
mc=(ans{number}); %This finds the nth answer using the randomly generated number and stores it in a cell, the answers should correspond to the question 
mcq=strsplit(mc,','); %This splits the group of answers in to individual answers
A=mcq(1,1); %This stores the first cell as A
B=mcq(1,2); %This stores the first cell as B
C=mcq(1,3); %This stores the first cell as C
D=mcq(1,4); %This stores the first cell as D
set(handles.text2,'String',num2str(q)); %This takes the box tagged as text2 and changes the string label to what is stored from before, q
set(handles.pushbutton5,'String',A); %This takes the button tagged as pushbutton5 and changes the string label to what has been stored as A
set(handles.pushbutton6,'String',B); %This takes the button tagged as pushbutton6 and changes the string label to what has been stored as B
set(handles.pushbutton7,'String',C); %This takes the button tagged as pushbutton7 and changes the string label to what has been stored as C
set(handles.pushbutton8,'String',D); %This takes the button tagged as pushbutton8 and changes the string label to what has been stored as D
drawnow() %This makes sure that changes occur instantly

fiftyOff  = 'on'; %this is defining that the variable 'fiftyoff' is set to 'on' which enables the use of the button/function 
setappdata(0, 'fifty', fiftyOff) %'Setappdata' allows you store data regarding 'fifty' and then retrieve for later use
friendoff = 'on'; %this is defining that the variable 'friendoff' is set to 'on' which enables the use of the button/function 
setappdata (0, 'friend', friendoff)%'Setappdata' allows you store data regarding 'friend' and then retrieve for later use
askoff = 'on';  %this is defining that the variable 'askoff' is set to 'on' which enables the use of the button/function 
setappdata(0, 'ask', askoff) %'Setappdata' allows you store data regarding 'ask' and then retrieve for later use

h = imread('moneybar1.png'); % This tells Matlab to read this figure.
axes(handles.axes2) % This tells Matlab where to display the figure.
imshow(h); % This dispays the figure.


% UIWAIT makes qu1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = qu1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in askaudience.
function askaudience_Callback(hObject, eventdata, handles)
% hObject    handle to askaudience (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g = imread('graph 4.png'); % This tells Matlab to read the figure. 
axes(handles.axes1) % This tells Matlab where to display the figure.
imshow(g); % This displays the figure.
pause (0) % This tells Matlab to wait for 0 seconds. Therefore, the next code will be executed immediately. 
set(handles.askaudience,'BackgroundColor','red') % This changes the colour of the push button to red when it is clicked.
askoff = 'off'; %This sets the button for this function as 'off' as opposed to 'on' once the function has been executed
setappdata(0, 'ask', askoff) %'Setappdata' allows you store data and then retrieve for later use. This disables the button/function from being used further on in the game

% --- Executes on button press in phonefriend.
function phonefriend_Callback(hObject, eventdata, handles)
% hObject    handle to phonefriend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
[y,Fs] = audioread('AskOptionC.wav'); %this tells Matlab to read AskOptionC when button has been pressed
sound(y,Fs); %This tells Matlab to play the audio 
pause (0) % This tells Matlab to wait for 0 seconds. Therefore, the next code will be executed immediately.
set(handles.phonefriend,'BackgroundColor','red') % This changes the colour of the push button to red when it is clicked.  
friendoff = 'off'; %This sets the button for this function as 'off' as opposed to 'on' once the function has been executed
setappdata(0, 'friend', friendoff) %'Setappdata' allows you store data and then retrieve for later use. This disables the button/function from being used further on in the game


% --- Executes on button press in fiftyfifty5050.
function fiftyfifty5050_Callback(hObject, eventdata, handles)
% hObject    handle to fiftyfifty5050 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton6,'visible','off') % This makes pushbutton 6 not invisible to the player.
set(handles.pushbutton8,'visible','off') % This makes pushbutton 8 not invisible to the player.
pause (0) % This tells Matlab to wait for 0 seconds. Therefore, the next code will be executed immediately. 
set(handles.fiftyfifty5050,'BackgroundColor','red') % This changes the colour of the push button to red when it is clicked.
fiftyOff  = 'off'; %This sets the button for this function as 'off' as opposed to 'on' once the function has been executed
setappdata(0, 'fifty', fiftyOff)%'Setappdata' allows you store data and then retrieve for later use. This disables the button/function from being used further on in the game



% --- Executes on button press in walkaway.
function walkaway_Callback(hObject, eventdata, handles)
% hObject    handle to walkaway (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
drawnow()
close %This closes the window that is open
run walkaway.m %This opens the corresponding file

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%The comments for pushbutton5 are also appropriate for pushbutton6
%pushbutton7 and pushbutton8
set(handles.pushbutton5,'BackgroundColor','yellow') %This changes the button colour when pressed 
set(handles.pushbutton6,'enable','off') %This disables the button once pushbutton5 has been pressed
set(handles.pushbutton7,'enable','off')
set(handles.pushbutton8,'enable','off')
pause(2) %This stops the running of the function for 2 seconds for dramatic effect
set(handles.pushbutton5,'string','Incorrect','ForegroundColor','Red','Backgroundcolor','cyan'); %This changes the string label, the colour of text and the colour of the button
drawnow()
pause(2)
close %This closes the window that is open
run gameedn.m %This opens the corresponding file

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton6,'backgroundcolor','yellow')
set(handles.pushbutton5,'enable','off')
set(handles.pushbutton7,'enable','off')
set(handles.pushbutton8,'enable','off')
pause(2)
set(handles.pushbutton6,'string','Incorrect','ForegroundColor','Red','backgroundcolor','cyan');
drawnow()
pause(2)
close
run gameedn.m


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton7,'backgroundcolor','yellow')
set(handles.pushbutton5,'enable','off')
set(handles.pushbutton6,'enable','off')
set(handles.pushbutton8,'enable','off')
pause(2)
set(handles.pushbutton7,'string','Congratulations!','ForegroundColor','Red','backgroundcolor','cyan'); %as the text displayed in pushbutton7 is the correct answer, this code congratulates the player
set(handles.text2,'string','You have won £100!'); %This displays the amount won
drawnow()
pause(2)
close
run qu2.m %This runs the corresponding file to move further in the game

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton8,'backgroundcolor','yellow')
set(handles.pushbutton5,'enable','off')
set(handles.pushbutton6,'enable','off')
set(handles.pushbutton7,'enable','off')
pause(2)
set(handles.pushbutton8,'string','Incorrect','ForegroundColor','Red','backgroundcolor','cyan');
drawnow()
pause(2)
close
run gameedn.m
