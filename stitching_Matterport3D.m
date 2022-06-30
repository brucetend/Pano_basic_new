%% stitching Matterport3D panorama images and depth  maps
clear; close all;
add_path;

%source_dir = '/home/wolian/disk2/Matterport';
%target_dir = '/home/wolian/disk1/Matterport3D';

%source_dir = 'D:/matterport3d/v1/haha';
%target_dir = 'D:/matterport3d/v3/haha';

source_dir = '/cvhci/data/segmentation/Matterport3D';
target_dir = '/cvhci/data/panoramic/Pano_matterport_full';

listing = dir(source_dir);
listing(ismember( {listing.name}, {'.', '..'})) = [];

for i = 1:length(listing)
    
    if ~exist(strcat(target_dir, '/', listing(i).name), 'dir')
        mkdir(strcat(strcat(target_dir, '/', listing(i).name)))
    else
        continue
    end
    
    stitch(strcat(source_dir, '/', listing(i).name), strcat(target_dir, '/', listing(i).name), listing(i).name);
    
end