function varargout = UI(varargin)
% UI MATLAB code for UI.fig
%      UI, by itself, creates a new UI or raises the existing
%      singleton*.
%
%      H = UI returns the handle to a new UI or the handle to
%      the existing singleton*.
%
%      UI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI.M with the given input arguments.
%
%      UI('Property','Value',...) creates a new UI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UI

% Last Modified by GUIDE v2.5 31-Oct-2023 00:25:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UI_OpeningFcn, ...
                   'gui_OutputFcn',  @UI_OutputFcn, ...
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


% --- Executes just before UI is made visible.
function UI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UI (see VARARGIN)

% Choose default command line output for UI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function t1_Callback(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t1 as text
%        str2double(get(hObject,'String')) returns contents of t1 as a double


% --- Executes during object creation, after setting all properties.
function t1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t2_Callback(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t2 as text
%        str2double(get(hObject,'String')) returns contents of t2 as a double


% --- Executes during object creation, after setting all properties.
function t2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t3_Callback(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t3 as text
%        str2double(get(hObject,'String')) returns contents of t3 as a double


% --- Executes during object creation, after setting all properties.
function t3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t4_Callback(hObject, eventdata, handles)
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t4 as text
%        str2double(get(hObject,'String')) returns contents of t4 as a double


% --- Executes during object creation, after setting all properties.
function t4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t5_Callback(hObject, eventdata, handles)
% hObject    handle to t5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t5 as text
%        str2double(get(hObject,'String')) returns contents of t5 as a double


% --- Executes during object creation, after setting all properties.
function t5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t6_Callback(hObject, eventdata, handles)
% hObject    handle to t6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t6 as text
%        str2double(get(hObject,'String')) returns contents of t6 as a double


% --- Executes during object creation, after setting all properties.
function t6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_x_Callback(hObject, eventdata, handles)
% hObject    handle to Pos_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_x as text
%        str2double(get(hObject,'String')) returns contents of Pos_x as a double


% --- Executes during object creation, after setting all properties.
function Pos_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pos_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_y_Callback(hObject, eventdata, handles)
% hObject    handle to Pos_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_y as text
%        str2double(get(hObject,'String')) returns contents of Pos_y as a double


% --- Executes during object creation, after setting all properties.
function Pos_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pos_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pos_z_Callback(hObject, eventdata, handles)
% hObject    handle to Pos_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pos_z as text
%        str2double(get(hObject,'String')) returns contents of Pos_z as a double


% --- Executes during object creation, after setting all properties.
function Pos_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pos_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in forward_btn.
function forward_btn_Callback(hObject, eventdata, handles)
    set(handles.Pos_x,'string','');
    set(handles.Pos_y,'string','');
    set(handles.Pos_z,'string','');

    % extract destination joints
    Th_1 = str2double(get(handles.t1,'String'))*pi/180;
    Th_2 = str2double(get(handles.t2,'String'))*pi/180; 
    Th_3 = str2double(get(handles.t3,'String'))*pi/180;
    Th_4 = str2double(get(handles.t4,'String'))*pi/180;
    Th_5 = str2double(get(handles.t5,'String'))*pi/180;
    Th_6 = str2double(get(handles.t6,'String'))*pi/180;
    % take DH's parameters
    [a,alpha,d] = get_dh();
    % create robot structure by Robotics Toolbox
    %Link([theta, d,     a,     alpha,      jointType(0: Rot; 1:Trans])
    S(1) = Link([0   d(1)   a(1)   alpha(1)      0]); %S(1).qlim = pi/180*[-185 185];
    S(2) = Link([0   d(2)   a(2)   alpha(2)      0]); %S(2).qlim = pi/180*[-175 60];
    S(3) = Link([0   d(3)   a(3)   alpha(3)      0]); %S(3).qlim = pi/180*[-120 165];
    S(4) = Link([0   d(4)   a(4)   alpha(4)      0]); %S(4).qlim = pi/180*[-180 180];
    S(5) = Link([0   d(5)   a(5)   alpha(5)      0]); %S(5).qlim = pi/180*[-125 125];
    S(6) = Link([0   d(6)   a(6)   alpha(6)      0]); %S(6).qlim = pi/180*[-350 350];
    
    angle_offset = [0 -90 0 0 0 -180]*pi/180;
    
    Rob = SerialLink(S); % Creating robot model
    Rob.name = '6R';
    
    des_joints = [Th_1 Th_2-pi/2 Th_3 Th_4 Th_5 Th_6-pi];
    d_deg=rad2deg(des_joints)
    d_pos = myForwardPos(des_joints(1),des_joints(2)+pi/2,des_joints(3),des_joints(4),des_joints(5),des_joints(6)+pi);
    set(handles.Pos_x,'string',num2str(round(d_pos(1),3)));
    set(handles.Pos_y,'string',num2str(round(d_pos(2),3)));
    set(handles.Pos_z,'string',num2str(round(d_pos(3),3)));

    numSteps = 40;
    ang_step = interpolate6D(angle_offset,des_joints, numSteps);
    % initial position
%     P_path=[];
%     for i=1:numSteps
%         P_path=[P_path myForwardPos(ang_step(i,1),ang_step(i,2),ang_step(i,3),ang_step(i,4),ang_step(i,5),ang_step(i,6))];
%     end
%     % draw trajectory
%     h = plot3(P_path(1,:),P_path(2,:),P_path(3,:),'Color',[1 0 0],'LineWidth',2);
%     hold on;
%     % 
%     xlim([-1500 1500]);
%     ylim([-1500 1500]);
%     zlim([-2000 2000]);
%     for i=1:numSteps 
%         plot(Rob,ang_step(i,:))
%     end
%     delete(h);
    P_path = zeros(3, numSteps);
    for i = 1:numSteps
        % Forward kinematics for each step
        P_path(:, i) = myForwardPos(ang_step(i, 1), ang_step(i, 2) + pi/2, ang_step(i, 3), ang_step(i, 4), ang_step(i, 5), ang_step(i, 6));
    end
    
    % Plot trajectory
    h = plot3(P_path(1, :), P_path(2, :), P_path(3, :), 'Color', [1 0 0], 'LineWidth', 2);
    hold on;
    
    % Set axis limits
    xlim([-1500 1500]);
    ylim([-1500 1500]);
    zlim([-2000 2000]);
    
    % Plot the robot for each step
    for i = 1:numSteps
        Rob.plot(ang_step(i, :));
    end
    
    % Delete trajectory plot (optional)
    delete(h);
% --- Executes on button press in inverse_btn.
function inverse_btn_Callback(hObject, eventdata, handles)
    set(handles.t1,'string','');
    set(handles.t2,'string','');
    set(handles.t3,'string','');
    set(handles.t4,'string','');
    set(handles.t5,'string','');
    set(handles.t6,'string','');

    % extract desired position
    x = str2double(get(handles.Pos_x,'String'));
    y = str2double(get(handles.Pos_y,'String'));
    z = str2double(get(handles.Pos_z,'String'));
    % take DH's parameters
    [a,alpha,d] = get_dh();
    
    % create robot structure by Robotics Toolbox
    %Link([theta, d,     a,     alpha,      jointType(0: Rot; 1:Trans])
    S(1) = Link([0   d(1)   a(1)   alpha(1)      0]); %S(1).qlim = pi/180*[-185 185];
    S(2) = Link([0   d(2)   a(2)   alpha(2)      0]); %S(2).qlim = pi/180*[-175 60];
    S(3) = Link([0   d(3)   a(3)   alpha(3)      0]); %S(3).qlim = pi/180*[-120 165];
    S(4) = Link([0   d(4)   a(4)   alpha(4)      0]); %S(4).qlim = pi/180*[-180 180];
    S(5) = Link([0   d(5)   a(5)   alpha(5)      0]); %S(5).qlim = pi/180*[-125 125];
    S(6) = Link([0   d(6)   a(6)   alpha(6)      0]); %S(6).qlim = pi/180*[-350 350];

    Rob = SerialLink(S);
    Rob.name = '6R';
%     
    t1 =0; t2=0; t3=0; t4= 0; t5=0; t6=0;
    joints = [t1 t2-pi/2 t3 t4 t5 t6-pi];
    totalA = Rob.A(1:6,joints)
    % nếu size(totalA)=(1,1) dùng code dưới đây
    % chuyển ma trận totalA về lại 4x4 
%     A = zeros(4,4);
%     A(1:3,1) = totalA.n; A(1:3,2) = totalA.o; A(1:3,3) = totalA.a; A(1:3,4) = totalA.t % n(1x3),o(1x3),a(1x3),t(1x3)
%     % chuyển các số gần bằng 0 về 0
%     thershold = 10e-10;
%     A(abs(A)<thershold) = 0;
%     A(4,4)=1;
%     A()
%    A=[-0.4830    0.2588   -0.8365  1;
%     0.1294    0.9659    0.2241  1;
%     0.8660    0.0000   -0.5000  1;
%          0         0         0    1];
   A=[ 0.1964    0.0474    0.9794 1;
    0.5937    0.7891   -0.1572 1;
   -0.7803    0.6124    0.1268  1;
         0         0         0    1];

    desired_point = [x; y; z]
    A(1:3,4) = desired_point
    
    % tìm ra cấu hình điểm đến 
    [theta1,theta2,theta3,theta4,theta5,theta6] = myInverse(A);
    des_joints = [theta1,theta2-pi/2,theta3,theta4,theta5,theta6-pi];
    des_joints_deg=rad2deg(des_joints)
%     des_joints
    set(handles.t1,'string',num2str(round(des_joints(1)*180/pi,2)));
    set(handles.t2,'string',num2str(round((des_joints(2)+pi/2)*180/pi,2)));
    set(handles.t3,'string',num2str(round(des_joints(3)*180/pi,2)));
    set(handles.t4,'string',num2str(round(des_joints(4)*180/pi,2)));
    set(handles.t5,'string',num2str(round(des_joints(5)*180/pi,2)));
    set(handles.t6,'string',num2str(round((des_joints(6)+pi)*180/pi,2)));
%     testfwd= myForward(-pi/6, pi/6, -pi/3, pi/4, pi/6, 0)
    numSteps = 40;
    step = interpolate6D(joints, des_joints, numSteps);
    
%     % initial position
%     P_path = zeros(3, numSteps);
%     for i=1:numSteps
%         P_path=[P_path myForwardPos(step(i,1),step(i,2)+pi/2,step(i,3),step(i,4),step(i,5),step(i,6))];
%     end
%     % draw trajectory
%     h = plot3(P_path(1,:),P_path(2,:),P_path(3,:),'Color',[1 0 0],'LineWidth',2);
%     hold on;
%     
%     xlim([-1500 1500]);
%     ylim([-1500 1500]);
%     zlim([-2000 2000]);
% 
%     % UI for 6 angles modification
%     % Rob.teach
%     % Rob
%     for i=1:numSteps 
%         plot(Rob,step(i,:))
%     end
%     delete(h);
    % initial position
    P_path = zeros(3, numSteps);
    for i = 1:numSteps
        % Forward kinematics for each step
        P_path(:, i) = myForwardPos(step(i, 1), step(i, 2) + pi/2, step(i, 3), step(i, 4), step(i, 5), step(i, 6));
    end
    
    % draw trajectory
    h = plot3(P_path(1, :), P_path(2, :), P_path(3, :), 'Color', [1 0 0], 'LineWidth', 2);
    hold on;
    
    xlim([-1500 1500]);
    ylim([-1500 1500]);
    zlim([-2000 2000]);
    
    % UI for 6 angles modification
    % Rob.teach
    % Rob
    for i = 1:numSteps 
        Rob.plot(step(i, :));
    end
    
    delete(h);

