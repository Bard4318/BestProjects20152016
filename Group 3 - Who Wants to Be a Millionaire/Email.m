function varargout = Email(varargin)
% EMAIL MATLAB code for Email.fig
%      EMAIL, by itself, creates a new EMAIL or raises the existing
%      singleton*.
%
%      H = EMAIL returns the handle to a new EMAIL or the handle to
%      the existing singleton*.
%
%      EMAIL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EMAIL.M with the given input arguments.
%
%      EMAIL('Property','Value',...) creates a new EMAIL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Email_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Email_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Email

% Last Modified by GUIDE v2.5 15-Jan-2016 13:08:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Email_OpeningFcn, ...
                   'gui_OutputFcn',  @Email_OutputFcn, ...
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

% --- Executes just before Email is made visible.
function Email_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Email (see VARARGIN)

% Choose default command line output for Email
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Email wait for user response (see UIRESUME)
% uiwait(handles.gui2);


% --- Outputs from this function are returned to the command line.
function varargout = Email_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global global_struct
question = global_struct.question
mail = 'matlabwhowantstobeamillionaire@yahoo.com';
psswd = 'matlabandchill';
host = 'smtp.mail.yahoo.com';
port  = '465';
setpref( 'Internet','E_mail', mail );
setpref( 'Internet', 'SMTP_Server', host );
setpref( 'Internet', 'SMTP_Username', mail );
setpref( 'Internet', 'SMTP_Password', psswd );
props = java.lang.System.getProperties;
props.setProperty( 'mail.smtp.user', mail );
props.setProperty( 'mail.smtp.host', host );
props.setProperty( 'mail.smtp.port', port );
props.setProperty( 'mail.smtp.starttls.enable', 'true' );
props.setProperty( 'mail.smtp.debug', 'true' );
props.setProperty( 'mail.smtp.auth', 'true' );
props.setProperty( 'mail.smtp.socketFactory.port', port );
props.setProperty( 'mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory' );
props.setProperty( 'mail.smtp.socketFactory.fallback', 'false' );

myicon= imread('wwtbam.png');%creates a matrix of numbers related to the colour of each pixel for the
% selected image.
a=get(handles. edit1,'String');

if question == 1
    sendmail(a,'MATLAB','You won nothing, but come back and try Who Wants to be a Millionaire again!');
    msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 2
    sendmail(a,'MATLAB','Congratulations! You just won £100 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
   msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 3
    sendmail(a,'MATLAB','Congratulations! You just won £200 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
     msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 4
    sendmail(a,'MATLAB','Congratulations! You just won £300 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
     msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 5
    sendmail(a,'MATLAB','Congratulations! You just won £500 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
    msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 6
    sendmail(a,'MATLAB','Congratulations! You just won £1000 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
     msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 7
    sendmail(a,'MATLAB','Congratulations! You just won £2000 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
    msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 8
    sendmail(a,'MATLAB','Congratulations! You just won £4000 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
     msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 9
    sendmail(a,'MATLAB','Congratulations! You just won £8000 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
    msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 10
    sendmail(a,'MATLAB','Congratulations! You just won £16000 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
    msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 11
    sendmail(a,'MATLAB','Congratulations! You just won £32000 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
     msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 12
    sendmail(a,'MATLAB','Congratulations! You just won £64000 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
     msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 13
    sendmail(a,'MATLAB','Congratulations! You just won £125000 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
     msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 14
    sendmail(a,'MATLAB','Congratulations! You just won £250000 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
     msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 15
    sendmail(a,'MATLAB','Congratulations! You just won £500000 on Who Wants to be a Millionaire?! Please share the game with your friends, and play again!');
     msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
elseif question == 16
    sendmail(a,'MATLAB','Congratulations! You are a Millionaire! Well done, and many congratulations! Please share the game with your friends, and play again!');
     msgbox('Your message sent','Message Sent','custom',myicon) % this is to show your message has been sent
end

guidata(hObject,handles); 
%sendmail(a,'MATLAB',b);
%set(handles.edit1,'String','') %deletes email address once sent
%set(handles.edit4,'String','') % deletes message once sent 
%msgbox('Your message sent') % this is to show your message has been sent 
%myaddress = 'lukescarrett@googlemail.com';
%mypassword = 'cucumber86';

% Leave this untouched 
%setpref('Internet','E_mail',myaddress);
%setpref('Internet','SMTP_Server','smtp.gmail.com');
%setpref('Internet','SMTP_Username',myaddress);
%setpref('Internet','SMTP_Password',mypassword);

%props=java.lang.System.getProperties;
%props.setProperty('mail.smtp.auth','true');
%props.setProperty('mail.smtp.socketfactory.class','javax.net.ssl.SSl.Socketfactory');
%props.setProperty ('mail.smtp.socketFactory.port','465');

%a=get(handles. edit1,'String');
%b=get(handles. edit4,'Value');
%sendmail(a,'MATLAB',b);
%set(handles.edit1,'String','') %deletes email address once sent
%set(handles.edit,'String','') % deletes message once sent 
%msgbox('Your message sent') % this is to show your message has been sent 

% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in emailmessage.
function emailmessage_Callback(hObject, eventdata, handles)
% hObject    handle to emailmessage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns emailmessage contents as cell array
%        contents{get(hObject,'Value')} returns selected item from emailmessage


% --- Executes during object creation, after setting all properties.
function emailmessage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to emailmessage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Email_exit_button
