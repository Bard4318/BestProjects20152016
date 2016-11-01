function varargout = Millionaire_GUI(varargin)
% MILLIONAIRE_GUI MATLAB code for Millionaire_GUI.fig
%      MILLIONAIRE_GUI, by itself, creates a new MILLIONAIRE_GUI or raises the existing
%      singleton*.
%
%      H = MILLIONAIRE_GUI returns the handle to a new MILLIONAIRE_GUI or the handle to
%      the existing singleton*.
%
%      MILLIONAIRE_GUI(ide'CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MILLIONAIRE_GUI.M with the given input arguments.
%
%      MILLIONAIRE_GUI('Property','Value',...) creates a new MILLIONAIRE_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Millionaire_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Millionaire_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Millionaire_GUI

% Last Modified by GUIDE v2.5 15-Jan-2016 11:02:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Millionaire_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Millionaire_GUI_OutputFcn, ...
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

% --- Executes just before Millionaire_GUI is made visible.
function Millionaire_GUI_OpeningFcn(hObject, eventdata, handles, varargin) 
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Millionaire_GUI (see VARARGIN)

% Choose default command line output for Millionaire_GUI
handles.output = hObject;
%handles.question_field = temp_quest;
% Update handles structure
%         guidata(hObject, handles);

% UIWAIT makes Millionaire_GUI wait for user response (see UIRESUME)
% uiwait(handles.gui1);

[y,Fs] = audioread('intro.wav');
sound(y,Fs);
set(handles.question_field,'visible', 'off');
set(handles.A,'visible', 'off');
set(handles.B,'visible', 'off');
set(handles.C,'visible', 'off');
set(handles.D,'visible', 'off');
set(handles.pushbutton5,'visible', 'off');
set(handles.pushbutton8,'visible', 'off');
set(handles.pushbutton9,'visible', 'off');
set(handles.pushbutton10,'visible', 'off');
set(handles.pushbutton11,'visible', 'off');
set(handles.pushbutton12,'visible', 'off');
set(handles.pushbutton13,'visible', 'off');
set(handles.pushbutton14,'visible', 'off');
set(handles.pushbutton15,'visible', 'off');
set(handles.pushbutton16,'visible', 'off');
set(handles.pushbutton17,'visible', 'off');
set(handles.pushbutton18,'visible', 'off');
set(handles.pushbutton19,'visible', 'off');
set(handles.pushbutton20,'visible', 'off');
set(handles.pushbutton21,'visible', 'off');
set(handles.pushbutton23,'visible', 'off');
set(handles.pushbutton25,'visible','off');
set(handles.pushbutton27,'visible','off');
set(handles.pushbutton28,'visible','off');
set(handles.pushbutton30,'visible','off');
set(handles.pushbutton31,'visible','off');
set(handles.cashout1,'visible','off');
set(handles.cashout2,'visible','off');
set(handles.cashout3,'visible','off');
set(handles.cashout4,'visible','off');
set(handles.cashout5,'visible','off');
set(handles.cashout6,'visible','off');
set(handles.cashout7,'visible','off');
set(handles.cashout8,'visible','off');
set(handles.cashout9,'visible','off');
set(handles.cashout10,'visible','off');
set(handles.cashout11,'visible','off');
set(handles.cashout12,'visible','off');
set(handles.cashout13,'visible','off');
set(handles.cashout14,'visible','off');
set(handles.cashout15,'visible','off');
set(handles.result,'visible', 'off');
set(handles.pushbutton32,'visible','off');
guidata(hObject, handles);



% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Introbutton

% --- Outputs from this function are returned to the command line.
function varargout = Millionaire_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

global global_struct

% Setting the questions
Questions;
SetQuestions;

question = 1;
winnings = 1;
handles.question = question;
handles.winnings = winnings;
global_struct.question = question
guidata(hObject,handles);

temp_quest = chosenquestion100{1,1};
temp_A = chosenquestion100{1,2};
temp_B = chosenquestion100{1,3};
temp_C = chosenquestion100{1,4};
temp_D = chosenquestion100{1,5};
temp_Answer = chosenquestion100{1,6};
rightanswer = 0;

set(handles.question_field,'String',temp_quest);
set(handles.A,'string',temp_A);
set(handles.B,'string',temp_B);
set(handles.C,'string',temp_C);
set(handles.D,'string',temp_D);
set(handles.q100,'visible','On');
set(handles.q200,'visible','On');
set(handles.q300,'visible','On');
set(handles.q500,'visible','On');
set(handles.q1000,'visible','On');
set(handles.q2000,'visible','On');
set(handles.q4000,'visible','On');
set(handles.q8000,'visible','On');
set(handles.q16000,'visible','On');
set(handles.q32000,'visible','On');
set(handles.q64000,'visible','On');
set(handles.q125000,'visible','On');
set(handles.q250000,'visible','On');
set(handles.q500000,'visible','On');
set(handles.q1million,'visible','On');

% Store the values of temporary questions in the GUI data
handles.rightanswer = rightanswer;
handles.temp_Answer = temp_Answer;
handles.temp_quest = temp_quest;
handles.temp_A = temp_A;
handles.temp_B = temp_B;
handles.temp_C = temp_C;
handles.temp_D = temp_D;
guidata(hObject,handles);

% Store the questions in the GUI data
handles.chosenquestion200 = chosenquestion200;
handles.chosenquestion300 = chosenquestion300;
handles.chosenquestion500 = chosenquestion500;
handles.chosenquestion1000 = chosenquestion1000;
handles.chosenquestion2000 = chosenquestion2000;
handles.chosenquestion4000 = chosenquestion4000;
handles.chosenquestion8000 = chosenquestion8000;
handles.chosenquestion16000 = chosenquestion16000;
handles.chosenquestion32000 = chosenquestion32000;
handles.chosenquestion64000 = chosenquestion64000;
handles.chosenquestion125000 = chosenquestion125000;
handles.chosenquestion250000 = chosenquestion250000;
handles.chosenquestion500000 = chosenquestion500000;
handles.chosenquestion1000000 = chosenquestion1000000;
guidata(hObject,handles);

% --- Executes on button press in A.
function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A_CALLBACK

    
% --- Executes on button press in B.
function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
B_CALLBACK


% --- Executes on button press in C.

function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
C_CALLBACK
% --- Executes on button press in D.

function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
D_CALLBACK


% --- Executes during object creation, after setting all properties.
function question_field_CreateFcn(hObject, eventdata, handles)
% hObject    handle to question_field (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
guidata(hObject, handles);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
twohundred
% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
threehundred

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fivehundred

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onethousand

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[y,Fs] = audioread('stage2.wav');
sound(y,Fs);
twothousand

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fourthousand

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
eightthousand

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sixteenthousand

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
thirtytwothousand

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[y,Fs] = audioread('stage3.wav');
sound(y,Fs);
sixtyfourthousand

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hundredandtwentyfive

% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
twohundredandfifty

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fivehundredthousand

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[y,Fs] = audioread('stage3lastquestion.wav');
sound(y,Fs);
onemillion


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fifty_fifty


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Ask_the_Audience


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Restart_Button


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Replay_Button

% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Phone_A_Friend


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Cash_out


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Email
