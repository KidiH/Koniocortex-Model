%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function[]=memories11(w,sensory,tc,spiny,col,lin)
random_num = randi([1 10],1,1);
disp(random_num)
for k=1:spiny
    mem=w(1:tc, sensory+tc+1:sensory+tc+spiny);
    mem1=reshape(mem(:,k),col,lin);
    pc=w(sensory+tc+1:sensory+tc+spiny, sensory+1:sensory+tc);
    pc1=reshape(pc(k,:),col,lin);
    pc1=zeros(size(pc1));
    subplot(2,ceil(spiny/2),k );
    if (k < random_num)
        numbergraph1((mem1'*10)/(abs(k - random_num)).*((mem1'*10)>0.4),-pc1', 1,0);
    else
        numbergraph1((mem1'*10)/(abs(k - random_num)).*((mem1'*10)>0.4),-pc1', 1,0)
    end
end



