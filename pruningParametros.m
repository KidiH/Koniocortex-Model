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

function[conexoes75, conexoes100, decaimentoConexoes] = pruningParametros(matrizPesos,sensory,spiny,tc)
npr = 0;
global glulevel;
if(glulevel > 15)
    npr = (0.01).*(glulevel-15);
end

if(glulevel < 5)
    npr = (0.01).*(5-glulevel);
end
w_antes = matrizPesos;
mascara_pos = (w_antes>0).*ones(size(w_antes)); 
w_temp_antes = w_antes .* mascara_pos; 
w_temp_antes(1:sensory,(sensory+tc+1):(sensory+tc+spiny))=0; 
mascara_zero = (w_temp_antes==0).*ones(size(w_temp_antes));
w_conta_pruning = w_temp_antes + mascara_zero; 
conexoes75 = sum(sum(w_conta_pruning ~= 1)); 
conexoes100 = ceil(conexoes75.*(0.8+npr)) ;
decaimentoConexoes = floor((conexoes75 - conexoes100)/26) ;
