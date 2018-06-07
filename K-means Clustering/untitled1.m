function varargout = untitled1(varargin)
% UNTITLED1 MATLAB code for untitled1.fig
%      UNTITLED1, by itself, creates a new UNTITLED1 or raises the existing
%      singleton*.
%
%      H = UNTITLED1 returns the handle to a new UNTITLED1 or the handle to
%      the existing singleton*.
%
%      UNTITLED1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED1.M with the given input arguments.
%
%      UNTITLED1('Property','Value',...) creates a new UNTITLED1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled1
% Last Modified by GUIDE v2.5 17-Apr-2017 17:58:52
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled1_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled1_OutputFcn, ...
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

% --- Executes just before untitled1 is made visible.
function untitled1_OpeningFcn(hObject, eventdata, handles, varargin)
% set(handles.figure1, 'Name', 'Image Clustering');
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);


function varargout = untitled1_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over kEdit.
function kEdit_ButtonDownFcn(hObject, eventdata, handles)
% Toggel the "Enable" state to ON
set(hObject, 'Enable', 'On');
set(hObject, 'string', '');
set(hObject,'Foreground',[0,0,0]);
% Create UI control
uicontrol(handles.kEdit);

%=========================================================================%
%                             PROCEED BUTTON                              %
%=========================================================================%
% --- Executes on button press in PROCEED
function pushbutton1_Callback(hObject, eventdata, handles)
    kvalue = get(handles.kEdit,'string');
    finalPath = get(handles.edit3,'string');
    if (isempty(kvalue) || isempty(finalPath))
        set(handles.edit4,'string','Enter a valid parameters!');
    
    elseif (strcmp(kvalue,'Type K value here...'))
        set(handles.edit4,'string','Enter a valid K-value !');
    
    elseif (strcmp(finalPath,'Type full path here or press browse to select an image...'))
        set(handles.edit4,'string','Enter a valid path!');
        
    elseif (~exist(finalPath,'file'))
        set(handles.edit4,'string','The path you entered is not valid !!!');
        
    elseif(str2num(kvalue) <= 0)
        set(handles.edit4,'string','Enter a valid K-value !');
        
        
    else
        recoveredImage = K_MEANS(finalPath,kvalue,handles.figure1);
        imshow(recoveredImage,'parent',handles.axes1);
        set(handles.edit4,'string','Done');
    end

    
function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes on mouse press over figure background.
function edit3_ButtonDownFcn(hObject, eventdata, handles)
set(hObject, 'Enable', 'On');
set(hObject, 'string', '');
set(hObject,'Foreground',[0,0,0]);
% Create UI control
uicontrol(handles.edit3);
% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
     [filename,pathname]= uigetfile({'*.*'},'File Selector');
     imPath = [pathname filename] ;
     set(handles.edit3,'Foreground',[0 0 0]);
     set(handles.edit3,'FontAngle','normal');
     set(handles.edit3,'string',imPath);
     guidata(hObject, handles);
% --- Executes during object creation, after setting all properties.
function togglebutton3_CreateFcn(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function kEdit_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.
function pushbutton1_CreateFcn(hObject, eventdata, handles)
function kEdit_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
delete(hObject);

% --- Executes during object deletion, before destroying properties.
function figure1_DeleteFcn(hObject, eventdata, handles)

function edit4_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)



% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)



% --- Executes on key release with focus on figure1 and none of its controls.
function figure1_KeyReleaseFcn(hObject, eventdata, handles)
