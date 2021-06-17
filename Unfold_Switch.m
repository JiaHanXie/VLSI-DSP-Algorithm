%{
author: Jia Han Xie
Unfolding the switch
W: wordlength
J: Unfolding factor
u: time order
Switch: count from 0
Result:
    Left:  number of switch
    Right: time order
%}
function Result=Unfold_Switch(W,J,u)
    if mod(W,J)==0
        [~,N] = size(u) ;
        for i=1:N
            if u(i)>=W
                disp('error!');
            else
               Result(i,:)=[mod(u(i),J),floor(u(i)/J)]; 
            end
        end
    elseif mod(W,J)~=0
        W_plam=lcm(W,J);
        J_plam=J;
        u_plam=[];
        [~,N] = size(u);
        for i=1:N
            for j=1:J
                u_plam=[u_plam,W*(j-1)+u(i)];
            end
        end
        Result=Unfold_Switch(W_plam,J_plam,u_plam);
    else
        disp('error!');
    end
end