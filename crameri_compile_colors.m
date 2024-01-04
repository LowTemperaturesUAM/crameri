%% Code to collect Fabio's data into a single .mat file:
% Unzip the latest folder, navigate to that filepath, and run this.
% Update the file list as needed.
% Colormap list updated as of version 8.0.1

f = {'acton','bam','bamO','bamako','batlow','batlowK','batlowW','berlin',...
    'bilbao','broc','brocO','buda','bukavu','cork','corkO','davos','devon',...
    'fes','glasgow','grayC','hawaii','imola','lajolla','lapaz','lipari',...
    'lisbon','managua','navia','naviaW','nuuk','oleron','oslo','roma',...
    'romaO','tofino','tokyo','turku','vanimo','vik','vikO'};

for k = 1:length(f)
   colors.(f{k}) = load([f{k},filesep,f{k},'.mat']).(f{k});
end

exportdir = uigetdir('','Select destination directory');
save([exportdir,filesep,'CrameriColourMaps8.0.mat'],'-struct','colors')
clear f k exportdir