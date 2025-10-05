function varargout = Programa_Segundo_Corte(varargin)
% PROGRAMA_SEGUNDO_CORTE MATLAB code for Programa_Segundo_Corte.fig
%      PROGRAMA_SEGUNDO_CORTE, by itself, creates a new PROGRAMA_SEGUNDO_CORTE or raises the existing
%      singleton*.
%
%      H = PROGRAMA_SEGUNDO_CORTE returns the handle to a new PROGRAMA_SEGUNDO_CORTE or the handle to
%      the existing singleton*.
%
%      PROGRAMA_SEGUNDO_CORTE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROGRAMA_SEGUNDO_CORTE.M with the given input arguments.
%
%      PROGRAMA_SEGUNDO_CORTE('Property','Value',...) creates a new PROGRAMA_SEGUNDO_CORTE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Programa_Segundo_Corte_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Programa_Segundo_Corte_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Programa_Segundo_Corte

% Last Modified by GUIDE v2.5 28-Apr-2020 01:33:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Programa_Segundo_Corte_OpeningFcn, ...
                   'gui_OutputFcn',  @Programa_Segundo_Corte_OutputFcn, ...
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


% --- Executes just before Programa_Segundo_Corte is made visible.
function Programa_Segundo_Corte_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Programa_Segundo_Corte (see VARARGIN)

set(handles.text5,'Visible','off');
set(handles.text7,'Visible','off');

% Choose default command line output for Programa_Segundo_Corte
handles.output = hObject;
set(gcf, 'Color', [0.94 0.94 0.94]);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Programa_Segundo_Corte wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Programa_Segundo_Corte_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
val = get(hObject,'Value');
a = get(handles.edit2,'String');
n = strcat('[', a , ']');
num= eval(n);
b = get(handles.edit3,'String');
d = strcat('[', b , ']');
den= eval(d);
Transfer_Function = tf(num,den);

set(handles.text6,'string', zero(Transfer_Function))
set(handles.text8,'string', pole(Transfer_Function))


set(handles.text5,'Visible','on');
set(handles.text7,'Visible','on');

p=pole(Transfer_Function)
z=zero(Transfer_Function)

 axes(handles.axes2);
pzmap(Transfer_Function)



switch val
    case 1% Reset
        
    case 2% Impulso
        grid on;
        axes(handles.axes1);
        impulse(Transfer_Function);
        grid on;
    case 3% Escalon
        grid on;
        axes(handles.axes1);
        step(Transfer_Function);
        grid on;
    case 4% Rampa
        t=0:0.1:10;
        x=t;
        grid on;
        axes(handles.axes1);
        lsim(Transfer_Function,x,t);
        grid on;
    otherwise
end 


Transfer_Function = evalc('Transfer_Function');
set(handles.text4,'string', Transfer_Function)

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
