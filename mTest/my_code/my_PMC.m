function ret = my_PMC( Pmusic )
%MY_PHASEDETECTION �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��Phase music information clearer
%��spotfi�õ���Pmusic���ݰ����л��򣬵õ������ԵĶྶ��Ϣ��
    N = length(Pmusic);
    Pm_max = cell(N,1);
    for ii = 1:1:N
        Phase = Pmusic{ii};
        maxmin=max(Phase)-min(Phase);
        [m,flag]=max(maxmin);
        Pm_max{ii}=Phase(:,flag);
            

    end
    ret = Pm_max;
end

