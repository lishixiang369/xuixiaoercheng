word1 = '�������������֤���룺';
ID_Card = input(word1,'s');
s=length(ID_Card);
if s==18
date = datevec(now);
year = date(1,1);
ID_num = str2num(ID_Card(:));
old = ID_num(7,1)*1000+ID_num(8,1)*100+ID_num(9,1)*10+ID_num(10,1);
ST = year - old;
if ST >= 18 && ST <= 110
    disp('��ӭ���٣�ף����Ӱ��죡');
elseif ST >= 14 && ST <= 18
    word2 = '���Ƿ��мҳ���ͬ����Y or N��:';
    answ = input(word2,'s');
    if strcmp(answ,'Y') || strcmp(answ,'y')
        disp('��ӭ���٣�ף�������ĸ�ĸ��Ӱ���');
    elseif strcmp(answ,'N') || strcmp(answ,'n')
        disp('��Ǹ����ӰƬδ�ڸ�ĸ����½�ֹ�ۿ�����ӭ�´�������');
    else
        disp('������󣬼����˳���');
    end
elseif ST <= 14
    disp('��Ǹ����ӰƬ��ͯ��ֹ�ۿ�����ӭ�ۿ�����ӰƬ��');
else
    disp('������󣬼����˳��������ǳ�����110����뼰ʱ����̨���콱��');
end
else
    disp('���֤�Ŵ���');
end