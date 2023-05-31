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
