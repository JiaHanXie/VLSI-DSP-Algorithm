%{
author: Jia Han Xie
Testbench for Unfolding the switch
W: Delay
J: Unfolding factor
V:
    Left:  order of V from Ui
    Right: delay
%}
function V=Unfold(W,J)
    for i=1:J
        V(i,:)=[mod(W+(i-1),J),floor((W+(i-1))/J)];
    end
end