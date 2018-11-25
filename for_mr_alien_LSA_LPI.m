
function varargout = for_mr_alien_LSA_LPI(varargin)
% for_mr_alien_LSA_LPI MATLAB code for for_mr_alien_LSA_LPI.fig
%      for_mr_alien_LSA_LPI, by itself, creates a new for_mr_alien_LSA_LPI or raises the existing
%      singleton*.
%
%      H = for_mr_alien_LSA_LPI returns the handle to a new for_mr_alien_LSA_LPI or the handle to
%      the existing singleton*.
%
%      for_mr_alien_LSA_LPI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in for_mr_alien_LSA_LPI.M with the given input arguments.
%
%      for_mr_alien_LSA_LPI('Property','Value',...) creates a new for_mr_alien_LSA_LPI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before for_mr_alien_LSA_LPI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to for_mr_alien_LSA_LPI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help for_mr_alien_LSA_LPI

% Last Modified by GUIDE v2.5 31-Oct-2016 10:42:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @for_mr_alien_LSA_LPI_OpeningFcn, ...
                   'gui_OutputFcn',  @for_mr_alien_LSA_LPI_OutputFcn, ...
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


% --- Executes just before for_mr_alien_LSA_LPI is made visible.
function for_mr_alien_LSA_LPI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to for_mr_alien_LSA_LPI (see VARARGIN)

% Choose default command line output for for_mr_alien_LSA_LPI
handles.output = hObject;

% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = imread('backplanet.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');

aa=imread('tue.jpg');
axes(handles.axes5)
imshow(aa)

% Update handles structure
guidata(hObject, handles);

initialize_gui(hObject, handles, false);
% UIWAIT makes for_mr_alien_LSA_LPI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = for_mr_alien_LSA_LPI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'visible','on')
set(handles.uipanel2,'visible','off')
set(handles.uipanel3,'visible','off')
set(handles.uipanel4,'visible','off')
set(handles.uipanel5,'visible','off')
set(handles.uipanel6,'visible','off')
set(handles.uipanel7,'visible','off')
set(handles.uipanel8,'visible','off')
set(handles.uipanel9,'visible','off')
set(handles.uipanel10,'visible','off')
set(handles.uipanel14,'visible','off')

aaa=imread('intro1.jpg');
axes(handles.axes6)
imshow(aaa);

aaab=imread('intro.jpg');
axes(handles.axes20)
imshow(aaab);

c_startgame = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c_startgame = c_startgame;
guidata(hObject,handles)


% --- Executes on button press in q1.
function q1_Callback(hObject, eventdata, handles)
% hObject    handle to q1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'visible','off')
set(handles.uipanel2,'visible','on')
set(handles.uipanel3,'visible','off')
set(handles.uipanel4,'visible','off')
set(handles.uipanel5,'visible','off')
set(handles.uipanel6,'visible','off')
set(handles.uipanel7,'visible','off')
set(handles.uipanel8,'visible','off')
set(handles.uipanel9,'visible','off')
set(handles.uipanel10,'visible','off')
set(handles.uipanel14,'visible','off')


q1=imread('q1.jpg');
axes(handles.axes7)
imshow(q1);
c1_start = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c1_start = c1_start;
guidata(hObject,handles)



