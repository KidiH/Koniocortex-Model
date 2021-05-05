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

function[patterns,col,lin] =inputnumbers()             
     patterns= [0 1 0  1 1 0  0 1 0  0 1 0  0 1 0; %1    
                0 1 0  1 0 1  0 1 0  1 0 0  1 1 1; %2
                1 1 1  0 0 1  0 1 0  0 0 1  1 1 1; %3
                1 0 1  1 0 1  1 1 1  0 0 1  0 0 1; %4
                1 1 1  1 0 0  1 1 1  0 0 1  1 1 1; %5
                0 1 1  1 0 0  1 1 1  1 0 1  1 1 1; %6
                1 1 1  1 0 1  0 0 1  0 1 0  0 1 0; %7
                0 1 0  1 0 1  0 1 0  1 0 1  0 1 0; %8
                0 1 0  1 0 1  0 1 1  0 0 1  0 1 0; %9
                0 1 0  1 0 1  1 0 1  1 0 1  0 1 0];%0            
         patterns_normalizados = [patterns(1,:)/sum(patterns(1,:));
                             patterns(2,:)/sum(patterns(2,:));
                             patterns(3,:)/sum(patterns(3,:));
                             patterns(4,:)/sum(patterns(4,:));
                             patterns(5,:)/sum(patterns(5,:));
                             patterns(6,:)/sum(patterns(6,:));
                             patterns(7,:)/sum(patterns(7,:));
                             patterns(8,:)/sum(patterns(8,:));
                             patterns(9,:)/sum(patterns(9,:));
                             patterns(10,:)/sum(patterns(10,:));];         
         patterns = patterns_normalizados;              
         hfig = figure('Menubar','none','Toolbar','none','NumberTitle','off','Name','Input');
         entrada1=reshape(patterns(1,1:15),3,5);
         entrada2=reshape(patterns(2,1:15),3,5);
         entrada3=reshape(patterns(3,1:15),3,5);
         entrada4=reshape(patterns(4,1:15),3,5);
         entrada5=reshape(patterns(5,1:15),3,5);
         entrada6=reshape(patterns(6,1:15),3,5);
         entrada7=reshape(patterns(7,1:15),3,5);
         entrada8=reshape(patterns(8,1:15),3,5);
         entrada9=reshape(patterns(9,1:15),3,5);
         entrada10=reshape(patterns(10,1:15),3,5);                
         subplot(2,5,1);             
         numbergraph(entrada1'>0.03);
         subplot(2,5,2); 
         numbergraph(entrada2'>0.03);
         subplot(2,5,3); 
         numbergraph(entrada3'>0.03);
         subplot(2,5,4); 
         numbergraph(entrada4'>0.03);
         subplot(2,5,5); 
         numbergraph(entrada5'>0.03);
         subplot(2,5,6);             
         numbergraph(entrada6'>0.03);
         subplot(2,5,7); 
         numbergraph(entrada7'>0.03);
         subplot(2,5,8); 
         numbergraph(entrada8'>0.03);
         subplot(2,5,9); 
         numbergraph(entrada9'>0.03);
         subplot(2,5,10);
         numbergraph(entrada10'>0.03);
         set(hfig,'Color','w');
     patterns=patterns';
     col = 3;
     lin = 5;
end



                        
                 
                 
                 
  
  
  
  

