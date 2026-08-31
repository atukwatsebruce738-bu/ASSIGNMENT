clc;
clear;
Students=readtable("C:\Users\DELL\Desktop\GROUP 13\GROUP 13.xlsx");
disp(Students);
writetable(Students,"GROUP 13.xlsx");

figure;
hostelData = categorical(Students.HOSTELORHALL);
hostelCounts = countcats(hostelData);
bar(hostelCounts);
xlabel('Hostel/Hall');
ylabel('Number of Students');
title('Students by Hostel/Hall');
set(gca, 'XTick', 1:numel(categories(hostelData)), ...
    'XTickLabel', categories(hostelData));
grid on;
saveas(gcf, 'Students_By_Hostel.png');

figure;
CGPA_plot=bar(Students.CGPA);
title("CGPA of Students");
xlabel("Student");
ylabel("CGPA");
grid on;
saveas(gcf, 'Students_By_CGPA');

figure;
tribeData = categorical(Students.TRIBE);
tribeCounts = countcats(tribeData);
bar(tribeCounts);
xlabel('Tribe');
ylabel('Number of Students');
title('Students by Tribe');
set(gca, 'XTick', 1:numel(categories(tribeData)), ...
    'XTickLabel', categories(tribeData));
grid on;
saveas(gcf, 'Students_By_Tribe.png');

figure;
AGE_plot=bar(Students.AGE);
title("AGE OF STUDENTS");
xlabel("STUDENT");
ylabel("AGE");
grid on;
saveas(gcf, 'Students_By_Age.png');