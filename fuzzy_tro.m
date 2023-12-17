function varargout = fuzzy_tro(varargin)
% FUZZY_TRO MATLAB code for fuzzy_tro.fig
%      FUZZY_TRO, by itself, creates a new FUZZY_TRO or raises the existing
%      singleton*.
%
%      H = FUZZY_TRO returns the handle to a new FUZZY_TRO or the handle to
%      the existing singleton*.
%
%      FUZZY_TRO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUZZY_TRO.M with the given input arguments.
%
%      FUZZY_TRO('Property','Value',...) creates a new FUZZY_TRO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fuzzy_tro_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fuzzy_tro_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fuzzy_tro

% Last Modified by GUIDE v2.5 17-Dec-2023 21:13:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fuzzy_tro_OpeningFcn, ...
                   'gui_OutputFcn',  @fuzzy_tro_OutputFcn, ...
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


% --- Executes just before fuzzy_tro is made visible.
function fuzzy_tro_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fuzzy_tro (see VARARGIN)

% Choose default command line output for fuzzy_tro
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fuzzy_tro wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fuzzy_tro_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in run.
function run_Callback(hObject, eventdata, handles)
% hObject    handle to run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=readfis('fuzzy_TRO')
out=evalfis([handles. suhu handles. lama_panas handles. mimisan handles. bintik_merah handles. muntah_darah handles. lemas], a)
set(handles. diagnosa, 'string', out);


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


function textdiagnosa_Callback(hObject, eventdata, handles)
% hObject    handle to textdiagnosa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textdiagnosa as text
%        str2double(get(hObject,'String')) returns contents of textdiagnosa as a double


% --- Executes during object creation, after setting all properties.
function textdiagnosa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textdiagnosa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function suhu_Callback(hObject, eventdata, handles)
% hObject    handle to suhu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of suhu as text
%        str2double(get(hObject,'String')) returns contents of suhu as a double
suhu=str2double(get(hObject,'string'));
handles.suhu=suhu;
guidata(hObject, handles);




% --- Executes during object creation, after setting all properties.
function suhu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to suhu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lama_panas_Callback(hObject, eventdata, handles)
% hObject    handle to lama_panas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lama_panas as text
%        str2double(get(hObject,'String')) returns contents of lama_panas as a double
lama_panas=str2double(get(hObject,'string'));
handles.lama_panas=lama_panas;
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function lama_panas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lama_panas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mimisan_Callback(hObject, eventdata, handles)
% hObject    handle to mimisan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mimisan as text
%        str2double(get(hObject,'String')) returns contents of mimisan as a double
mimisan=str2double(get(hObject,'string'));
handles.mimisan=mimisan;
guidata(hObject, handles);



% --- Executes during object creation, after setting all properties.
function mimisan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mimisan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bintik_merah_Callback(hObject, eventdata, handles)
% hObject    handle to bintik_merah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bintik_merah as text
%        str2double(get(hObject,'String')) returns contents of bintik_merah as a double
bintik_merah=str2double(get(hObject,'string'));
handles.bintik_merah=bintik_merah;
guidata(hObject, handles);



% --- Executes during object creation, after setting all properties.
function bintik_merah_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bintik_merah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function muntah_darah_Callback(hObject, eventdata, handles)
% hObject    handle to muntah_darah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of muntah_darah as text
%        str2double(get(hObject,'String')) returns contents of muntah_darah as a double
muntah_darah=str2double(get(hObject,'string'));
handles.muntah_darah=muntah_darah;
guidata(hObject, handles);



% --- Executes during object creation, after setting all properties.
function muntah_darah_CreateFcn(hObject, eventdata, handles)
% hObject    handle to muntah_darah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lemas_Callback(hObject, eventdata, handles)
% hObject    handle to lemas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lemas as text
%        str2double(get(hObject,'String')) returns contents of lemas as a double
lemas=str2double(get(hObject,'string'));
handles.lemas=lemas;
guidata(hObject, handles);



% --- Executes during object creation, after setting all properties.
function lemas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lemas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function diagnosa_Callback(hObject, eventdata, handles)
% hObject    handle to diagnosa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of diagnosa as text
%        str2double(get(hObject,'String')) returns contents of diagnosa as a double


% --- Executes during object creation, after setting all properties.
function diagnosa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to diagnosa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
