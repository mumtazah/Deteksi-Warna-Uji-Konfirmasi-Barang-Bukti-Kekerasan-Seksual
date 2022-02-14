function varargout = MumtazahHari(varargin)
% MUMTAZAHHARI MATLAB code for MumtazahHari.fig
%      MUMTAZAHHARI, by itself, creates a new MUMTAZAHHARI or raises the existing
%      singleton*.
%
%      H = MUMTAZAHHARI returns the handle to a new MUMTAZAHHARI or the handle to
%      the existing singleton*.
%
%      MUMTAZAHHARI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MUMTAZAHHARI.M with the given input arguments.
%
%      MUMTAZAHHARI('Property','Value',...) creates a new MUMTAZAHHARI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MumtazahHari_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MumtazahHari_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MumtazahHari

% Last Modified by GUIDE v2.5 19-Dec-2019 20:15:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MumtazahHari_OpeningFcn, ...
                   'gui_OutputFcn',  @MumtazahHari_OutputFcn, ...
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


% --- Executes just before MumtazahHari is made visible.
function MumtazahHari_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MumtazahHari (see VARARGIN)

% Choose default command line output for MumtazahHari
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MumtazahHari wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MumtazahHari_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push90.
function push90_Callback(hObject, eventdata, handles)
Mumtazah90file
% hObject    handle to push90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push100.
function push100_Callback(hObject, eventdata, handles)
Mumtazah100file
% hObject    handle to push100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push110.
function push110_Callback(hObject, eventdata, handles)
Mumtazah110file
% hObject    handle to push110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in push120.
function push120_Callback(hObject, eventdata, handles)
Mumtazah120file
% hObject    handle to push120 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushback.
function pushback_Callback(hObject, eventdata, handles)
Mumtazah1
% hObject    handle to pushback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
