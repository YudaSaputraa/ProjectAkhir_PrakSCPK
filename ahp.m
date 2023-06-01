function varargout = ahp(varargin)
% AHP MATLAB code for ahp.fig
%      AHP, by itself, creates a new AHP or raises the existing
%      singleton*.
%
%      H = AHP returns the handle to a new AHP or the handle to
%      the existing singleton*.
%
%      AHP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AHP.M with the given input arguments.
%
%      AHP('Property','Value',...) creates a new AHP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ahp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ahp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ahp

% Last Modified by GUIDE v2.5 22-May-2023 18:47:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ahp_OpeningFcn, ...
                   'gui_OutputFcn',  @ahp_OutputFcn, ...
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


% --- Executes just before ahp is made visible.
function ahp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ahp (see VARARGIN)

% Choose default command line output for ahp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ahp wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ahp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dataa = readcell('Maskap.csv', 'Range', 'B2:S230');
set(handles.tableData, 'Data', dataa);



function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkResult.
function inflightWifiService_Callback(hObject, eventdata, handles)
% hObject    handle to inflightWifiService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inflightWifiService as text
%        str2double(get(hObject,'String')) returns contents of inflightWifiService as a double


% --- Executes during object creation, after setting all properties.
function inflightWifiService_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inflightWifiService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function departure_Callback(hObject, eventdata, handles)
% hObject    handle to departure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of departure as text
%        str2double(get(hObject,'String')) returns contents of departure as a double


% --- Executes during object creation, after setting all properties.
function departure_CreateFcn(hObject, eventdata, handles)
% hObject    handle to departure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function easeOfOnlineBooking_Callback(hObject, eventdata, handles)
% hObject    handle to easeOfOnlineBooking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of easeOfOnlineBooking as text
%        str2double(get(hObject,'String')) returns contents of easeOfOnlineBooking as a double


% --- Executes during object creation, after setting all properties.
function easeOfOnlineBooking_CreateFcn(hObject, eventdata, handles)
% hObject    handle to easeOfOnlineBooking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gateLocation_Callback(hObject, eventdata, handles)
% hObject    handle to gateLocation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gateLocation as text
%        str2double(get(hObject,'String')) returns contents of gateLocation as a double


