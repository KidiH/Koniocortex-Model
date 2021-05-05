%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Special Issue: Cortical Circuitry and Synaptic Dysfunctions in Alzheimer's Disease and Other Dementias
% Alzheimer's disease as a result of stimulus reduction in a GABA-A deficient brain: a neurocomputational model.
% Mariana A. Aguiar-Furucho [1,3] Francisco J. R. Peláez [2,3] 
% [1] Engineering, Neuroscience and Bio-Inspired Systems Study Group (GENeSis), Department of Electrotechnics (DAELT), 
% Universidade Tecnológica Federal do Paraná (UTFPR), Paraná, 80230-901, Brazil. 
% [2] Center of Mathematics, Computation, and Cognition (CMCC). Universidade Federal do ABC.
% [3] Center for Neuroscience and Behavior, Institute of Psychology, University of São Paulo, São Paulo, Brazil. 
% Correspondence: 
% Mariana A. Aguiar-Furucho <marianafurucho@utfpr.edu.br>
% Francisco J. R. Peláez <francisco.pelaez@ufabc.edu.br>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function[]=memories1(w,sensory,tc,spiny,col,lin)
for k=1:spiny
    mem=(1.7 - (k*0.1))*w(1:tc, sensory+tc+1:sensory+tc+spiny);
    mem1=reshape(mem(:,k),col,lin);
%     mem=w(sensory+tc+spiny+1:sensory+tc+spiny+inhibit, sensory+tc+1:sensory+tc+spiny);
%     mem1=reshape(pc(k,:),col,lin);
%     pc1=zeros(size(pc1));
    pc=w(sensory+tc+1:sensory+tc+spiny, sensory+1:sensory+tc);
    pc1=reshape(pc(k,:),col,lin);
    pc1=zeros(size(pc1));
    subplot(2,ceil(spiny/2),k );
    if (k < spiny)
        numbergraph1((mem1'*10).*((mem1'*10)>0.4),-pc1', 1,0)
    else
        numbergraph1((mem1'*10).*((mem1'*10)>0.4),-pc1', 1,0)
    end
end



