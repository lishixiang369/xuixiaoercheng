word1 = '请输入您的身份证号码：';
ID_Card = input(word1,'s');
s=length(ID_Card);
if s==18
date = datevec(now);
year = date(1,1);
ID_num = str2num(ID_Card(:));
old = ID_num(7,1)*1000+ID_num(8,1)*100+ID_num(9,1)*10+ID_num(10,1);
ST = year - old;
if ST >= 18 && ST <= 110
    disp('欢迎光临，祝您观影愉快！');
elseif ST >= 14 && ST <= 18
    word2 = '您是否有家长陪同？（Y or N）:';
    answ = input(word2,'s');
    if strcmp(answ,'Y') || strcmp(answ,'y')
        disp('欢迎光临，祝您和您的父母观影愉快');
    elseif strcmp(answ,'N') || strcmp(answ,'n')
        disp('抱歉，本影片未在父母陪伴下禁止观看，欢迎下次再来。');
    else
        disp('输入错误，即将退出。');
    end
elseif ST <= 14
    disp('抱歉，本影片儿童禁止观看，欢迎观看其他影片。');
else
    disp('输入错误，即将退出。若您是超过的110岁的请及时到柜台出领奖！');
end
else
    disp('身份证号错误');
end