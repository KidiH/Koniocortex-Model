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

switch (i)
    case ceil(75*iter/100)
        w_memoria1 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria1(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(76*iter/100)
        w_memoria2 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria2(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(77*iter/100)
        w_memoria3 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria3(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(78*iter/100)
        w_memoria4 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria4(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(79*iter/100)
        w_memoria5 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria5(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(80*iter/100)
        w_memoria6 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria6(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(81*iter/100)
        w_memoria7 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria7(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(82*iter/100)
        w_memoria8 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria8(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(83*iter/100)
        w_memoria9 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria9(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(84*iter/100)
        w_memoria10 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria10(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(85*iter/100)
        w_memoria11 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria11(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(86*iter/100)
        w_memoria12 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria12(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(87*iter/100)
        w_memoria13 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria13(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(88*iter/100)
        w_memoria14 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria14(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(89*iter/100)
        w_memoria15 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria15(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(90*iter/100)
        w_memoria16 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria16(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(91*iter/100)
        w_memoria17 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria17(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(92*iter/100)
        w_memoria18 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria18(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(93*iter/100)
        w_memoria19 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria19(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(94*iter/100)
        w_memoria20 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria20(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(95*iter/100)
        w_memoria21 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria21(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(96*iter/100)
        w_memoria22 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria22(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(97*iter/100)
        w_memoria23 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria23(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(98*iter/100)
        w_memoria24 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria24(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(99*iter/100)
        w_memoria25 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria25(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
    case ceil(100*iter/100)
        w_memoria26 = w;
        w = pruningHuttenlocher(w,decaimentoConexoes, sensory, tc, spiny);
        w(1:sensory,(sensory+tc+1):(sensory+tc+spiny)) = w_memoria26(1:sensory,(sensory+tc+1):(sensory+tc+spiny));
        mask_pruning = (w~=0).*ones(size(w));
        
end
