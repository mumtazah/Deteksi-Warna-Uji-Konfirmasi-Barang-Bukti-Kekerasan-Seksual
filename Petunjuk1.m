function varargout = Petunjuk1(varargin)
% PETUNJUK1 MATLAB code for Petunjuk1.fig
%      PETUNJUK1, by itself, creates a new PETUNJUK1 or raises the existing
%      singleton*.
%
%      H = PETUNJUK1 returns the handle to a new PETUNJUK1 or the handle to
%      the existing singleton*.
%
%      PETUNJUK1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PETUNJUK1.M with the given input arguments.
%
%      PETUNJUK1('Property','Value',...) creates a new PETUNJUK1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Petunjuk1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Petunjuk1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Petunjuk1

% Last Modified by GUIDE v2.5 19-Dec-2019 20:37:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Petunjuk1_OpeningFcn, ...
                   'gui_OutputFcn',  @Petunjuk1_OutputFcn, ...
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


% --- Executes just before Petunjuk1 is made visible.
function Petunjuk1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Petunjuk1 (see VARARGIN)

% Choose default command line output for Petunjuk1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Petunjuk1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Petunjuk1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushnext.
function pushnext_Callback(hObject, eventdata, handles)
Petunjuk2
% hObject    handle to pushnext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushmulai.
function pushmulai_Callback(hObject, eventdata, handles)
MumtazahHari
% hObject    handle to pushmulai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushback.
function pushback_Callback(hObject, eventdata, handles)
Mumtazah1
% hObject    handle to pushback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
