function varargout = Petunjuk2(varargin)
% PETUNJUK2 MATLAB code for Petunjuk2.fig
%      PETUNJUK2, by itself, creates a new PETUNJUK2 or raises the existing
%      singleton*.
%
%      H = PETUNJUK2 returns the handle to a new PETUNJUK2 or the handle to
%      the existing singleton*.
%
%      PETUNJUK2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PETUNJUK2.M with the given input arguments.
%
%      PETUNJUK2('Property','Value',...) creates a new PETUNJUK2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Petunjuk2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Petunjuk2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Petunjuk2

% Last Modified by GUIDE v2.5 19-Dec-2019 20:43:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Petunjuk2_OpeningFcn, ...
                   'gui_OutputFcn',  @Petunjuk2_OutputFcn, ...
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


% --- Executes just before Petunjuk2 is made visible.
function Petunjuk2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Petunjuk2 (see VARARGIN)

% Choose default command line output for Petunjuk2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Petunjuk2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Petunjuk2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushmulai.
function pushmulai_Callback(hObject, eventdata, handles)
MumtazahHari
% hObject    handle to pushmulai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushback.
function pushback_Callback(hObject, eventdata, handles)
Petunjuk1
% hObject    handle to pushback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
