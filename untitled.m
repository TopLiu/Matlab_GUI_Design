function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 03-Jan-2018 12:28:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Initialize UItable
set(handles.table,'data',[]);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in caculate.
function caculate_Callback(hObject, eventdata, handles)
if get(handles.ten_sum,'value')
    s1 = str2double(get(handles.added,'String'));
    s2 = str2double(get(handles.add,'String'));
    set(handles.result,'String',s1+s2)
elseif get(handles.two_and,'value')
    s1 = str2double(get(handles.added,'String'));
    s2 = str2double(get(handles.add,'String'));
    set(handles.result,'String',bitand(s1,s2));
else
    set(handles.result,'String','');
end
% hObject    handle to caculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
set(handles.add,'String','')
set(handles.added,'String','')
set(handles.result,'String','')
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ten_sum.
function ten_sum_Callback(hObject, eventdata, handles)
if get(handles.ten_sum,'value')
    set(handles.two_and,'value',0)
    set(handles.ten_sum,'value',1)
end
% hObject    handle to ten_sum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ten_sum


% --- Executes on button press in two_and.
function two_and_Callback(hObject, eventdata, handles)
if get(handles.two_and,'value')
    set(handles.ten_sum,'value',0)
    set(handles.two_and,'value',1)
end
% hObject    handle to two_and (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of two_and



function added_Callback(hObject, eventdata, handles)
% hObject    handle to added (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of added as text
%        str2double(get(hObject,'String')) returns contents of added as a double


% --- Executes during object creation, after setting all properties.
function added_CreateFcn(hObject, eventdata, handles)
% hObject    handle to added (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of add as text
%        str2double(get(hObject,'String')) returns contents of add as a double


% --- Executes during object creation, after setting all properties.
function add_CreateFcn(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in append.
function append_Callback(hObject, eventdata, handles)
content1 = str2double(get(handles.added,'String'));
content2 = str2double(get(handles.add,'String'));
if get(handles.ten_sum,'value')
    content3 = 10;
else get(handles.two_and,'value')
    content3 = 2;
end
content4 = str2double(get(handles.result,'String'));
olddata = get(handles.table,'data');
%handles.tabledata = tabledata ;
%guidata(hObject,handles);
%olddata = tabledata ; 
%olddata
newrow = [content1 content2 content3 content4];

if isempty(olddata)
    newdata = newrow;
else
    newdata = [olddata ; newrow]; 
end
set(handles.table,'data',newdata);
% hObject    handle to append (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
global tabledata ;
tabledata  = get(handles.table,'data');
run new_figure;


% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