% --- Executes during object creation, after setting all properties.
function gateLocation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gateLocation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function foodAndDrink_Callback(hObject, eventdata, handles)
% hObject    handle to foodAndDrink (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of foodAndDrink as text
%        str2double(get(hObject,'String')) returns contents of foodAndDrink as a double


% --- Executes during object creation, after setting all properties.
function foodAndDrink_CreateFcn(hObject, eventdata, handles)
% hObject    handle to foodAndDrink (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function onlineBoarding_Callback(hObject, eventdata, handles)
% hObject    handle to onlineBoarding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of onlineBoarding as text
%        str2double(get(hObject,'String')) returns contents of onlineBoarding as a double


% --- Executes during object creation, after setting all properties.
function onlineBoarding_CreateFcn(hObject, eventdata, handles)
% hObject    handle to onlineBoarding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function seatComfort_Callback(hObject, eventdata, handles)
% hObject    handle to seatComfort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of seatComfort as text
%        str2double(get(hObject,'String')) returns contents of seatComfort as a double


% --- Executes during object creation, after setting all properties.
function seatComfort_CreateFcn(hObject, eventdata, handles)
% hObject    handle to seatComfort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inflightEntertainment_Callback(hObject, eventdata, handles)
% hObject    handle to inflightEntertainment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inflightEntertainment as text
%        str2double(get(hObject,'String')) returns contents of inflightEntertainment as a double


% --- Executes during object creation, after setting all properties.
function inflightEntertainment_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inflightEntertainment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function onBoardService_Callback(hObject, eventdata, handles)
% hObject    handle to onBoardService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of onBoardService as text
%        str2double(get(hObject,'String')) returns contents of onBoardService as a double


% --- Executes during object creation, after setting all properties.
function onBoardService_CreateFcn(hObject, eventdata, handles)
% hObject    handle to onBoardService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function legRoomService_Callback(hObject, eventdata, handles)
% hObject    handle to legRoomService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of legRoomService as text
%        str2double(get(hObject,'String')) returns contents of legRoomService as a double


% --- Executes during object creation, after setting all properties.
function legRoomService_CreateFcn(hObject, eventdata, handles)
% hObject    handle to legRoomService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function baggageHandling_Callback(hObject, eventdata, handles)
% hObject    handle to baggageHandling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of baggageHandling as text
%        str2double(get(hObject,'String')) returns contents of baggageHandling as a double


% --- Executes during object creation, after setting all properties.
function baggageHandling_CreateFcn(hObject, eventdata, handles)
% hObject    handle to baggageHandling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function checkingService_Callback(hObject, eventdata, handles)
% hObject    handle to checkingService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of checkingService as text
%        str2double(get(hObject,'String')) returns contents of checkingService as a double


% --- Executes during object creation, after setting all properties.
function checkingService_CreateFcn(hObject, eventdata, handles)
% hObject    handle to checkingService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inflightService_Callback(hObject, eventdata, handles)
% hObject    handle to inflightService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inflightService as text
%        str2double(get(hObject,'String')) returns contents of inflightService as a double


% --- Executes during object creation, after setting all properties.
function inflightService_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inflightService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cleanLiness_Callback(hObject, eventdata, handles)
% hObject    handle to cleanLiness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cleanLiness as text
%        str2double(get(hObject,'String')) returns contents of cleanLiness as a double


% --- Executes during object creation, after setting all properties.
function cleanLiness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cleanLiness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function namaMaskapai_Callback(hObject, eventdata, handles)
% hObject    handle to namaMaskapai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of namaMaskapai as text
%        str2double(get(hObject,'String')) returns contents of namaMaskapai as a double


% --- Executes during object creation, after setting all properties.
function namaMaskapai_CreateFcn(hObject, eventdata, handles)
% hObject    handle to namaMaskapai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pointField_Callback(hObject, eventdata, handles)
% hObject    handle to pointField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pointField as text
%        str2double(get(hObject,'String')) returns contents of pointField as a double


% --- Executes during object creation, after setting all properties.
function pointField_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pointField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');

end


% --- Executes on button press in checkButton.
function checkButton_Callback(hObject, eventdata, handles)
% hObject    handle to checkButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    k1 = str2double(get(handles.inflightWifiService, 'String'));
    k2= str2double(get(handles.departure, 'String'));
    k3 = str2double(get(handles.easeOfOnlineBooking, 'String'));
    k4= str2double(get(handles.gateLocation, 'String'));
    k5= str2double(get(handles.foodAndDrink, 'String'));
    k6= str2double(get(handles.onlineBoarding, 'String'));
    k7= str2double(get(handles.seatComfort, 'String'));
    k8= str2double(get(handles.inflightEntertainment, 'String'));
    k9= str2double(get(handles.onBoardService, 'String'));
    k10= str2double(get(handles.legRoomService, 'String'));
    k11= str2double(get(handles.baggageHandling, 'String'));
    k12= str2double(get(handles.checkingService, 'String'));
    k13= str2double(get(handles.inflightService, 'String'));
    k14=str2double(get(handles.cleanLiness, 'String'));
    
    data = readmatrix('maskap.csv', 'Range', 'F2:S230');
    dataAlternatif = readtable('maskap.csv');
    cellAlternatid = dataAlternatif{:, 3};

    kolomAlternatif = string(cellAlternatid);
    namaAlternatif = kolomAlternatif.';

    sumAlternatif = 229;
    sumKriteria = 14;
    kriterias = cell(1, 14);
    
    for i= 1 : sumKriteria
    kriterias{i} = normalisasi(data(:, i));
    end
    
    eigenVektorAllKriteria = cell2mat(kriterias);

    wKriteria = [k1; k2; k3; k4; k5; k6; k7; k8; k9; k10; k11; k12; k13; k14;];
    eigenKriteria = normalisasi(wKriteria);

    hasilAkhir = eigenVektorAllKriteria * eigenKriteria;
    [skorTertinggi, index] = max(hasilAkhir);
    pemenang = num2str(skorTertinggi);
    nama = namaAlternatif(index);
    set(handles.namaMaskapai, 'String', nama);
    set(handles.pointField, 'String', pemenang);
  
    function hasilNormalisasi = normalisasi(m)
    sM = sum (m);
    hasilNormalisasi = m./sM;
    
    
    
    
