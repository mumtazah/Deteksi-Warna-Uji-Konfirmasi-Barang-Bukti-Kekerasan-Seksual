function varargout = Mumtazah120file(varargin)
% MUMTAZAH120FILE MATLAB code for Mumtazah120file.fig
%      MUMTAZAH120FILE, by itself, creates a new MUMTAZAH120FILE or raises the existing
%      singleton*.
%
%      H = MUMTAZAH120FILE returns the handle to a new MUMTAZAH120FILE or the handle to
%      the existing singleton*.
%
%      MUMTAZAH120FILE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MUMTAZAH120FILE.M with the given input arguments.
%
%      MUMTAZAH120FILE('Property','Value',...) creates a new MUMTAZAH120FILE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Mumtazah120file_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Mumtazah120file_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Mumtazah120file

% Last Modified by GUIDE v2.5 19-Dec-2019 20:53:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Mumtazah120file_OpeningFcn, ...
                   'gui_OutputFcn',  @Mumtazah120file_OutputFcn, ...
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


% --- Executes just before Mumtazah120file is made visible.
function Mumtazah120file_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Mumtazah120file (see VARARGIN)

% Choose default command line output for Mumtazah120file
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Mumtazah120file wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Mumtazah120file_OutputFcn(hObject, eventdata, handles) 
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
if R>=140 & R<=204
    if G>=140 & G<=204
        if B>=66 & B<=154
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
