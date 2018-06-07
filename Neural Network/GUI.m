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
guidata(hObject, handles);
clc

% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
%=====================================================================================================================%

function figure1_ButtonDownFcn(hObject, eventdata, handles)
function figure1_CreateFcn(hObject, eventdata, handles)
function figure1_DeleteFcn(hObject, eventdata, handles)
function figure1_KeyPressFcn(hObject, eventdata, handles)
function figure1_KeyReleaseFcn(hObject, eventdata, handles)
%=====================================================================================================================%
% PANEL 1
function Panel1_ButtonDownFcn(hObject, eventdata, handles)
function Panel1_CreateFcn(hObject, eventdata, handles)
function Panel1_DeleteFcn(hObject, eventdata, handles)
%=====================================================================================================================%
% PANEL 2
function panel2_ButtonDownFcn(hObject, eventdata, handles)
function panel2_CreateFcn(hObject, eventdata, handles)
function panel2_DeleteFcn(hObject, eventdata, handles)
%=====================================================================================================================%
function bttnGroup_ButtonDownFcn(hObject, eventdata, handles)
function bttnGroup_CreateFcn(hObject, eventdata, handles)
function bttnGroup_DeleteFcn(hObject, eventdata, handles)
%=====================================================================================================================%
function bttnGroup2_ButtonDownFcn(hObject, eventdata, handles)
function bttnGroup2_CreateFcn(hObject, eventdata, handles)
function bttnGroup2_DeleteFcn(hObject, eventdata, handles)
%=====================================================================================================================%
function radiobutton1_Callback(hObject, eventdata, handles)
function radiobutton1_ButtonDownFcn(hObject, eventdata, handles)
function radiobutton1_CreateFcn(hObject, eventdata, handles)
function radiobutton1_DeleteFcn(hObject, eventdata, handles)
function radiobutton1_KeyPressFcn(hObject, eventdata, handles)
%=====================================================================================================================%
function radiobutton2_Callback(hObject, eventdata, handles)
function radiobutton2_ButtonDownFcn(hObject, eventdata, handles)
function radiobutton2_CreateFcn(hObject, eventdata, handles)
function radiobutton2_DeleteFcn(hObject, eventdata, handles)
function radiobutton2_KeyPressFcn(hObject, eventdata, handles)
%=====================================================================================================================%
function popupmenu1_ButtonDownFcn(hObject, eventdata, handles)
function popupmenu1_DeleteFcn(hObject, eventdata, handles)
function popupmenu1_Callback(hObject, eventdata, handles)
function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
      
end
%=====================================================================================================================%
function popupmenu2_Callback(hObject, eventdata, handles)
function popupmenu2_ButtonDownFcn(hObject, eventdata, handles)
function popupmenu2_DeleteFcn(hObject, eventdata, handles)
function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%=====================================================================================================================%
function edit1_Callback(hObject, eventdata, handles)
function edit1_KeyPressFcn(hObject, eventdata, handles)
function edit1_ButtonDownFcn(hObject, eventdata, handles)
set(hObject, 'Enable', 'On');
set(hObject, 'String', '');
set(hObject, 'FontAngle', 'normal');
set(hObject,'Foreground',[0,0,0]);
% Create UI control
uicontrol(handles.edit1);

function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit1_DeleteFcn(hObject, eventdata, handles)
%=====================================================================================================================%
function edit2_Callback(hObject, eventdata, handles)
function edit2_ButtonDownFcn(hObject, eventdata, handles)
set(hObject, 'Enable', 'On');
set(hObject, 'String', '');
set(hObject, 'FontAngle', 'normal');
set(hObject,'Foreground',[0,0,0]);
% Create UI control
uicontrol(handles.edit2);
function edit2_DeleteFcn(hObject, eventdata, handles)
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%=====================================================================================================================%
function edit3_Callback(hObject, eventdata, handles)
function edit3_ButtonDownFcn(hObject, eventdata, handles)
set(hObject, 'Enable', 'On');
set(hObject, 'String', '');
set(hObject, 'FontAngle', 'normal');
set(hObject,'Foreground',[0,0,0]);
% Create UI control
uicontrol(handles.edit3);
function edit3_DeleteFcn(hObject, eventdata, handles)
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%=====================================================================================================================%
function edit4_ButtonDownFcn(hObject, eventdata, handles)
set(hObject, 'Enable', 'On');
set(hObject, 'String', '');
set(hObject, 'FontAngle', 'normal');
set(hObject,'Foreground',[0,0,0]);
% Create UI control
uicontrol(handles.edit4);
function edit4_DeleteFcn(hObject, eventdata, handles)
function edit4_Callback(hObject, eventdata, handles)
function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%=====================================================================================================================%
function edit5_ButtonDownFcn(hObject, eventdata, handles)
set(hObject, 'Enable', 'On');
set(hObject, 'String', '');
set(hObject, 'FontAngle', 'normal');
set(hObject,'Foreground',[0,0,0]);
% Create UI control
uicontrol(handles.edit5);
function edit5_DeleteFcn(hObject, eventdata, handles)
function edit5_Callback(hObject, eventdata, handles)
function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%=====================================================================================================================%
% PROCEED
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
function pushbutton1_Callback(hObject, eventdata, handles)

