
 file=dir('lena512.bmp');
 for i=1:length(file)
     tmp = imread(file(i).name);
     out_name = strrep(file(i).name, 'bmp', 'pbm');
     tmp = logical(tmp./256);
     imwrite(tmp, out_name ,'pbm');
     image(tmp);
 end

% tmp = imread('4.2.01.tiff');
% tmp = logical(tmp/256);
% imwrite(tmp,'test.pbm');
% image(tmp);