function varargout = CorrelationCoef(varargin)
%CORRELATIONCOEF MATLAB code file for CorrelationCoef.fig
%      CORRELATIONCOEF, by itself, creates a new CORRELATIONCOEF or raises the existing
%      singleton*.
%
%      H = CORRELATIONCOEF returns the handle to a new CORRELATIONCOEF or the handle to
%      the existing singleton*.
%
%      CORRELATIONCOEF('Property','Value',...) creates a new CORRELATIONCOEF using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to CorrelationCoef_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      CORRELATIONCOEF('CALLBACK') and CORRELATIONCOEF('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CORRELATIONCOEF.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CorrelationCoef

% Last Modified by GUIDE v2.5 16-Sep-2021 22:00:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CorrelationCoef_OpeningFcn, ...
                   'gui_OutputFcn',  @CorrelationCoef_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before CorrelationCoef is made visible.
function CorrelationCoef_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for CorrelationCoef
handles.output = hObject;
disp('Práctica de Reconocimientod Facial en MALTAB')
disp(' ')
global photo0;
photo0 = imread('C:\Users\gucam\OneDrive\Desktop\9th Semester\8th Semester\Instrumentación\Prácticas\Práctica 4\mano0.png');
axes(handles.axes7)
imshow(photo0)
% Update handles structure
guidata(hObject, handles);


% UIWAIT makes CorrelationCoef wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CorrelationCoef_OutputFcn(~, ~, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(~, ~, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global photo1;
photo1 = imread('C:\Users\gucam\OneDrive\Desktop\9th Semester\8th Semester\Instrumentación\Prácticas\Práctica 4\mano1.png');
axes(handles.axes1)
imshow(photo1)

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(~, ~, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global photo2;
photo2 = imread('C:\Users\gucam\OneDrive\Desktop\9th Semester\8th Semester\Instrumentación\Prácticas\Práctica 4\mano2.png');
axes(handles.axes2)
imshow(photo2)

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(~, ~, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global photo3;
photo3 = imread('C:\Users\gucam\OneDrive\Desktop\9th Semester\8th Semester\Instrumentación\Prácticas\Práctica 4\mano0.png');
axes(handles.axes3)
imshow(photo3)

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(~, ~, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% global variables
global photo0;
global photo1;
global photo2;
global photo3;

% rgb2gray conversion, axes position and imshow in that position
grayphoto0 = rgb2gray(photo0);
axes(handles.axes8)
imshow(grayphoto0)
grayphoto1 = rgb2gray(photo1);
axes(handles.axes4)
imshow(grayphoto1)
grayphoto2 = rgb2gray(photo2);
axes(handles.axes5)
imshow(grayphoto2)
grayphoto3 = rgb2gray(photo3);
axes(handles.axes6)
imshow(grayphoto3)

% I2 = im2double(I) converts the image I to double precision.
grayphoto0 = im2double(grayphoto0);
grayphoto1 = im2double(grayphoto1);
grayphoto2 = im2double(grayphoto2);
grayphoto3 = im2double(grayphoto3);

% corr2 function and display
rxy1 = corr2(grayphoto0,grayphoto1);
rcorr1 = num2str(rxy1); % need to convert to string to display num value
set(handles.edit1,'String',rxy1)
rxy2 = corr2(grayphoto0,grayphoto2);
rcorr2 = num2str(rxy2);
set(handles.edit2,'String',rcorr2)
rxy3 = corr2(grayphoto0,grayphoto3);
rcorr3 = num2str(rxy3);
set(handles.edit3,'String',rcorr3)
disp('Cálculo con la función corr2.')
fprintf('Coeficiente de correlación entre la imagen de referencia y la photo 1 es: ')
disp(rcorr1)
fprintf('Coeficiente de correlación entre la imagen de referencia y la photo 2 es: ')
disp(rcorr2)
fprintf('Coeficiente de correlación entre la imagen de referencia y la photo 3 es: ')
disp(rcorr3)

% Pearson correlation coefficient calculation
[h,w] = size(grayphoto0); % determine the size of reference matrix
n = h*w; % n product of that reference matrix
% summation variables for the 1st correlation
sumx0 = 0; % x summatory
sumy0 = 0; % y summatory
sumx1 = 0; % ~x summatory
sumy1 = 0; % ~y summatory
sumxy = 0; % product of x and y
% loop for row/column
for i = 1:h
    for j = 1:w
        sumx0 = sumx0 + grayphoto1(i,j);
        sumy0 = sumy0 + grayphoto0(i,j);
        sumxy = sumxy + grayphoto0(i,j) * grayphoto1(i,j);
        sumx1 = sumx1 + grayphoto1(i,j)^2;
        sumy1 = sumy1 + grayphoto0(i,j)^2;
    end
end
%calculate r
rxy4 = (n * sumxy - sumx0 * sumy0) / ((sqrt(double(n * sumx1 - sumx0^2)) * sqrt(double(n * sumy1 - sumy0^2))));
rcorr4 = num2str(rxy4);
set(handles.edit5,'String',rcorr4)
disp(' ')
disp('Cálculo con el coeficiente de correlación de Pearson.')
fprintf('Coeficiente de correlación entre la imagen de referencia y la photo 1 es: ')
disp(rcorr4)

% summation variables for the 2nd correlation
ndsumx0 = 0; % x summatory
ndsumy0 = 0; % y summatory
ndsumx1 = 0; % ~x summatory
ndsumy1 = 0; % ~y summatory
ndsumxy = 0; % product of x and y
% loop for row/column
for i = 1:h
    for j = 1:w
        ndsumx0 = ndsumx0 + grayphoto2(i,j);
        ndsumy0 = ndsumy0 + grayphoto0(i,j);
        ndsumxy = ndsumxy + grayphoto0(i,j) * grayphoto2(i,j);
        ndsumx1 = ndsumx1 + grayphoto2(i,j)^2;
        ndsumy1 = ndsumy1 + grayphoto0(i,j)^2;
    end
end
%calculate r
rxy5 = (n * ndsumxy - ndsumx0 * ndsumy0) / ((sqrt(double(n * ndsumx1 - ndsumx0^2)) * sqrt(double(n * ndsumy1 - ndsumy0^2))));
rcorr5 = num2str(rxy5);
set(handles.edit6,'String',rcorr5)
fprintf('Coeficiente de correlación entre la imagen de referencia y la photo 2 es: ')
disp(rcorr5)

% summation variables for the 3rd correlation
rdsumx0 = 0; % x summatory
rdsumy0 = 0; % y summatory
rdsumx1 = 0; % ~x summatory
rdsumy1 = 0; % ~y summatory
rdsumxy = 0; % product of x and y
% loop for row/column
for i = 1:h
    for j = 1:w
        rdsumx0 = rdsumx0 + grayphoto3(i,j);
        rdsumy0 = rdsumy0 + grayphoto0(i,j);
        rdsumxy = rdsumxy + grayphoto0(i,j) * grayphoto3(i,j);
        rdsumx1 = rdsumx1 + grayphoto3(i,j)^2;
        rdsumy1 = rdsumy1 + grayphoto0(i,j)^2;
    end
end
%calculate r
rxy6 = (n * rdsumxy - rdsumx0 * rdsumy0) / ((sqrt(double(n * rdsumx1 - rdsumx0^2)) * sqrt(double(n * rdsumy1 - rdsumy0^2))));
rcorr6 = num2str(rxy6);
set(handles.edit7,'String',rcorr6)
fprintf('Coeficiente de correlación entre la imagen de referencia y la photo 3 es: ')
disp(rcorr6)

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, ~, ~)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, ~, ~)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, ~, ~)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit5_Callback(~, ~, ~)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, ~, ~)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit6_Callback(~, ~, ~)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, ~, ~)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit7_Callback(~, ~, ~)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, ~, ~)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
