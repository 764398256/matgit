function ret = my_clearPhase( csi )
%MY_CLEARPHASE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵�� csiΪĳһ��stream�ϵ�30�����ز��ĸ�����Ϣ
%   �������ؾ�������ʵ��λ��Ϣ����ɵ�������ϵ���Ϣ
    phase_original(1,:)  = phase(csi(1,:));
    phase_original(2,:)  = phase(csi(2,:));
    phase_original(3,:)  = phase(csi(3,:));
    a(1)= (phase_original(1,30)-phase_original(1,1))/(30-1);
    a(2)= (phase_original(2,30)-phase_original(2,1))/(30-1);
    a(3)= (phase_original(3,30)-phase_original(3,1))/(30-1);
    b= sum(phase_original,2)/30;
    x = [1:1:30];
    phase_ret(1,:) = phase_original(1,:) - a(1)*x - b(1)*ones(1,30);
    phase_ret(2,:) = phase_original(2,:) - a(2)*x - b(2)*ones(1,30);
    phase_ret(3,:) = phase_original(3,:) - a(3)*x - b(3)*ones(1,30);
    ret = phase_ret;
end

