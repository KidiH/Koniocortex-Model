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

function[w, mask] = gennet_con_4_capas(sensory,tc, spiny, inhibitory) 
    m00=zeros(sensory,sensory); 
    m01=zeros(sensory,tc);
    m02=0.1.*ones(sensory,spiny); 
    m03=zeros(sensory,inhibitory);
    m10=eye(tc, sensory);
    m11=zeros(tc,tc);
    m12=zeros(tc,spiny);
    m13=zeros(tc,inhibitory);    
    m20=zeros(spiny, sensory);
    m21=0.01.*ones(spiny,tc)+0.1.*rand(spiny,tc);
    m22=0.85.*eye(spiny,spiny); 
    m23=-0.98.*(ones(spiny,inhibitory)-0.01.*rand(spiny,inhibitory)).*(ones(spiny,inhibitory)-eye(spiny,inhibitory)); 
    m30=zeros(inhibitory,sensory);
    m31=zeros(inhibitory,tc);  
    m32=0.5.*eye(inhibitory,spiny).*(ones(inhibitory,spiny)+0.01.*rand(inhibitory,spiny));
    m33=zeros(inhibitory,inhibitory);    
    w=[m00,m01,m02,m03; m10 m11 m12 m13; m20 m21 m22 m23; m30 m31 m32 m33];
    m10=zeros(size(m10));
    m22=zeros(size(m22)); 
    m31=zeros(size(m31));
    m32=zeros(size(m32));
    w1=[m00,m01,m02,m03; m10 m11 m12 m13; m20 m21 m22 m23; m30 m31 m32 m33];
    mask=w1>zeros(size(w1));  
end
    
    
    