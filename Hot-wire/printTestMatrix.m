files = dir('*.mat');
files = {files.name}';

nFiles = length(files);

fprintf('Filename\t\t\t\tTinf\tPo\t\tPinf\n')

for k = 1:nFiles
    load(files{k});
    fprintf('%s\t%g\t%.4f\t%.4f\n', ...
        files{k}, ...
        (Tinf.value-273)*1.8+32, ...
        Po.value/248.8, ...
        Pinf.value/248.8 ...
        );
end