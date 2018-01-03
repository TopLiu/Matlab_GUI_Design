function varargout = new_figure(varargin)
% NEW_FIGURE MATLAB code for new_figure.fig
%      NEW_FIGURE, by itself, creates a new NEW_FIGURE or raises the existing
%      singleton*.
%
%      H = NEW_FIGURE returns the handle to a new NEW_FIGURE or the handle to
%      the existing singleton*.
%
%      NEW_FIGURE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEW_FIGURE.M with the given input arguments.
%
%      NEW_FIGURE('Property','Value',...) creates a new NEW_FIGURE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before new_figure_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to new_figure_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help new_figure

% Last Modified by GUIDE v2.5 03-Jan-2018 17:07:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @new_figure_OpeningFcn, ...
                   'gui_OutputFcn',  @new_figure_OutputFcn, ...
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


% --- Executes just before new_figure is made visible.
function new_figure_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to new_figure (see VARARGIN)

% Choose default command line output for new_figure
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes new_figure wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = new_figure_OutputFcn(hObject, eventdata, handles)
global tabledata ; 
x = size(tabledata, 1)
xlabel('数据序号');
set(gca,'xtick',[1:1:x]);
hold on;
y1 = tabledata(:,1);
y2 = tabledata(:,2);
y3 = tabledata(:,4);
y1 = y1'
y2 = y2'
y3 = y3'
plot(y1);
hold on;
plot(y2);
hold on;
plot(y3);
hold on;
legend 输入1 输入2 计算结果
title('输入输出数据对比');
%plot(y2);
%plot(y3);
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
