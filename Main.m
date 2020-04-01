clear; close all; clc;
file_name = {};
a = dir('INPUT_PIC');
list_of_structnames = a(3:end);
for kk = 1:length(list_of_structnames)
    file_name{end+1} = list_of_structnames(kk).name;
end
for kk = 1:length(list_of_structnames)
    figure
    grayImage = imread(['INPUT_PIC\' file_name{kk}]);
    [rows, columns, numberOfColorChannels] = size(grayImage);
    
    imshow(grayImage);
    hold on;
    lineSpacing_x = 95; % Whatever you want.
    for row = 1 : lineSpacing_x : rows
        line([1, columns], [row, row], 'Color', 'black', 'LineWidth', 1);
    end
    lineSpacing_y = 95;
    for col = 1 : lineSpacing_y : columns
        line([col, col], [1, rows], 'Color', 'black', 'LineWidth', 1);
    end

    saveas(gcf,['OUTPUT_PIC\' file_name{kk}]);
end

