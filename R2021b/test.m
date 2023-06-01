%%

randomNum = randi([1 1],1,1);
disp(randomNum);
randList = [3];
randList(end+1) = randomNum;
disp(randList);
isFind = find(randList==randomNum);
disp(isFind);

%% 
randNum = randi([1 16],1,1);
randisVision = [];

for i = 0:0:16
    if(~find(randisVision==randNum))
        randisVision(end+1) = randNum;
        disp(randNum);
        i = i + 1;
    else
        randNum = randi([1 16],1,1);
    end
end
disp(randisVision);
disp('s');

%% 
% 26 是日期
datestr(now,26);
% 13 是時間
datestr(now,13);

%% 
% 创建一个图形窗口和文本对象来显示时间
figure;
timeText = uicontrol('Style', 'text', 'Position', [100 100 200 50], 'FontSize', 24);

% 创建一个计时器对象
t = timer('ExecutionMode', 'fixedRate', 'Period', 1, 'TimerFcn', @(~,~)updateTime());

% 启动计时器
start(t);

% 定义计时器回调函数
function updateTime()
    currentTime = clock;  % 获取当前时间
    
    % 将时间转换为字符串并在文本对象中显示
    timeString = sprintf('%02d:%02d:%02d', currentTime(4), currentTime(5), fix(currentTime(6)));
    set(timeText, 'String', timeString);
end