%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;
clc;
pause(0.1);

[P,col,lin]=inputnumbers();
global glulevel;
%n_entradas = 15, padroes = 10
%col = 3, lin = 5
[n_entradas, padroes] = size(P);
sensory=n_entradas; % = 15
tc=n_entradas; % = 15
spiny=padroes; % = 10
inhibit=padroes; % = 10
numero_total_de_neuronas=sensory+tc+spiny+inhibit; % = 50
steepness = 40.*ones(numero_total_de_neuronas,1); % 50 element array of all 40s
steepness(sensory+1:sensory+tc) = 40; %section of the array
camadas = 4;
[w, mascara] = gennet_con_4_capas(sensory,tc,spiny,inhibit); % w and mask are a 50 X 50 matrix
n_neuronios = size(w, 1); %50
incw = zeros(size(w)); %50 X 50 matrix of zeros
shift = 0.061.* ones(n_neuronios, 1);
shift_inicial = shift;
output = zeros(n_neuronios, 1);
output_antes = output;
fator_aprendiz = 0.0019;
velocidade_deslocamento = 0.0199.*(ones(size(shift)));
velocidade_deslocamento(sensory+1:sensory+tc) = 0.0199;
iter = 2000;
iter_graph = 1;
inter_totais = 1;
graf_shift = zeros(1,iter);
graf_output = zeros(1,iter);
input_reduction = 2;
PX=[1 0 1  1 0 1  0 1 0  1 0 1  1 0 1];
PX = PX/sum(PX);
P_STM=P;
P_STM(:,randi(randi([1 10])))=PX;
disp(P_STM)
disp(size(P))
disp(size(PX))
P_STM_SR = P_STM/input_reduction;
P0=P;
P1=P;
P_SR=P/input_reduction;
[conexoes75, conexoes100, decaimentoConexoes] = pruningParametros(w,sensory,spiny,tc);
disp('dec')
disp(decaimentoConexoes)
disp('dec')
time_init=datetime;

disp('Processing Koniocortex .....')

for i = 1:1:iter
    if (i==ceil(50*iter/100))
        hfig = figure('Menubar','none','Toolbar','none','NumberTitle','off','Name','50%');
        memories1(w,sensory,tc,spiny,col,lin);
        set(hfig,'Color','w');
        disp('Wait - Processing at 50% . ');
        
    elseif (i==ceil(60*iter/100))
        hfig = figure('Menubar','none','Toolbar','none','NumberTitle','off','Name','60%');
        memories1(w,sensory,tc,spiny,col,lin);
        set(hfig,'Color','w');
        disp('Wait - Processing at 60% . . ');
        
    elseif (i==ceil(70*iter/100))
        hfig = figure('Menubar','none','Toolbar','none','NumberTitle','off','Name','70%');
        memories1(w,sensory,tc,spiny,col,lin);
        set(hfig,'Color','w');
        disp('Wait - Processing at 70% . . . ');
        
    elseif (i==ceil(80*iter/100))
        hfig = figure('Menubar','none','Toolbar','none','NumberTitle','off','Name','80%');
        memories1(w,sensory,tc,spiny,col,lin);
        set(hfig,'Color','w');
        disp('Wait - Processing at 80% . . . . ');
        
    elseif (i==ceil(90*iter/100))
        hfig = figure('Menubar','none','Toolbar','none','NumberTitle','off','Name','90%');
        memories1(w,sensory,tc,spiny,col,lin);
        set(hfig,'Color','w');
        disp('Wait - Processing at 90% . . . . . ');
    end
    
    if ((i>=ceil(60*iter/100)))
        P=P_SR;
     
    elseif (i>=ceil(85*iter/100))
        P=P_STM_SR;
    end
    
    
    
    %% PRUNING
    aplica_Pruning_Huttenlocher;
    
    
    for j = 1:1:padroes
        output = zeros(n_neuronios, 1);
        output_antes = output;
        output(1:n_entradas,1) = P(:,j);
        
        for k = 1:1:(2*camadas)
            w_old = w;
            w = w + incw;
            if (i>=ceil(75*iter/100))
                w = w.* mask_pruning;
            end
            norm=output(sensory+1:sensory+tc)'*ones(size(output(sensory+1:sensory+tc)));
            if  norm==0
                norm=1;
            end
            
            %% GABA-A -------------
            if (i<ceil(50*iter/100))
                output(sensory+1:sensory+tc)=output(sensory+1:sensory+tc)./norm; %normalizing to 1
            else
                if((i>=ceil(50*iter/100)) &&  (i<=ceil(75*iter/100)))
                    output(sensory+1:sensory+tc)=output(sensory+1:sensory+tc);
                else
                    output(sensory+1:sensory+tc)=output(sensory+1:sensory+tc)./norm;
                end
            end
            %% END GABA-A ----------
            
            a = w * output;
            output= 1./(1+exp(-steepness.*(a-5.*shift)));
            output(1:n_entradas,1) = P(:,j);
            output((n_neuronios-inhibit+1:n_neuronios),1) = 1.3.*a((n_neuronios-inhibit+1:n_neuronios),1);
            
            incw = (fator_aprendiz .* (output * output_antes' - ((1+0.05).*ones(size(output)) * output_antes') .* w)) .* mascara;
            
            %% MEMANTINE -----------------
