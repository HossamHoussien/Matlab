function varargout = GUI(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;

% PANEL 1 (MSSE)
function panel1_CreateFcn(hObject, eventdata, handles)
function panel1_ButtonDownFcn(hObject, eventdata, handles)
function panel1_ResizeFcn(hObject, eventdata, handles)
function panel1_DeleteFcn(hObject, eventdata, handles)
%PANEL 2 (CHAIN CODE)
function panel2_CreateFcn(hObject, eventdata, handles)
function panel2_ButtonDownFcn(hObject, eventdata, handles)
function panel2_ResizeFcn(hObject, eventdata, handles)
function panel2_DeleteFcn(hObject, eventdata, handles)
%=========================================================================%
% STATIC TEXT 1
function text1_CreateFcn(hObject, eventdata, handles)
function text1_ButtonDownFcn(hObject, eventdata, handles)
function text1_DeleteFcn(hObject, eventdata, handles)
% STATIC TEXT 2
function text2_CreateFcn(hObject, eventdata, handles)
function text2_ButtonDownFcn(hObject, eventdata, handles)
function text2_DeleteFcn(hObject, eventdata, handles)
% STATIC TEXT 3
function text3_CreateFcn(hObject, eventdata, handles)
function text3_ButtonDownFcn(hObject, eventdata, handles)
function text3_DeleteFcn(hObject, eventdata, handles)
% STATIC TEXT 4
function text4_CreateFcn(hObject, eventdata, handles)
function text4_ButtonDownFcn(hObject, eventdata, handles)
function text4_DeleteFcn(hObject, eventdata, handles)
% STATIC TEXT 5
function text5_CreateFcn(hObject, eventdata, handles)
function text5_ButtonDownFcn(hObject, eventdata, handles)
function text5_DeleteFcn(hObject, eventdata, handles)
% STATIC TEXT 6 (Chain Code)
function text6_CreateFcn(hObject, eventdata, handles)
function text6_ButtonDownFcn(hObject, eventdata, handles)
function text6_DeleteFcn(hObject, eventdata, handles)
% STATIC TEXT 7
function text7_CreateFcn(hObject, eventdata, handles)
function text7_ButtonDownFcn(hObject, eventdata, handles)
function text7_DeleteFcn(hObject, eventdata, handles)
% STATIC TEXT 8
function text8_CreateFcn(hObject, eventdata, handles)
function text8_ButtonDownFcn(hObject, eventdata, handles)
function text8_DeleteFcn(hObject, eventdata, handles)
%=========================================================================%
% EDIT TEXT 1
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit1_ButtonDownFcn(hObject, eventdata, handles)
function edit1_Callback(hObject, eventdata, handles)
function edit1_DeleteFcn(hObject, eventdata, handles)
function edit1_KeyPressFcn(hObject, eventdata, handles)
% EDIT TEXT 2
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit2_ButtonDownFcn(hObject, eventdata, handles)
function edit2_Callback(hObject, eventdata, handles)
function edit2_DeleteFcn(hObject, eventdata, handles)
function edit2_KeyPressFcn(hObject, eventdata, handles)
% EDIT TEXT 3
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit3_ButtonDownFcn(hObject, eventdata, handles)
function edit3_Callback(hObject, eventdata, handles)
function edit3_DeleteFcn(hObject, eventdata, handles)
function edit3_KeyPressFcn(hObject, eventdata, handles)
% EDIT TEXT 4
function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit4_ButtonDownFcn(hObject, eventdata, handles)
function edit4_Callback(hObject, eventdata, handles)
function edit4_DeleteFcn(hObject, eventdata, handles)
function edit4_KeyPressFcn(hObject, eventdata, handles)
% EDIT TEXT 5
function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit5_ButtonDownFcn(hObject, eventdata, handles)
function edit5_Callback(hObject, eventdata, handles)
function edit5_DeleteFcn(hObject, eventdata, handles)
function edit5_KeyPressFcn(hObject, eventdata, handles)
% EDIT TEXT 6
function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit6_ButtonDownFcn(hObject, eventdata, handles)
function edit6_Callback(hObject, eventdata, handles)
function edit6_DeleteFcn(hObject, eventdata, handles)
function edit6_KeyPressFcn(hObject, eventdata, handles)
% EDIT TEXT 7
function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit7_ButtonDownFcn(hObject, eventdata, handles)
function edit7_Callback(hObject, eventdata, handles)
function edit7_DeleteFcn(hObject, eventdata, handles)
function edit7_KeyPressFcn(hObject, eventdata, handles)
% EDIT TEXT 8
function edit8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit8_ButtonDownFcn(hObject, eventdata, handles)
function edit8_Callback(hObject, eventdata, handles)
function edit8_DeleteFcn(hObject, eventdata, handles)
function edit8_KeyPressFcn(hObject, eventdata, handles)

% EDIT TEXT 12 (MSSE RESULTS)
function edit12_ButtonDownFcn(hObject, eventdata, handles)
function edit12_Callback(hObject, eventdata, handles)
function edit12_DeleteFcn(hObject, eventdata, handles)
function edit12_KeyPressFcn(hObject, eventdata, handles)
function edit12_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% EDIT TEXT 13 (Chain Code RESULTS)
function edit13_ButtonDownFcn(hObject, eventdata, handles)
function edit13_Callback(hObject, eventdata, handles)
function edit13_DeleteFcn(hObject, eventdata, handles)
function edit13_KeyPressFcn(hObject, eventdata, handles)
function edit13_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% EDIT TEXT 14 (Status Bar)
function edit14_Callback(hObject, eventdata, handles)
function edit14_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit14_ButtonDownFcn(hObject, eventdata, handles)
function edit14_DeleteFcn(hObject, eventdata, handles)
%=========================================================================%
% BUSH BUTTON 1 (RUN)
function pushbutton1_Callback(hObject, eventdata, handles)
set(handles.edit14,'FontAngle','italic');
set(handles.edit14,'string','Status: Running...');
pause(1);
% MSSE Results
[MSSE_result,MSSE_correctCount,MSSE_misclassifiedCount,MSSE_undeterminedCount,MSSE_newClassCount] = Test_MSSE(4,8);
% CHAIN Code Results         
[results,correct,incorrect] = Test_Chain(4,8);
res1 = num2str(MSSE_result);
res2 = num2str(results);
set(handles.edit2,'string',MSSE_correctCount);
set(handles.edit3,'string',MSSE_misclassifiedCount);
set(handles.edit4,'string',MSSE_newClassCount);
set(handles.edit5,'string',MSSE_undeterminedCount);
set(handles.edit7,'string',correct);
set(handles.edit8,'string',incorrect);
set(handles.edit12,'string',res1);
set(handles.edit13,'string',res2);
set(handles.edit14,'string','Status: Done...');

function pushbutton1_CreateFcn(hObject, eventdata, handles)
function pushbutton1_DeleteFcn(hObject, eventdata, handles)
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
function pushbutton1_KeyPressFcn(hObject, eventdata, handles)
%=========================================================================%
% BUSH BUTTON 2 (RESET)
function pushbutton2_Callback(hObject, eventdata, handles)
set(handles.edit14,'FontAngle','normal');
set(handles.edit14,'string','Status:');
set(handles.edit2,'string','Press Run to Show Comparison');
set(handles.edit3,'string','Press Run to Show Comparison');
set(handles.edit4,'string','Press Run to Show Comparison');
set(handles.edit5,'string','Press Run to Show Comparison');
set(handles.edit7,'string','Press Run to Show Comparison');
set(handles.edit8,'string','Press Run to Show Comparison');
set(handles.edit12,'string','Results will appear here...');
set(handles.edit13,'string','Results will appear here...');
function pushbutton2_CreateFcn(hObject, eventdata, handles)
function pushbutton2_DeleteFcn(hObject, eventdata, handles)
function pushbutton2_ButtonDownFcn(hObject, eventdata, handles)
function pushbutton2_KeyPressFcn(hObject, eventdata, handles)

%=========================================================================%
% BUSH BUTTON 3 (Exit)
function pushbutton3_Callback(hObject, eventdata, handles)
close all force;
function pushbutton3_CreateFcn(hObject, eventdata, handles)
function pushbutton3_DeleteFcn(hObject, eventdata, handles)
function pushbutton3_ButtonDownFcn(hObject, eventdata, handles)
function pushbutton3_KeyPressFcn(hObject, eventdata, handles)
