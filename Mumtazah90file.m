function varargout = Mumtazah90file(varargin)
% MUMTAZAH90FILE MATLAB code for Mumtazah90file.fig
%      MUMTAZAH90FILE, by itself, creates a new MUMTAZAH90FILE or raises the existing
%      singleton*.
%
%      H = MUMTAZAH90FILE returns the handle to a new MUMTAZAH90FILE or the handle to
%      the existing singleton*.
%
%      MUMTAZAH90FILE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MUMTAZAH90FILE.M with the given input arguments.
%
%      MUMTAZAH90FILE('Property','Value',...) creates a new MUMTAZAH90FILE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Mumtazah90file_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Mumtazah90file_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Mumtazah90file

% Last Modified by GUIDE v2.5 19-Dec-2019 20:50:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Mumtazah90file_OpeningFcn, ...
                   'gui_OutputFcn',  @Mumtazah90file_OutputFcn, ...
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


% --- Executes just before Mumtazah90file is made visible.
function Mumtazah90file_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Mumtazah90file (see VARARGIN)

% Choose default command line output for Mumtazah90file
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Mumtazah90file wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Mumtazah90file_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushreset.
function pushreset_Callback(hObject, eventdata, handles)
proyek=guidata(gcbo);
[Gambar,jpg]=uigetfile({'*.jpg';'*.png';'*.tif';'*.*'},'membuka gambar');
I=imread([jpg,Gambar]);
handles.image=I;
guidata(hObject,handles);
axes(handles.axes1);
imshow(I)
set(proyek.axes1,'Userdata',I);
% hObject    handle to pushreset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushend.
function pushend_Callback(hObject, eventdata, handles)
close
% hObject    handle to pushend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushinput.
function pushinput_Callback(hObject, eventdata, handles)
proyek=guidata(gcbo);
[Gambar,jpg]=uigetfile({'*.jpg';'*.png';'*.tif';'*.*'},'membuka gambar');
I=imread([jpg,Gambar]);
handles.image=I;
guidata(hObject,handles);
axes(handles.axes1);
imshow(I)
set(proyek.axes1,'Userdata',I);
% hObject    handle to pushinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushuji.
function pushuji_Callback(hObject, eventdata, handles)
proyek=guidata(gcbo);
I=get(proyek.axes1,'Userdata');
M=I(:,:,1);
H=I(:,:,2);
C=I(:,:,3);
R=max(median(M));
G=max(median(H));
B=max(median(C));
if R>=60 & R<=201
    if G>=25 & G<=182
        if B>=8 & B<=148
            Z='Positif';
        else Z='Negatif';
        end
    else Z='Negatif';
    end
else
    Z='Negatif';
end
set(handles.texthasil,'String',Z);
% hObject    handle to pushuji (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushback.
function pushback_Callback(hObject, eventdata, handles)
MumtazahHari
% hObject    handle to pushback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