FeatureExtractionMethod = get(handles.bttnGroup,'SelectedObject');
FeatureExtractionMethod = get(FeatureExtractionMethod,'String');

TargetPath = get(handles.bttnGroup2,'SelectedObject');
TargetPath = get(TargetPath,'String');

hiddenFn = get(handles.popupmenu1,'Value');
outputFn = get(handles.popupmenu2,'Value');

NumOfHidden = str2num(get(handles.edit1,'String'));
NumOfTraining = str2num(get(handles.edit2,'String'));

EPOCH = get(handles.edit3,'String'); 
    if (isequal(EPOCH,'Defualt is 1000')) 
        EPOCH = 1000;
    else
    EPOCH = str2num(EPOCH);
        if (EPOCH <= 0)
            EPOCH = 1000;
        end
    end
    
PERF = get(handles.edit4,'String'); 
    if (isequal(PERF,'Default is 0')) 
        PERF = 0;
    else
    PERF = str2num(PERF);
        if (PERF <= 0)
            PERF = 0;
        end
    end
TIME = get(handles.edit5,'String'); 
    if (isequal(TIME,'Default is infinity')) 
        TIME = inf;
    else
    TIME = str2num(TIME);
        if (TIME <= 0)
            TIME = int;
        end
    end
set(handles.edit6,'String','Status: Running...');   
NeuralNetwork_Train(FeatureExtractionMethod,TargetPath,NumOfHidden,hiddenFn,outputFn,NumOfTraining,EPOCH,PERF,TIME)
set(handles.edit6,'String','Status: Done !');   

%=====================================================================================================================%
function pushbutton2_Callback(hObject, eventdata, handles)
FeatureExtractionMethod = get(handles.bttnGroup3,'SelectedObject');
FeatureExtractionMethod = get(FeatureExtractionMethod,'String');

[indices,Correct,Incorrect] = NeuralNetwork_Test(FeatureExtractionMethod)
total = find(Correct ~= -1);
total = total -1;
correctnessRate = floor((size(total,2) / 10)*100);
IncorrectnessRate = 100 - correctnessRate;
set(handles.edit10,'String',num2str(indices));
set(handles.edit7,'String',strcat(num2str(correctnessRate),'%'));
set(handles.edit8,'String',strcat(num2str(IncorrectnessRate),'%'));
for i=1:size(total,2)
    value = total(1,i);
    switch value
        case 0
            set(handles.checkbox0,'Value',1);
            set(handles.checkbox0,'Enable','inactive');
        case 1
            set(handles.checkbox1,'Value',1);
            set(handles.checkbox1,'Enable','inactive');
        case 2
            set(handles.checkbox2,'Value',1);
            set(handles.checkbox2,'Enable','inactive');
        case 3
            set(handles.checkbox3,'Value',1);
            set(handles.checkbox3,'Enable','inactive');
        case 4
            set(handles.checkbox4,'Value',1);
            set(handles.checkbox4,'Enable','inactive');
        case 5
            set(handles.checkbox5,'Value',1);
            set(handles.checkbox5,'Enable','inactive');
        case 6
            set(handles.checkbox6,'Value',1);
            set(handles.checkbox6,'Enable','inactive');
        case 7
            set(handles.checkbox7,'Value',1);
            set(handles.checkbox7,'Enable','inactive');
        case 8
            set(handles.checkbox8,'Value',1);
            set(handles.checkbox8,'Enable','inactive');
        case 9
            set(handles.checkbox9,'Value',1);
            set(handles.checkbox9,'Enable','inactive');
        otherwise
    end
    
end


%=====================================================================================================================%
function pushbutton3_Callback(hObject, eventdata, handles)

%=====================================================================================================================%
function pushbutton4_Callback(hObject, eventdata, handles)


function edit6_Callback(hObject, eventdata, handles)


function edit6_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function bttnGroup3_ButtonDownFcn(hObject, eventdata, handles)


function bttnGroup3_CreateFcn(hObject, eventdata, handles)


function bttnGroup3_DeleteFcn(hObject, eventdata, handles)