%                         if (i<=ceil(55*iter/100))
%                              incw = (fator_aprendiz .* (output * output_antes' - ((1+0.05).*ones(size(output)) * output_antes') .* w)) .* mascara;
%                         else
%                             incw = zeros(size(incw));
%                         end
            %% END MEMANTINA --------------
            
            shift = (velocidade_deslocamento .* output + shift) ./ (1 + velocidade_deslocamento); %eq A.7
            glulevel = 5;
            if(i>= ceil(40*iter/100) && i < ceil(60*iter/100))
                glulevel = 0.75 + glulevel;
            end
            if(i>= ceil(60*iter/100) && i <= ceil(80*iter/100))
                glulevel = glulevel - 0.7;
            end
            if(i> ceil(80*iter/100))
                glulevel = glulevel - 0.2;
            end
            
            %% ACh --------------
%                         if (i == ceil(50*iter/100))
%                             shift_freezing = shift;
%                             disp((shift_freezing(sensory+1:sensory+tc) - shift(sensory+1:sensory+tc)))
%                         end  
%                         
%                         if(i>=ceil(50*iter/100))
%                             shift(sensory+1:sensory+tc)= shift_freezing(sensory+1:sensory+tc);
%                             
%                         if(i == 53)
%                             disp('~~~')
%                             disp((shift_freezing(sensory+1:sensory+tc) - shift(sensory+1:sensory+tc)))
%                         end
%                           
%                         end
            %% END ACh ----------
            
            output_antes = output;
        end
    end
    graf_shift(i)  = (ones(size(shift(sensory+1:(n_neuronios-inhibit))'))*shift(sensory+1:(n_neuronios-inhibit)))/(n_neuronios-sensory-inhibit);
    graf_output(i) = (ones(size(output(sensory+1:(n_neuronios-inhibit))'))*output(sensory+1:(n_neuronios-inhibit)))/(n_neuronios-sensory-inhibit);
    
end

hfig = figure('Menubar','none','Toolbar','none','NumberTitle','off','Name','100%');
memories1(w,sensory,tc,spiny,col,lin);
set(hfig,'Color','w');

hfig = figure('Menubar','none','Toolbar','none','NumberTitle','off','Name','110%');
memories11(w,sensory,tc,spiny,col,lin);
set(hfig,'Color','w');


x_graf = linspace(1,100,iter);
hfig = figure('Color','w','Menubar','none','Toolbar','none','NumberTitle','off','Name','100%');
plot(x_graf,graf_output,'r');
hold on;
plot(x_graf,graf_shift,'b');
hold off;
legend('Output','Shift');
xlabel('Training (%)')
nomeFig = 'Iter_';
disp('Processing Completed !!! ');