% --- Executes during object creation, after setting all properties.
function T1_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T1_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T1_old_Callback(hObject, eventdata, handles)
% hObject    handle to T1_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T1_old=str2double(get(hObject,'String'));
if isnan(T1_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

h=msgbox('What a bad choice. The structure of the drink you chose before was very bad for the alien health condition. You must serve other drink to the alien. I am sure it will love it!','Advice 1');
set(h, 'position', [350 200 430 90]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% h=msgbox('Click the "Task 1" file as displayed in the touch screen provided','Instruction 1');
% set(h, 'position', [285 200 430 70]);
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 12 ); 


% Save the new T1_old value
handles.metricdata.T1_old = T1_old;
c1_end = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c1_end = c1_end;
guidata(hObject,handles)

global ans1_old
if (eq(handles.metricdata.T1_old,1))
    ans1_old=1;
elseif (eq(handles.metricdata.T1_old,2))
    ans1_old=2;
elseif (eq(handles.metricdata.T1_old,3))
    ans1_old=3;
else
    ans1_old=0;
end

% Hints: get(hObject,'String') returns contents of T1_old as text
%        str2double(get(hObject,'String')) returns contents of T1_old as a double

% --- Executes during object creation, after setting all properties.
function T1_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T1_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function T1_new_Callback(hObject, eventdata, handles)
% hObject    handle to T1_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T1_new=str2double(get(hObject,'String'));
if isnan(T1_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

h=msgbox('Thank you for the answer. Now, please click the NEXT button','Proceed to Task 2');
set(h, 'position', [350 200 350 70]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% Save the new T1_new value
handles.metricdata.T1_new = T1_new;
guidata(hObject,handles)

global ans1_new

if (eq(handles.metricdata.T1_new,1))
    ans1_new=1;
elseif (eq(handles.metricdata.T1_new,2))
    ans1_new=2;
elseif (eq(handles.metricdata.T1_new,3))
    ans1_new=3;
else
    ans1_new=0;
end


global ans1_old
global score1

if (ne(ans1_old,ans1_new))
    score1=1;
else
    score1=0;
end

% Hints: get(hObject,'String') returns contents of T1_new as text
%        str2double(get(hObject,'String')) returns contents of T1_new as a double


% --- Executes on button press in q2.
function q2_Callback(hObject, eventdata, handles)
% hObject    handle to q2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if (eq(handles.metricdata.T1_old,0) || eq(handles.metricdata.T1_new,0))
    h=msgbox('Please answer the questions given before proceeding to the NEXT task');
    set(h, 'position', [350 200 420 60]);
    ah = get( h, 'CurrentAxes' );
    ch = get( ah, 'Children' );
    set( ch, 'FontSize', 12 ); 
    
else 
    set(handles.uipanel1,'visible','off')
    set(handles.uipanel2,'visible','off')
    set(handles.uipanel3,'visible','on')
    set(handles.uipanel4,'visible','off')
    set(handles.uipanel5,'visible','off')
    set(handles.uipanel6,'visible','off')
    set(handles.uipanel7,'visible','off')
    set(handles.uipanel8,'visible','off')
    set(handles.uipanel9,'visible','off')
    set(handles.uipanel10,'visible','off')
    set(handles.uipanel14,'visible','off')


    q2=imread('q2.jpg');
    axes(handles.axes8)
    imshow(q2);
    c2_start = datetime('now','Format','HH:mm:ss.SSS');
    handles.metricdata.c2_start = c2_start;
    guidata(hObject,handles)

end;

% --- Executes during object creation, after setting all properties.
function T2_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T2_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function T2_old_Callback(hObject, eventdata, handles)
% hObject    handle to T2_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T2_old=str2double(get(hObject,'String'));
if isnan(T2_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('What a childish selection! The alien cannot even finish up the whole drinks if you choose a big container since in the end, that delicious drink will just be thrown away.  It is a waste. But, if you choose a small container, the alien need to pay some amount of money to get other drinks. Such a stupid action. Just choose another container that contained a right amount of drinks which fit the alien’s tummy appropriately. Do not be too greedy, but at the same time, do not be too absurd.','Advice 2');
set(h, 'position', [350 200 430 150]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% h=msgbox('Click the "Task 2" file as displayed in the touch screen provided','Instruction 2');
% set(h, 'position', [285 200 430 100]);
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 12 ); 

% Save the new T2_old value
handles.metricdata.T2_old = T2_old;
c2_end = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c2_end = c2_end;
guidata(hObject,handles)

global ans2_old
if (eq(handles.metricdata.T2_old,1))
    ans2_old=1;
elseif (eq(handles.metricdata.T2_old,2))
    ans2_old=2;
elseif (eq(handles.metricdata.T2_old,3))
    ans2_old=3;
elseif (eq(handles.metricdata.T2_old,4))
    ans2_old=4;
elseif (eq(handles.metricdata.T2_old,5))
    ans2_old=5;  
elseif (eq(handles.metricdata.T2_old,6))
    ans2_old=6;
elseif (eq(handles.metricdata.T2_old,7))
    ans2_old=7;
elseif (eq(handles.metricdata.T2_old,8))
    ans2_old=8;
elseif (eq(handles.metricdata.T2_old,9))
    ans2_old=9;  
elseif (eq(handles.metricdata.T2_old,10))
    ans2_old=10;
else
    ans2_old=0;
end

% Hints: get(hObject,'String') returns contents of T2_old as text
%        str2double(get(hObject,'String')) returns contents of T2_old as a double

% --- Executes during object creation, after setting all properties.
function T2_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T2_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function T2_new_Callback(hObject, eventdata, handles)
% hObject    handle to T2_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T2_new=str2double(get(hObject,'String'));
if isnan(T2_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('Thank you for the answer. Now, please click the NEXT button','Proceed to Task 3');
set(h, 'position', [350 200 350 70]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 


% Save the new T2_new value
handles.metricdata.T2_new = T2_new;
guidata(hObject,handles)

global ans2_new

if (eq(handles.metricdata.T2_new,1))
    ans2_new=1;
elseif (eq(handles.metricdata.T2_new,2))
    ans2_new=2;
elseif (eq(handles.metricdata.T2_new,3))
    ans2_new=3;
elseif (eq(handles.metricdata.T2_new,4))
    ans2_new=4;
elseif (eq(handles.metricdata.T2_new,5))
    ans2_new=5;
elseif (eq(handles.metricdata.T2_new,6))
    ans2_new=6;
elseif (eq(handles.metricdata.T2_new,7))
    ans2_new=7;
elseif (eq(handles.metricdata.T2_new,8))
    ans2_new=8;
elseif (eq(handles.metricdata.T2_new,9))
    ans2_new=9;
elseif (eq(handles.metricdata.T2_new,10))
    ans2_new=10;
else
    ans2_new=0;
end


global ans2_old
global score2

if (ne(ans2_old,ans2_new))
    score2=1;
else
    score2=0;
end
% Hints: get(hObject,'String') returns contents of T2_new as text
%        str2double(get(hObject,'String')) returns contents of T2_new as a double

% --- Executes on button press in q3.
function q3_Callback(hObject, eventdata, handles)
% hObject    handle to q3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if (eq(handles.metricdata.T2_old,0) || eq(handles.metricdata.T2_new,0))
        h=msgbox('Please answer the questions given before proceeding to the NEXT task');
        set(h, 'position', [350 200 420 60]);
        ah = get( h, 'CurrentAxes' );
        ch = get( ah, 'Children' );
        set( ch, 'FontSize', 12 ); 

else 
    set(handles.uipanel1,'visible','off')
    set(handles.uipanel2,'visible','off')
    set(handles.uipanel3,'visible','off')
    set(handles.uipanel4,'visible','on')
    set(handles.uipanel5,'visible','off')
    set(handles.uipanel6,'visible','off')
    set(handles.uipanel7,'visible','off')
    set(handles.uipanel8,'visible','off')
    set(handles.uipanel9,'visible','off')
    set(handles.uipanel10,'visible','off')
    set(handles.uipanel14,'visible','off')

    q3=imread('q3.jpg');
    axes(handles.axes9)
    imshow(q3);
    c3_start = datetime('now','Format','HH:mm:ss.SSS');
    handles.metricdata.c3_start = c3_start;
    guidata(hObject,handles)
end

% --- Executes during object creation, after setting all properties.
function mango_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mango_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function mango_old_Callback(hObject, eventdata, handles)
% hObject    handle to mango_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mango_old=str2double(get(hObject,'String'));
if isnan(mango_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
% Save the new mango_old value
handles.metricdata.mango_old = mango_old;
guidata(hObject,handles)
% Hints: get(hObject,'String') returns contents of mango_old as text
%        str2double(get(hObject,'String')) returns contents of mango_old as a double


% --- Executes during object creation, after setting all properties.
function strawberry_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to strawberry_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function strawberry_old_Callback(hObject, eventdata, handles)
% hObject    handle to strawberry_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
strawberry_old=str2double(get(hObject,'String'));
if isnan(strawberry_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
% Save the new mango_old value
handles.metricdata.strawberry_old = strawberry_old;
guidata(hObject,handles)
% Hints: get(hObject,'String') returns contents of strawberry_old as text
%        str2double(get(hObject,'String')) returns contents of strawberry_old as a double


% --- Executes during object creation, after setting all properties.
function lemon_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lemon_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function lemon_old_Callback(hObject, eventdata, handles)
% hObject    handle to lemon_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lemon_old=str2double(get(hObject,'String'));
if isnan(lemon_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
% Save the new mango_old value
handles.metricdata.lemon_old = lemon_old;
guidata(hObject,handles)
% Hints: get(hObject,'String') returns contents of lemon_old as text
%        str2double(get(hObject,'String')) returns contents of lemon_old as a double


% --- Executes during object creation, after setting all properties.
function pineapple_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pineapple_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pineapple_old_Callback(hObject, eventdata, handles)
% hObject    handle to pineapple_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pineapple_old=str2double(get(hObject,'String'));
if isnan(pineapple_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
% Save the new mango_old value
handles.metricdata.pineapple_old = pineapple_old;
guidata(hObject,handles)
% Hints: get(hObject,'String') returns con
% Hints: get(hObject,'String') returns contents of pineapple_old as text
%        str2double(get(hObject,'String')) returns contents of pineapple_old as a double


% --- Executes during object creation, after setting all properties.
function mango_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mango_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function mango_new_Callback(hObject, eventdata, handles)
% hObject    handle to mango_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mango_new=str2double(get(hObject,'String'));
if isnan(mango_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
% Save the new mango_new value
handles.metricdata.mango_new = mango_new;
guidata(hObject,handles)
% Hints: get(hObject,'String') returns contents of mango_new as text
%        str2double(get(hObject,'String')) returns contents of mango_new as a double

% --- Executes during object creation, after setting all properties.
function strawberry_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to strawberry_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function strawberry_new_Callback(hObject, eventdata, handles)
% hObject    handle to strawberry_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
strawberry_new=str2double(get(hObject,'String'));
if isnan(strawberry_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
% Save the new strawberry_new value
handles.metricdata.strawberry_new = strawberry_new;
guidata(hObject,handles)
% Hints: get(hObject,'String') returns contents of strawberry_new as text
%        str2double(get(hObject,'String')) returns contents of strawberry_new as a double



% --- Executes during object creation, after setting all properties.
function lemon_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lemon_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function lemon_new_Callback(hObject, eventdata, handles)
% hObject    handle to lemon_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lemon_new=str2double(get(hObject,'String'));
if isnan(lemon_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
% Save the new lemon_new value
handles.metricdata.lemon_new = lemon_new;
guidata(hObject,handles)
% Hints: get(hObject,'String') returns contents of lemon_new as text
%        str2double(get(hObject,'String')) returns contents of lemon_new as a double


% --- Executes during object creation, after setting all properties.
function pineapple_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pineapple_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function pineapple_new_Callback(hObject, eventdata, handles)
% hObject    handle to pineapple_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pineapple_new=str2double(get(hObject,'String'));
if isnan(pineapple_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
% Save the new pineapple_new value
handles.metricdata.pineapple_new = pineapple_new;
guidata(hObject,handles)
% Hints: get(hObject,'String') returns contents of pineapple_new as text
%        str2double(get(hObject,'String')) returns contents of pineapple_new as a double

% --- Executes on button press in sum_old.
function sum_old_Callback(hObject, eventdata, handles)
% hObject    handle to sum_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
total_old = handles.metricdata.pineapple_old + handles.metricdata.lemon_old + handles.metricdata.strawberry_old + handles.metricdata.mango_old;
set(handles.total_old,'String',total_old);
handles.metricdata.total_old = total_old;

h = msgbox('Listen to me carefully! Adding too much sweet fruits such as mango and strawberry is not good for the alien’s health. But much sour fruits like pineapple and lemon will be too sour for the drink. A combination of those fruits will make a delicious drink. Now, it is your task to adjust the amount of fruits to be mixed in the drink. Use your brain to think how many slices of the fruits are the best. Do it now!','Advice 3');
set(h, 'position', [350 200 420 150]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% h=msgbox('Click the "Task 3" file as displayed in the touch screen provided','Instruction 3');
% set(h, 'position', [285 200 420 150]);
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 12 ); 

c3_end = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c3_end = c3_end;
guidata(hObject,handles)

% --- Executes on button press in sum_new.
function sum_new_Callback(hObject, eventdata, handles)
% hObject    handle to sum_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
total_new = handles.metricdata.pineapple_new + handles.metricdata.lemon_new + handles.metricdata.strawberry_new + handles.metricdata.mango_new;
set(handles.total_new,'String',total_new);
handles.metricdata.total_new = total_new;

h=msgbox('Thank you for the answer. Now, please click the NEXT button','Proceed to Task 4');
set(h, 'position', [350 200 350 70]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

global score3
if (ne(handles.metricdata.total_new,handles.metricdata.total_old))
    score3=1;
else
    score3=0;
end
% score3 = 0;
% global score3
% if (eq(handles.metricdata.total_new,7))
%     score3=2;
% elseif (eq(handles.metricdata.total_new,6) || eq(handles.metricdata.total_new,8))
%     score3=1;
% else
%     score3=0;
% end


% --- Executes on button press in q4.
function q4_Callback(hObject, eventdata, handles)
% hObject    handle to q4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     
    set(handles.uipanel1,'visible','off')
    set(handles.uipanel2,'visible','off')
    set(handles.uipanel3,'visible','off')
    set(handles.uipanel4,'visible','off')
    set(handles.uipanel5,'visible','on')
    set(handles.uipanel6,'visible','off')
    set(handles.uipanel7,'visible','off')
    set(handles.uipanel8,'visible','off')
    set(handles.uipanel9,'visible','off')
    set(handles.uipanel10,'visible','off')
    set(handles.uipanel14,'visible','off')

    q4=imread('q4.jpg');
    axes(handles.axes10)
    imshow(q4);
    c4_start = datetime('now','Format','HH:mm:ss.SSS');
    handles.metricdata.c4_start = c4_start;
    guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function T4_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T4_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T4_old_Callback(hObject, eventdata, handles)
% hObject    handle to T4_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T4_old=str2double(get(hObject,'String'));
if isnan(T4_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('You did not have any experienced using blenders before? No need to waste time thinking about how long to blend the fruits. Even a small kid knows the appropriate timing for blending the whole fruit. If you blend it too much, it will get too watery, and nobody will like it. But if you blend for too little time, the fruit will not have a smooth structure, it will be too hard for them to drink through a straw. And again, the alien will hate it. Now just change the silly mistake by adjusting the blending time to an appropriate timing. Be realistic!','Advice 4');
set(h, 'position', [350 200 430 170]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% h=msgbox('Click the "Task 4" file as displayed in the touch screen provided','Instruction 4');
% set(h, 'position', [285 200 430 120]);
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 12 ); 


% Save the new T4_old value
handles.metricdata.T4_old = T4_old;
c4_end = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c4_end = c4_end;
guidata(hObject,handles)

global ans4_old
if (eq(handles.metricdata.T4_old,1))
    ans4_old=1;
elseif (eq(handles.metricdata.T4_old,2))
    ans4_old=2;
elseif (eq(handles.metricdata.T4_old,3))
    ans4_old=3;
elseif (eq(handles.metricdata.T4_old,4))
    ans4_old=4;
elseif (eq(handles.metricdata.T4_old,5))
    ans4_old=5;  
elseif (eq(handles.metricdata.T4_old,6))
    ans4_old=6;
elseif (eq(handles.metricdata.T4_old,7))
    ans4_old=7;
elseif (eq(handles.metricdata.T4_old,8))
    ans4_old=8;
elseif (eq(handles.metricdata.T4_old,9))
    ans4_old=9;  
elseif (eq(handles.metricdata.T4_old,10))
    ans4_old=10;
else
    ans4_old=0;
end
% Hints: get(hObject,'String') returns contents of T4_old as text
%        str2double(get(hObject,'String')) returns contents of T4_old as a double


% --- Executes during object creation, after setting all properties.
function T4_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T4_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T4_new_Callback(hObject, eventdata, handles)
% hObject    handle to T4_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T4_new=str2double(get(hObject,'String'));
if isnan(T4_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('Thank you for the answer. Now, please click the NEXT button','Proceed to Task 5');
set(h, 'position', [350 200 350 70]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 


% Save the new T4_new value
handles.metricdata.T4_new = T4_new;
guidata(hObject,handles)


global ans4_new

if (eq(handles.metricdata.T4_new,1))
    ans4_new=1;
elseif (eq(handles.metricdata.T4_new,2))
    ans4_new=2;
elseif (eq(handles.metricdata.T4_new,3))
    ans4_new=3;
elseif (eq(handles.metricdata.T4_new,4))
    ans4_new=4;
elseif (eq(handles.metricdata.T4_new,5))
    ans4_new=5;
elseif (eq(handles.metricdata.T4_new,6))
    ans4_new=6;
elseif (eq(handles.metricdata.T4_new,7))
    ans4_new=7;
elseif (eq(handles.metricdata.T4_new,8))
    ans4_new=8;
elseif (eq(handles.metricdata.T4_new,9))
    ans4_new=9;
elseif (eq(handles.metricdata.T4_new,10))
    ans4_new=10;
else
    ans4_new=0;
end


global ans4_old
global score4

if (ne(ans4_old,ans4_new))
    score4=1;
else
    score4=0;
end
% Hints: get(hObject,'String') returns contents of T4_new as text
%        str2double(get(hObject,'String')) returns contents of T4_new as a double



% --- Executes on button press in q5.
function q5_Callback(hObject, eventdata, handles)
% hObject    handle to q5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (eq(handles.metricdata.T4_old,0) || eq(handles.metricdata.T4_new,0))
        h=msgbox('Please answer the questions given before proceeding to the NEXT task');
        set(h, 'position', [350 200 420 60]);
        ah = get( h, 'CurrentAxes' );
        ch = get( ah, 'Children' );
        set( ch, 'FontSize', 12 );   
        
else 
    set(handles.uipanel1,'visible','off')
    set(handles.uipanel2,'visible','off')
    set(handles.uipanel3,'visible','off')
    set(handles.uipanel4,'visible','off')
    set(handles.uipanel5,'visible','off')
    set(handles.uipanel6,'visible','on')
    set(handles.uipanel7,'visible','off')
    set(handles.uipanel8,'visible','off')
    set(handles.uipanel9,'visible','off')
    set(handles.uipanel10,'visible','off')
    set(handles.uipanel14,'visible','off')

    q5=imread('q5.jpg');
    axes(handles.axes11)
    imshow(q5);
    c5_start = datetime('now','Format','HH:mm:ss.SSS');
    handles.metricdata.c5_start = c5_start;
    guidata(hObject,handles)
end


% --- Executes during object creation, after setting all properties.
function T5_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T5_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T5_old_Callback(hObject, eventdata, handles)
% hObject    handle to T5_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T5_old=str2double(get(hObject,'String'));
if isnan(T5_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('Are you sure that’s the best option you can offer to the alien? Huh! As I told you before, and please bear in your mind. Tasting some sweetness in the topping is magnificent in terms of taste, but remember, too much sweetness is terrible for the health. Although you still need those sugar for the energy, just not too much. Please! So now it is the time to choose the fitting topping. Just make a better choice by re-selecting another topping. Do it!','Advice 5');
set(h, 'position', [350 200 430 150]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% h=msgbox('Click the "Task 5" file as displayed in the touch screen provided','Instruction 5');
% set(h, 'position', [285 200 430 100]);
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 12 ); 

% Save the new T5_old value
handles.metricdata.T5_old = T5_old;
c5_end = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c5_end = c5_end;
guidata(hObject,handles)

global ans5_old
if (eq(handles.metricdata.T5_old,1))
    ans5_old=1;
elseif (eq(handles.metricdata.T5_old,2))
    ans5_old=2;
elseif (eq(handles.metricdata.T5_old,3))
    ans5_old=3;
elseif (eq(handles.metricdata.T5_old,4))
    ans5_old=4;
elseif (eq(handles.metricdata.T5_old,5))
    ans5_old=5;  
elseif (eq(handles.metricdata.T5_old,6))
    ans5_old=6;
elseif (eq(handles.metricdata.T5_old,7))
    ans5_old=7;
elseif (eq(handles.metricdata.T5_old,8))
    ans5_old=8;
elseif (eq(handles.metricdata.T5_old,9))
    ans5_old=9;  
elseif (eq(handles.metricdata.T5_old,10))
    ans5_old=10;
else
    ans5_old=0;
end
% Hints: get(hObject,'String') returns contents of T5_old as text
%        str2double(get(hObject,'String')) returns contents of T5_old as a double

% --- Executes during object creation, after setting all properties.
function T5_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T5_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function T5_new_Callback(hObject, eventdata, handles)
% hObject    handle to T5_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T5_new=str2double(get(hObject,'String'));
if isnan(T5_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('Thank you for the answer. Now, please click the NEXT button','Proceed to Task 6');
set(h, 'position', [350 200 350 70]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% Save the new T5_new value
handles.metricdata.T5_new = T5_new;
guidata(hObject,handles)


global ans5_new

if (eq(handles.metricdata.T5_new,1))
    ans5_new=1;
elseif (eq(handles.metricdata.T5_new,2))
    ans5_new=2;
elseif (eq(handles.metricdata.T5_new,3))
    ans5_new=3;
elseif (eq(handles.metricdata.T5_new,4))
    ans5_new=4;
elseif (eq(handles.metricdata.T5_new,5))
    ans5_new=5;
elseif (eq(handles.metricdata.T5_new,6))
    ans5_new=6;
elseif (eq(handles.metricdata.T5_new,7))
    ans5_new=7;
elseif (eq(handles.metricdata.T5_new,8))
    ans5_new=8;
elseif (eq(handles.metricdata.T5_new,9))
    ans5_new=9;
elseif (eq(handles.metricdata.T5_new,10))
    ans5_new=10;
else
    ans5_new=0;
end


global ans5_old
global score5

if (ne(ans5_old,ans5_new))
    score5=1;
else
    score5=0;
end
% Hints: get(hObject,'String') returns contents of T5_new as text
%        str2double(get(hObject,'String')) returns contents of T5_new as a double


% --- Executes on button press in q6.
function q6_Callback(hObject, eventdata, handles)
% hObject    handle to q6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if (eq(handles.metricdata.T5_old,0) || eq(handles.metricdata.T5_new,0))
        h=msgbox('Please answer the questions given before proceeding to the NEXT task');
        set(h, 'position', [350 200 420 60]);
        ah = get( h, 'CurrentAxes' );
        ch = get( ah, 'Children' );
        set( ch, 'FontSize', 12 );     

else 
    set(handles.uipanel1,'visible','off')
    set(handles.uipanel2,'visible','off')
    set(handles.uipanel3,'visible','off')
    set(handles.uipanel4,'visible','off')
    set(handles.uipanel5,'visible','off')
    set(handles.uipanel6,'visible','off')
    set(handles.uipanel7,'visible','on')
    set(handles.uipanel8,'visible','off')
    set(handles.uipanel9,'visible','off')
    set(handles.uipanel10,'visible','off')
    set(handles.uipanel14,'visible','off')

    q6=imread('q6.jpg');
    axes(handles.axes12)
    imshow(q6);
    c6_start = datetime('now','Format','HH:mm:ss.SSS');
    handles.metricdata.c6_start = c6_start;
    guidata(hObject,handles)
end 
    
% --- Executes during object creation, after setting all properties.
function T6_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T6_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T6_old_Callback(hObject, eventdata, handles)
% hObject    handle to T6_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T6_old=str2double(get(hObject,'String'));
if isnan(T6_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('You call that a good design? Is that the highest level of creativity you can show to us? What a shame! You know what I mean, right? Now just choose another pattern, please do not embarrass yourself again in the next task dude. Please!','Advice 6');
set(h, 'position', [350 200 430 110]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% h=msgbox('Click the "Task 6" file as displayed in the touch screen provided','Instruction 6');
% set(h, 'position', [285 200 430 90]);
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 12 ); 

% Save the new T6_old value
handles.metricdata.T6_old = T6_old;
c6_end = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c6_end = c6_end;
guidata(hObject,handles)

global ans6_old
if (eq(handles.metricdata.T6_old,1))
    ans6_old=1;
elseif (eq(handles.metricdata.T6_old,2))
    ans6_old=2;
elseif (eq(handles.metricdata.T6_old,3))
    ans6_old=3;
elseif (eq(handles.metricdata.T6_old,4))
    ans6_old=4;
elseif (eq(handles.metricdata.T6_old,5))
    ans6_old=5;  
elseif (eq(handles.metricdata.T6_old,6))
    ans6_old=6;
elseif (eq(handles.metricdata.T6_old,7))
    ans6_old=7;
elseif (eq(handles.metricdata.T6_old,8))
    ans6_old=8;
elseif (eq(handles.metricdata.T6_old,9))
    ans6_old=9;  
elseif (eq(handles.metricdata.T6_old,10))
    ans6_old=10;
else
    ans6_old=0;
end
% Hints: get(hObject,'String') returns contents of T6_old as text
%        str2double(get(hObject,'String')) returns contents of T6_old as a double

% --- Executes during object creation, after setting all properties.
function T6_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T6_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T6_new_Callback(hObject, eventdata, handles)
% hObject    handle to T6_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T6_new=str2double(get(hObject,'String'));
if isnan(T6_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('Thank you for the answer. Now, please click the NEXT button','Proceed to Task 7');
set(h, 'position', [350 200 350 70]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% Save the new T6_new value
handles.metricdata.T6_new = T6_new;
guidata(hObject,handles)


global ans6_new

if (eq(handles.metricdata.T6_new,1))
    ans6_new=1;
elseif (eq(handles.metricdata.T6_new,2))
    ans6_new=2;
elseif (eq(handles.metricdata.T6_new,3))
    ans6_new=3;
elseif (eq(handles.metricdata.T6_new,4))
    ans6_new=4;
elseif (eq(handles.metricdata.T6_new,5))
    ans6_new=5;
elseif (eq(handles.metricdata.T6_new,6))
    ans6_new=6;
elseif (eq(handles.metricdata.T6_new,7))
    ans6_new=7;
elseif (eq(handles.metricdata.T6_new,8))
    ans6_new=8;
elseif (eq(handles.metricdata.T6_new,9))
    ans6_new=9;
elseif (eq(handles.metricdata.T6_new,10))
    ans6_new=10;
else
    ans6_new=0;
end


global ans6_old
global score6

if (ne(ans6_old,ans6_new))
    score6=1;
else
    score6=0;
end
% Hints: get(hObject,'String') returns contents of T6_new as text
%        str2double(get(hObject,'String')) returns contents of T6_new as a double

% --- Executes on button press in q7.
function q7_Callback(hObject, eventdata, handles)
% hObject    handle to q7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (eq(handles.metricdata.T6_old,0) || eq(handles.metricdata.T6_new,0))
        h=msgbox('Please answer the questions given before proceeding to the NEXT task');
        set(h, 'position', [350 200 420 60]);
        ah = get( h, 'CurrentAxes' );
        ch = get( ah, 'Children' );
        set( ch, 'FontSize', 12 );   

else
    set(handles.uipanel1,'visible','off')
    set(handles.uipanel2,'visible','off')
    set(handles.uipanel3,'visible','off')
    set(handles.uipanel4,'visible','off')
    set(handles.uipanel5,'visible','off')
    set(handles.uipanel6,'visible','off')
    set(handles.uipanel7,'visible','off')
    set(handles.uipanel8,'visible','on')
    set(handles.uipanel9,'visible','off')
    set(handles.uipanel10,'visible','off')
    set(handles.uipanel14,'visible','off')

    q7=imread('q7.jpg');
    axes(handles.axes13)
    imshow(q7);
    c7_start = datetime('now','Format','HH:mm:ss.SSS');
    handles.metricdata.c7_start = c7_start;
    guidata(hObject,handles)
end 

% --- Executes during object creation, after setting all properties.
function T7_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T7_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T7_old_Callback(hObject, eventdata, handles)
% hObject    handle to T7_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T7_old=str2double(get(hObject,'String'));
if isnan(T7_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('Oh no! You should choose a funny shape for the straw. Being funny is not as bad as being silly. Without realising it, people are deeply affected by other people’s moods. Research call this phenomenon “emotional contagion” which a natural process that pre-wired our brain via “mirror-neurons” that allow us to sense and reflect other people’s emotions. So, make a better choice and make sure others who see the straw will enjoy it as well! It is ultimately your responsibility for other joyfulness.','Advice 7');
set(h, 'position', [350 200 430 150]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% h=msgbox('Click the "Task 7" file as displayed in the touch screen provided','Instruction 7');
% set(h, 'position', [285 200 430 75]);
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 12 ); 

% Save the new T7_old value
handles.metricdata.T7_old = T7_old;
c7_end = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c7_end = c7_end;
guidata(hObject,handles)

global ans7_old
if (eq(handles.metricdata.T7_old,1))
    ans7_old=1;
elseif (eq(handles.metricdata.T7_old,2))
    ans7_old=2;
elseif (eq(handles.metricdata.T7_old,3))
    ans7_old=3;
elseif (eq(handles.metricdata.T7_old,4))
    ans7_old=4;
elseif (eq(handles.metricdata.T7_old,5))
    ans7_old=5;  
elseif (eq(handles.metricdata.T7_old,6))
    ans7_old=6;
elseif (eq(handles.metricdata.T7_old,7))
    ans7_old=7;
elseif (eq(handles.metricdata.T7_old,8))
    ans7_old=8;
elseif (eq(handles.metricdata.T7_old,9))
    ans7_old=9;  
elseif (eq(handles.metricdata.T7_old,10))
    ans7_old=10;
else
    ans7_old=0;
end
% Hints: get(hObject,'String') returns contents of T7_old as text
%        str2double(get(hObject,'String')) returns contents of T7_old as a double


% --- Executes during object creation, after setting all properties.
function T7_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T7_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T7_new_Callback(hObject, eventdata, handles)
% hObject    handle to T7_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T7_new=str2double(get(hObject,'String'));
if isnan(T7_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('Thank you for the answer. Now, please click the NEXT button','Proceed to Task 8');
set(h, 'position', [350 200 350 70]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 


% Save the new T7_new value
handles.metricdata.T7_new = T7_new;
guidata(hObject,handles)


global ans7_new

if (eq(handles.metricdata.T7_new,1))
    ans7_new=1;
elseif (eq(handles.metricdata.T7_new,2))
    ans7_new=2;
elseif (eq(handles.metricdata.T7_new,3))
    ans7_new=3;
elseif (eq(handles.metricdata.T7_new,4))
    ans7_new=4;
elseif (eq(handles.metricdata.T7_new,5))
    ans7_new=5;
elseif (eq(handles.metricdata.T7_new,6))
    ans7_new=6;
elseif (eq(handles.metricdata.T7_new,7))
    ans7_new=7;
elseif (eq(handles.metricdata.T7_new,8))
    ans7_new=8;
elseif (eq(handles.metricdata.T7_new,9))
    ans7_new=9;
elseif (eq(handles.metricdata.T7_new,10))
    ans7_new=10;
else
    ans7_new=0;
end


global ans7_old
global score7

if (ne(ans7_old,ans7_new))
    score7=1;
else
    score7=0;
end
% Hints: get(hObject,'String') returns contents of T7_new as text
%        str2double(get(hObject,'String')) returns contents of T7_new as a double

% --- Executes on button press in q8.
function q8_Callback(hObject, eventdata, handles)
% hObject    handle to q8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (eq(handles.metricdata.T7_old,0) || eq(handles.metricdata.T7_new,0))
        h=msgbox('Please answer the questions given before proceeding to the NEXT task');
        set(h, 'position', [350 200 420 60]);
        ah = get( h, 'CurrentAxes' );
        ch = get( ah, 'Children' );
        set( ch, 'FontSize', 12 );  
        
else         
    set(handles.uipanel1,'visible','off')
    set(handles.uipanel2,'visible','off')
    set(handles.uipanel3,'visible','off')
    set(handles.uipanel4,'visible','off')
    set(handles.uipanel5,'visible','off')
    set(handles.uipanel6,'visible','off')
    set(handles.uipanel7,'visible','off')
    set(handles.uipanel8,'visible','off')
    set(handles.uipanel9,'visible','on')
    set(handles.uipanel10,'visible','off')
    set(handles.uipanel14,'visible','off')

    q8=imread('q8.jpg');
    axes(handles.axes14)
    imshow(q8);
    c8_start = datetime('now','Format','HH:mm:ss.SSS');
    handles.metricdata.c8_start = c8_start;
    guidata(hObject,handles)
end

% --- Executes during object creation, after setting all properties.
function T8_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T8_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T8_old_Callback(hObject, eventdata, handles)
% hObject    handle to T8_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T8_old=str2double(get(hObject,'String'));
if isnan(T8_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('You make me frustrated again and again. It is inevitable that at some point in our lives, emotions will prove so complex that words can’t really do them justice. Those stickers are used to help us to convey a sentiment without having to phrase it in a convoluted sentence. We already help you to choose the best stickers by sorting it up to only 10 options. Otherwise, I cannot imagine what sort of sticker you will choose to express the alien feeling. So now, do not make your life complicated. Just choose another sticker pattern to reflect the alien’s good feeling after getting the drink from you. ','Advice 8');
set(h, 'position', [350 200 430 180]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% h=msgbox('Click the "Task 8" file as displayed in the touch screen provided','Instruction 8');
% set(h, 'position', [285 200 430 70]);
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 12 ); 


% Save the new T8_old value
handles.metricdata.T8_old = T8_old;
c8_end = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c8_end = c8_end;
guidata(hObject,handles)

global ans8_old
if (eq(handles.metricdata.T8_old,1))
    ans8_old=1;
elseif (eq(handles.metricdata.T8_old,2))
    ans8_old=2;
elseif (eq(handles.metricdata.T8_old,3))
    ans8_old=3;
elseif (eq(handles.metricdata.T8_old,4))
    ans8_old=4;
elseif (eq(handles.metricdata.T8_old,5))
    ans8_old=5;  
elseif (eq(handles.metricdata.T8_old,6))
    ans8_old=6;
elseif (eq(handles.metricdata.T8_old,7))
    ans8_old=7;
elseif (eq(handles.metricdata.T8_old,8))
    ans8_old=8;
elseif (eq(handles.metricdata.T8_old,9))
    ans8_old=9;  
elseif (eq(handles.metricdata.T8_old,10))
    ans8_old=10;
else
    ans8_old=0;
end
% Hints: get(hObject,'String') returns contents of T8_old as text
%        str2double(get(hObject,'String')) returns contents of T8_old as a double


% --- Executes during object creation, after setting all properties.
function T8_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T8_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T8_new_Callback(hObject, eventdata, handles)
% hObject    handle to T8_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T8_new=str2double(get(hObject,'String'));
if isnan(T8_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('Thank you for the answer. Now, please click the NEXT button','Proceed to Task 9');
set(h, 'position', [350 200 350 70]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% Save the new T8_new value
handles.metricdata.T8_new = T8_new;
guidata(hObject,handles)


global ans8_new

if (eq(handles.metricdata.T8_new,1))
    ans8_new=1;
elseif (eq(handles.metricdata.T8_new,2))
    ans8_new=2;
elseif (eq(handles.metricdata.T8_new,3))
    ans8_new=3;
elseif (eq(handles.metricdata.T8_new,4))
    ans8_new=4;
elseif (eq(handles.metricdata.T8_new,5))
    ans8_new=5;
elseif (eq(handles.metricdata.T8_new,6))
    ans8_new=6;
elseif (eq(handles.metricdata.T8_new,7))
    ans8_new=7;
elseif (eq(handles.metricdata.T8_new,8))
    ans8_new=8;
elseif (eq(handles.metricdata.T8_new,9))
    ans8_new=9;
elseif (eq(handles.metricdata.T8_new,10))
    ans8_new=10;
else
    ans8_new=0;
end


global ans8_old
global score8

if (ne(ans8_old,ans8_new))
    score8=1;
else
    score8=0;
end
% Hints: get(hObject,'String') returns contents of T8_new as text
%        str2double(get(hObject,'String')) returns contents of T8_new as a double

% --- Executes on button press in q9.
function q9_Callback(hObject, eventdata, handles)
% hObject    handle to q9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (eq(handles.metricdata.T8_old,0) || eq(handles.metricdata.T8_new,0))
        h=msgbox('Please answer the questions given before proceeding to the NEXT task');
        set(h, 'position', [350 200 420 60]);
        ah = get( h, 'CurrentAxes' );
        ch = get( ah, 'Children' );
        set( ch, 'FontSize', 12 );  
        
else       
    set(handles.uipanel1,'visible','off')
    set(handles.uipanel2,'visible','off')
    set(handles.uipanel3,'visible','off')
    set(handles.uipanel4,'visible','off')
    set(handles.uipanel5,'visible','off')
    set(handles.uipanel6,'visible','off')
    set(handles.uipanel7,'visible','off')
    set(handles.uipanel8,'visible','off')
    set(handles.uipanel9,'visible','off')
    set(handles.uipanel10,'visible','on')
    set(handles.uipanel14,'visible','off')

    q9=imread('q9.jpg');
    axes(handles.axes15)
    imshow(q9);
    c9_start = datetime('now','Format','HH:mm:ss.SSS');
    handles.metricdata.c9_start = c9_start;
    guidata(hObject,handles)
end

% --- Executes during object creation, after setting all properties.
function T9_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T9_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T9_old_Callback(hObject, eventdata, handles)
% hObject    handle to T9_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T9_old=str2double(get(hObject,'String'));
if isnan(T9_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('Dude, being either too generous or too stingy is not okay. You cannot just think only about yourself and not caring about other people. People are making their living through this beverages business. It is good enough that they want to give the alien a gift. So, taking the expensive gift is not good. But bear in your mind, if you choose too cheap, you will humiliate them. Go back to your senses and select a different gift.','Advice 9');
set(h, 'position', [350 200 430 135]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% h=msgbox('Click the "Task 9" file as displayed in the touch screen provided','Instruction 9');
% set(h, 'position', [285 200 430 75]);
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 12 ); 

% Save the new T9_old value
handles.metricdata.T9_old = T9_old;
c9_end = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c9_end = c9_end;
guidata(hObject,handles)

global ans9_old
if (eq(handles.metricdata.T9_old,1))
    ans9_old=1;
elseif (eq(handles.metricdata.T9_old,2))
    ans9_old=2;
elseif (eq(handles.metricdata.T9_old,3))
    ans9_old=3;
elseif (eq(handles.metricdata.T9_old,4))
    ans9_old=4;
elseif (eq(handles.metricdata.T9_old,5))
    ans9_old=5;  
elseif (eq(handles.metricdata.T9_old,6))
    ans9_old=6;
elseif (eq(handles.metricdata.T9_old,7))
    ans9_old=7;
elseif (eq(handles.metricdata.T9_old,8))
    ans9_old=8;
elseif (eq(handles.metricdata.T9_old,9))
    ans9_old=9;  
elseif (eq(handles.metricdata.T9_old,10))
    ans9_old=10;
else
    ans9_old=0;
end
% Hints: get(hObject,'String') returns contents of T9_old as text
%        str2double(get(hObject,'String')) returns contents of T9_old as a double

% --- Executes during object creation, after setting all properties.
function T9_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T9_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T9_new_Callback(hObject, eventdata, handles)
% hObject    handle to T9_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T9_new=str2double(get(hObject,'String'));
if isnan(T9_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('Thank you for the answer. Now, please click the NEXT button','Proceed to Task 10');
set(h, 'position', [350 200 350 70]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% Save the new T9_new value
handles.metricdata.T9_new = T9_new;
guidata(hObject,handles)


global ans9_new

if (eq(handles.metricdata.T9_new,1))
    ans9_new=1;
elseif (eq(handles.metricdata.T9_new,2))
    ans9_new=2;
elseif (eq(handles.metricdata.T9_new,3))
    ans9_new=3;
elseif (eq(handles.metricdata.T9_new,4))
    ans9_new=4;
elseif (eq(handles.metricdata.T9_new,5))
    ans9_new=5;
elseif (eq(handles.metricdata.T9_new,6))
    ans9_new=6;
elseif (eq(handles.metricdata.T9_new,7))
    ans9_new=7;
elseif (eq(handles.metricdata.T9_new,8))
    ans9_new=8;
elseif (eq(handles.metricdata.T9_new,9))
    ans9_new=9;
elseif (eq(handles.metricdata.T9_new,10))
    ans9_new=10;
else
    ans9_new=0;
end


global ans9_old
global score9

if (ne(ans9_old,ans9_new))
    score9=1;
else
    score9=0;
end
% Hints: get(hObject,'String') returns contents of T9_new as text
%        str2double(get(hObject,'String')) returns contents of T9_new as a double

% --- Executes on button press in q10.
function q10_Callback(hObject, eventdata, handles)
% hObject    handle to q10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (eq(handles.metricdata.T9_old,0) || eq(handles.metricdata.T9_new,0))
        h=msgbox('Please answer the questions given before proceeding to the NEXT task');
        set(h, 'position', [350 200 420 60]);
        ah = get( h, 'CurrentAxes' );
        ch = get( ah, 'Children' );
        set( ch, 'FontSize', 12 );    
        
else       
    set(handles.uipanel1,'visible','off')
    set(handles.uipanel2,'visible','off')
    set(handles.uipanel3,'visible','off')
    set(handles.uipanel4,'visible','off')
    set(handles.uipanel5,'visible','off')
    set(handles.uipanel6,'visible','off')
    set(handles.uipanel7,'visible','off')
    set(handles.uipanel8,'visible','off')
    set(handles.uipanel9,'visible','off')
    set(handles.uipanel10,'visible','off')
    set(handles.uipanel14,'visible','on')

    q10=imread('q10.jpg');
    axes(handles.axes16)
    imshow(q10);
    c10_start = datetime('now','Format','HH:mm:ss.SSS');
    handles.metricdata.c10_start = c10_start;
    guidata(hObject,handles)
end

% --- Executes during object creation, after setting all properties.
function T10_old_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T10_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function T10_old_Callback(hObject, eventdata, handles)
% hObject    handle to T10_old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T10_old=str2double(get(hObject,'String'));
if isnan(T10_old)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
h=msgbox('I do not like to babble anymore. Just one question, do you know the alien is super duper rich? Keep that answer to yourself. I do not have any interest at all to know the answer. You need to increase the amount of contribution to those who are in need. You will never know if you may need help from others in the future as well!','Advice 10');
set(h, 'position', [350 200 430 120]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 

% h=msgbox('Click the "Task 10" file as displayed in the touch screen provided','Instruction 10');
% set(h, 'position', [285 200 430 90]);
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 12 ); 


% Save the new T10_old value
handles.metricdata.T10_old = T10_old;
c10_end = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c10_end = c10_end;
guidata(hObject,handles)
% Hints: get(hObject,'String') returns contents of T10_old as text
%        str2double(get(hObject,'String')) returns contents of T10_old as a double

% --- Executes during object creation, after setting all properties.
function T10_new_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T10_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function T10_new_Callback(hObject, eventdata, handles)
% hObject    handle to T10_new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T10_new=str2double(get(hObject,'String'));
if isnan(T10_new)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

h=msgbox({'Thank you for playing the game. Please press the "CLOSE" button so that this game window will be closed automatically and we can proceed the experiment by answering some questions.'},'Proceed to Questionnaire');
set(h, 'position', [350 200 430 90]);
ah = get( h, 'CurrentAxes' );
ch = get( ah, 'Children' );
set( ch, 'FontSize', 12 ); 


% Save the new T10_new value
handles.metricdata.T10_new = T10_new;
c_endgame = datetime('now','Format','HH:mm:ss.SSS');
handles.metricdata.c_endgame = c_endgame;
guidata(hObject,handles)

global score10
if (lt(handles.metricdata.T10_old,handles.metricdata.T10_new))
    score10=1;
else
    score10=0;
end

% Hints: get(hObject,'String') returns contents of T10_new as text
%        str2double(get(hObject,'String')) returns contents of T10_new as a double


% --- Executes on button press in reset1.
function reset1_Callback(hObject, eventdata, handles)
% hObject    handle to reset1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
initialize_gui(gcbf, handles, true);

function initialize_gui(fig_handle, handles, isreset)
% If the metricdata field is present and the reset1 flag is false, it means
% we are we are just re-initializing a GUI by calling it from the cmd line
% while it is up. So, bail out as we dont want to reset1 the data.
if isfield(handles, 'metricdata') && ~isreset
    return;
end

handles.metricdata.T1_old = 0;
handles.metricdata.T1_new = 0;
handles.metricdata.T2_old = 0;
handles.metricdata.T2_new = 0;
handles.metricdata.pineapple_old = 0;
handles.metricdata.mango_old = 0;
handles.metricdata.strawberry_old = 0;
handles.metricdata.lemon_old = 0;
handles.metricdata.pineapple_new = 0;
handles.metricdata.mango_new = 0;
handles.metricdata.strawberry_new = 0;
handles.metricdata.lemon_new = 0;
handles.metricdata.T4_old = 0;
handles.metricdata.T4_new = 0;
handles.metricdata.T5_old = 0;
handles.metricdata.T5_new = 0;
handles.metricdata.T6_old = 0;
handles.metricdata.T6_new = 0;
handles.metricdata.T7_old = 0;
handles.metricdata.T7_new = 0;
handles.metricdata.T8_old = 0;
handles.metricdata.T8_new = 0;
handles.metricdata.T9_old = 0;
handles.metricdata.T9_new = 0;
handles.metricdata.T10_old = 0;
handles.metricdata.T10_new = 0;
handles.metricdata.c_startgame = 0;
handles.metricdata.c1_start = 0;
handles.metricdata.c1_end = 0;
handles.metricdata.c2_start = 0;
handles.metricdata.c2_end = 0;
handles.metricdata.c3_start = 0;
handles.metricdata.c3_end = 0;
handles.metricdata.c4_start = 0;
handles.metricdata.c4_end = 0;
handles.metricdata.c5_start = 0;
handles.metricdata.c5_end = 0;
handles.metricdata.c6_start = 0;
handles.metricdata.c6_end = 0;
handles.metricdata.c7_start = 0;
handles.metricdata.c7_end = 0;
handles.metricdata.c8_start = 0;
handles.metricdata.c8_end = 0;
handles.metricdata.c9_start = 0;
handles.metricdata.c9_end = 0;
handles.metricdata.c10_start = 0;
handles.metricdata.c10_end = 0;
handles.metricdata.c_endgamegame = 0;

 
set(handles.T1_old, 'String', handles.metricdata.T1_old);
set(handles.T1_new, 'String', handles.metricdata.T1_new);
set(handles.T2_old, 'String', handles.metricdata.T2_old);
set(handles.T2_new, 'String', handles.metricdata.T2_new);
set(handles.pineapple_old, 'String', handles.metricdata.pineapple_old);
set(handles.mango_old, 'String', handles.metricdata.mango_old);
set(handles.strawberry_old, 'String', handles.metricdata.strawberry_old);
set(handles.lemon_old, 'String', handles.metricdata.lemon_old);
set(handles.pineapple_new, 'String', handles.metricdata.pineapple_new);
set(handles.mango_new, 'String', handles.metricdata.mango_new);
set(handles.strawberry_new, 'String', handles.metricdata.strawberry_new);
set(handles.lemon_new, 'String', handles.metricdata.lemon_new);
set(handles.total_old, 'String', 0);
set(handles.total_new, 'String', 0);
set(handles.T4_old, 'String', handles.metricdata.T4_old);
set(handles.T4_new, 'String', handles.metricdata.T4_new);
set(handles.T5_old, 'String', handles.metricdata.T5_old);
set(handles.T5_new, 'String', handles.metricdata.T5_new);
set(handles.T6_old, 'String', handles.metricdata.T6_old);
set(handles.T6_new, 'String', handles.metricdata.T6_new);
set(handles.T7_old, 'String', handles.metricdata.T7_old);
set(handles.T7_new, 'String', handles.metricdata.T7_new);
set(handles.T8_old, 'String', handles.metricdata.T8_old);
set(handles.T8_new, 'String', handles.metricdata.T8_new);
set(handles.T9_old, 'String', handles.metricdata.T9_old);
set(handles.T9_new, 'String', handles.metricdata.T9_new);
set(handles.T10_old, 'String', handles.metricdata.T10_old);
set(handles.T10_new, 'String', handles.metricdata.T10_new);

% Update handles structure
guidata(handles.figure1, handles);

%%%%%%%%%%%%%%%%%%%%%end of code%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --- Executes on button press in close.
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(handles.uipanel1,'visible','off')
set(handles.uipanel2,'visible','off')
set(handles.uipanel3,'visible','off')
set(handles.uipanel4,'visible','off')
set(handles.uipanel5,'visible','off')
set(handles.uipanel6,'visible','off')
set(handles.uipanel7,'visible','off')
set(handles.uipanel8,'visible','off')
set(handles.uipanel9,'visible','off')
set(handles.uipanel10,'visible','off')
set(handles.uipanel14,'visible','off')

% q11=imread('q11.jpg');
% axes(handles.axes19)
% imshow(q11);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%saving the answers%%%%%%%%%%%%%%%%%%%%%%%%%%%

InputQ1_old=handles.metricdata.T1_old;
InputQ1_new=handles.metricdata.T1_new;
InputQ2_old=handles.metricdata.T2_old;
InputQ2_new=handles.metricdata.T2_new;
InputQ3p_old=handles.metricdata.pineapple_old;
InputQ3m_old=handles.metricdata.mango_old;
InputQ3s_old=handles.metricdata.strawberry_old;
InputQ3l_old=handles.metricdata.lemon_old;
InputQ3p_new=handles.metricdata.pineapple_new;
InputQ3m_new=handles.metricdata.mango_new;
InputQ3s_new=handles.metricdata.strawberry_new;
InputQ3l_new=handles.metricdata.lemon_new;
InputQ4_old=handles.metricdata.T4_old;
InputQ4_new=handles.metricdata.T4_new;
InputQ5_old=handles.metricdata.T5_old;
InputQ5_new=handles.metricdata.T5_new;
InputQ6_old=handles.metricdata.T6_old;
InputQ6_new=handles.metricdata.T6_new;
InputQ7_old=handles.metricdata.T7_old;
InputQ7_new=handles.metricdata.T7_new;
InputQ8_old=handles.metricdata.T8_old;
InputQ8_new=handles.metricdata.T8_new;
InputQ9_old=handles.metricdata.T9_old;
InputQ9_new=handles.metricdata.T9_new;
InputQ10_old=handles.metricdata.T10_old;
InputQ10_new=handles.metricdata.T10_new;
InputC_startgame=handles.metricdata.c_startgame;
InputC1_beg=handles.metricdata.c1_start;
InputC1_fin=handles.metricdata.c1_end;
InputC2_beg=handles.metricdata.c2_start;
InputC2_fin=handles.metricdata.c2_end;
InputC3_beg=handles.metricdata.c3_start;
InputC3_fin=handles.metricdata.c3_end;
InputC4_beg=handles.metricdata.c4_start;
InputC4_fin=handles.metricdata.c4_end;
InputC5_beg=handles.metricdata.c5_start;
InputC5_fin=handles.metricdata.c5_end;
InputC6_beg=handles.metricdata.c6_start;
InputC6_fin=handles.metricdata.c6_end;
InputC7_beg=handles.metricdata.c7_start;
InputC7_fin=handles.metricdata.c7_end;
InputC8_beg=handles.metricdata.c8_start;
InputC8_fin=handles.metricdata.c8_end;
InputC9_beg=handles.metricdata.c9_start;
InputC9_fin=handles.metricdata.c9_end;
InputC10_beg=handles.metricdata.c10_start;
InputC10_fin=handles.metricdata.c10_end;
InputC_endgame=handles.metricdata.c_endgame;

global score1
global score2
global score3
global score4
global score5
global score6
global score7
global score8
global score9
global score10
global tot_score

tot_score= score1+ score2+ score3+ score4+ score5+ score6+ score7+ score8+ score9+ score10; 

save('LPI','InputQ1_old', 'InputQ1_new', 'InputQ2_old', 'InputQ2_new', 'InputQ3p_old','InputQ3m_old',... 
'InputQ3s_old','InputQ3l_old', 'InputQ3p_new', 'InputQ3m_new','InputQ3s_new',...
'InputQ3l_new','InputQ4_old', 'InputQ4_new','InputQ5_old', 'InputQ5_new','InputQ6_old', 'InputQ6_new',...
'InputQ7_old', 'InputQ7_new','InputQ8_old', 'InputQ8_new','InputQ9_old', 'InputQ9_new', 'InputQ10_old', 'InputQ10_new',...
'InputC_startgame','InputC1_beg', 'InputC1_fin','InputC2_beg', 'InputC2_fin','InputC3_beg', 'InputC3_fin',...
'InputC4_beg', 'InputC4_fin','InputC5_beg', 'InputC5_fin','InputC6_beg', 'InputC6_fin','InputC7_beg', 'InputC7_fin',...
'InputC8_beg', 'InputC8_fin','InputC9_beg', 'InputC9_fin','InputC10_beg', 'InputC10_fin','InputC_endgame', 'tot_score',...
'score1', 'score2','score3', 'score4','score5', 'score6','score7', 'score8','score9', 'score10')


close all;