function checkbox0_Callback(hObject, eventdata, handles)


function checkbox1_Callback(hObject, eventdata, handles)


function checkbox3_Callback(hObject, eventdata, handles)


function checkbox2_Callback(hObject, eventdata, handles)


function checkbox4_Callback(hObject, eventdata, handles)


function checkbox5_Callback(hObject, eventdata, handles)


function checkbox6_Callback(hObject, eventdata, handles)


function checkbox7_Callback(hObject, eventdata, handles)


function checkbox8_Callback(hObject, eventdata, handles)


function checkbox9_Callback(hObject, eventdata, handles)


function uipanel9_ButtonDownFcn(hObject, eventdata, handles)


function uipanel9_CreateFcn(hObject, eventdata, handles)


function uipanel9_DeleteFcn(hObject, eventdata, handles)


function edit7_Callback(hObject, eventdata, handles)


function edit7_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit8_Callback(hObject, eventdata, handles)


function edit8_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit9_Callback(hObject, eventdata, handles)


function edit9_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function checkbox0_ButtonDownFcn(hObject, eventdata, handles)


function checkbox1_ButtonDownFcn(hObject, eventdata, handles)


function checkbox3_ButtonDownFcn(hObject, eventdata, handles)


function checkbox2_ButtonDownFcn(hObject, eventdata, handles)


function checkbox4_ButtonDownFcn(hObject, eventdata, handles)


function checkbox5_ButtonDownFcn(hObject, eventdata, handles)


function checkbox6_ButtonDownFcn(hObject, eventdata, handles)


function checkbox7_ButtonDownFcn(hObject, eventdata, handles)


function checkbox8_ButtonDownFcn(hObject, eventdata, handles)


function checkbox9_ButtonDownFcn(hObject, eventdata, handles)


function checkbox0_CreateFcn(hObject, eventdata, handles)


function checkbox1_CreateFcn(hObject, eventdata, handles)


function checkbox3_CreateFcn(hObject, eventdata, handles)


function checkbox2_CreateFcn(hObject, eventdata, handles)


function checkbox4_CreateFcn(hObject, eventdata, handles)


function checkbox5_CreateFcn(hObject, eventdata, handles)


function checkbox6_CreateFcn(hObject, eventdata, handles)


function checkbox7_CreateFcn(hObject, eventdata, handles)


function checkbox8_CreateFcn(hObject, eventdata, handles)


function checkbox9_CreateFcn(hObject, eventdata, handles)


function checkbox0_DeleteFcn(hObject, eventdata, handles)


function checkbox1_DeleteFcn(hObject, eventdata, handles)


function checkbox3_DeleteFcn(hObject, eventdata, handles)


function checkbox2_DeleteFcn(hObject, eventdata, handles)


function checkbox4_DeleteFcn(hObject, eventdata, handles)


function checkbox5_DeleteFcn(hObject, eventdata, handles)


function checkbox6_DeleteFcn(hObject, eventdata, handles)


function checkbox7_DeleteFcn(hObject, eventdata, handles)


function checkbox8_DeleteFcn(hObject, eventdata, handles)


function checkbox9_DeleteFcn(hObject, eventdata, handles)


function edit10_Callback(hObject, eventdata, handles)


function edit10_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function pushbutton2_ButtonDownFcn(hObject, eventdata, handles)


function pushbutton2_CreateFcn(hObject, eventdata, handles)


function pushbutton5_Callback(hObject, eventdata, handles)


set(handles.edit1, 'Enable', 'off');
set(handles.edit1,'String','Enter Number of hidden layers here');

set(handles.edit2, 'Enable', 'off');
set(handles.edit2,'String','Enter Number of training processes here');

set(handles.edit3, 'Enable', 'off');
set(handles.edit3,'String','Default is 1000');

set(handles.edit4, 'Enable', 'off');
set(handles.edit4,'String','Default is 0');

set(handles.edit5, 'Enable', 'off');
set(handles.edit5,'String','Default is infinity');

set(handles.edit7,'String','Correctness Percentage');
set(handles.edit8,'String','Incorrectness Percentage');
set(handles.edit9,'String','')
set(handles.edit10,'String','Results will appear here...');


function pushbutton6_Callback(hObject, eventdata, handles)
choice = questdlg('Are you sure you want to exit?...', ...
	'Confirmation', ...
	'Yes','No','No');
% Handle response
switch choice
    case 'Yes'
        delete(handles.figure1);
    case 'No'
      
    
end
    



function pushbutton6_ButtonDownFcn(hObject, eventdata, handles)


function pushbutton6_CreateFcn(hObject, eventdata, handles)


function pushbutton6_DeleteFcn(hObject, eventdata, handles)
