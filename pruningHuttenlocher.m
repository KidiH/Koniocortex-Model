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

function [w_antes_pruning] = pruningHuttenlocher(w, decaimentoConexoes, sensory, tc, spiny)
w_antes_pruning = w;
mascara_pruning_positivos = (w_antes_pruning>0).*ones(size(w_antes_pruning)); 
w_temp = w_antes_pruning .* mascara_pruning_positivos; 
w_temp(1:sensory,(sensory+tc+1):(sensory+tc+spiny))=0; 
mascara_pruning_zeros = (w_temp==0).*ones(size(w_temp));
w_pruning = w_temp + mascara_pruning_zeros; 
vetor_min_pesos = sort(min(w_pruning));
auxiliar = 0;
indice = 1;
while (auxiliar <= decaimentoConexoes && indice <= size(vetor_min_pesos,2))
    for linhaW = 1:size(w_antes_pruning,1)
        for colunaW = 1:size(w_antes_pruning,2)
            if (w_antes_pruning(linhaW,colunaW) == vetor_min_pesos(indice))
                w_antes_pruning(linhaW,colunaW) = 0;
                auxiliar = auxiliar + 1;
                if (auxiliar == decaimentoConexoes)
                    break
                end
            end            
        end
        if (auxiliar == decaimentoConexoes)
            break
        end
    end
    if (auxiliar == decaimentoConexoes)
        break
    end
    indice = indice + 1;
end
w_antes_pruning(1:sensory,(sensory+tc+1):(sensory+tc+spiny))=w(1:sensory,(sensory+tc+1):(sensory+tc+spiny));


                
            
        

