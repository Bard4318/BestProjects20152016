function varargout = walkaway(varargin)
% WALKAWAY MATLAB code for walkaway.fig
%      WALKAWAY, by itself, creates a new WALKAWAY or raises the existing
%      singleton*.
%
%      H = WALKAWAY returns the handle to a new WALKAWAY or the handle to
%      the existing singleton*.
%
%      WALKAWAY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WALKAWAY.M with the given input arguments.
%
%      WALKAWAY('Property','Value',...) creates a new WALKAWAY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before walkaway_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to walkaway_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help walkaway

% Last Modified by GUIDE v2.5 14-Jan-2016 23:24:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @walkaway_OpeningFcn, ...
                   'gui_OutputFcn',  @walkaway_OutputFcn, ...
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


% --- Executes just before walkaway is made visible.
function walkaway_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to walkaway (see VARARGIN)

% Choose default command line output for walkaway
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes walkaway wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = walkaway_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in playgame.
function playgame_Callback(hObject, eventdata, handles)
% hObject    handle to playgame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA) 
run playgame.m % This tells Matlab to run the playgame.m file, in order to play the game again when the button is clicked.
