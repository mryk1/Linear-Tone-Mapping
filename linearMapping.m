
clc
close all
I = getpfmraw('AtriumNight.pfm'); %image 1
linMap(I, 'AtriumNight');
I = getpfmraw('rosette.pfm'); %image 2
linMap(I, 'rosette');
I = getpfmraw('doll_doll.pfm'); %image 3
linMap(I, 'doll_doll');
I = getpfmraw('lips.pfm'); % image 4
linMap(I, 'lips');
I = getpfmraw('church.pfm'); %image 5
linMap(I, 'church');

function linMap(x , name)
I = x; 
mx = max(max(I)) ;
mn = min(min(I)) ;
LuminMapLinear = 255*(I - mn) ./ (mx - mn ); % LuminMapLinear = I / mx;
figure; imshow(LuminMapLinear), title('Linear Tone Mapping');
imwrite((LuminMapLinear),[name, '.bmp']);
end
