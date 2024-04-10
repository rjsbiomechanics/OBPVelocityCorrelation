clc
clear all
%%
force_variables = readtable('mod_force_plate.csv', Range="A1:N2", ReadVariableNames=true) % to check row number for variable names
meta = readmatrix('mod_metadata.csv');
college = meta(meta(: ,8) == 1,:);
%%
force_data = readmatrix('mod_force_plate.csv');
%% college duplicates
college(141, :) = [];
college(186:191, :) = [];
%% PKH
cfd = force_data(force_data(:,2)==force_data(:,9),:);
run no_dup.m
run write_data.m
run pkh_forces.m %forces horzcat, columns correspond with X,Y,Z
%% FP_10
cfd = force_data(force_data(:,2)==force_data(:,10),:);
run no_dup.m
run write_data.m
run fp10_forces.m %forces horzcat, columns correspond with X,Y,Z
%% FP_100
cfd = force_data(force_data(:,2)==force_data(:,11),:);
run no_dup.m
run write_data.m
run fp100_forces.m %forces horzcat, columns correspond with X,Y,Z
%% MER
cfd = force_data(force_data(:,2)==force_data(:,12),:);
run no_dup.m
run write_data.m
run MER_forces.m %forces horzcat, columns correspond with X,Y,Z
%% BR
cfd = force_data(force_data(:,2)==force_data(:,13),:);
run no_dup.m
run write_data.m
run BR_forces.m %forces horzcat, columns correspond with X,Y,Z
%% MIR
cfd = force_data(force_data(:,2)==force_data(:,14),:);
run no_dup.m
run write_data.m
run MIR_forces.m %forces horzcat, columns correspond with X,Y,Z
%%
Check = college(:,3)- cfd_no_dup(:,1);
%% Resultants (X = Frontal, Z = Longitudinal)
pkh_lead_forces(:,4) = resultant(pkh_lead_forces(:,1), pkh_lead_forces(:,3)); % Resultant output to 4th column of each force file
pkh_rear_forces(:,4) = resultant(pkh_rear_forces(:,1), pkh_rear_forces(:,3));
fp10_lead_forces(:,4) = resultant(fp10_lead_forces(:,1), fp10_lead_forces(:,3));
fp10_rear_forces(:,4) = resultant(fp10_rear_forces(:,1), fp10_rear_forces(:,3));
fp100_lead_forces(:,4)= resultant(fp100_lead_forces(:,1), fp100_lead_forces(:,3));
fp100_rear_forces(:,4) = resultant(fp100_rear_forces(:,1), fp100_rear_forces(:,3));
MER_lead_forces(:,4) = resultant(MER_lead_forces(:,1), MER_lead_forces(:,3));
MER_rear_forces(:,4) = resultant(MER_rear_forces(:,1), MER_rear_forces(:,3));
BR_lead_forces(:,4) = resultant(BR_lead_forces(:,1), BR_lead_forces(:,3));
BR_rear_forces(:,4) = resultant(BR_rear_forces(:,1), BR_rear_forces(:,3));
MIR_lead_forces(:,4) = resultant(MIR_lead_forces(:,1), MIR_lead_forces(:,3));
MIR_rear_forces(:,4) = resultant(MIR_rear_forces(:,1), MIR_rear_forces(:,3));
%% Vector Angle
pkh_lead_forces(:,5) = atantheta(pkh_lead_forces(:,3), pkh_lead_forces(:,1)); % Vector angle output to 5th column of each force file
pkh_rear_forces(:,5) = atantheta(pkh_rear_forces(:,3), pkh_rear_forces(:,1));
fp10_lead_forces(:,5) = atantheta(fp10_lead_forces(:,3), fp10_lead_forces(:,1));
fp10_rear_forces(:,5) = atantheta(fp10_rear_forces(:,3), fp10_rear_forces(:,1));
fp100_lead_forces(:,5) = atantheta(fp100_lead_forces(:,3), fp100_lead_forces(:,1));
fp100_rear_forces(:,5) = atantheta(fp100_rear_forces(:,3), fp100_rear_forces(:,1));
MER_lead_forces(:,5) = atantheta(MER_lead_forces(:,3), MER_lead_forces(:,1));
MER_rear_forces(:,5) = atantheta(MER_rear_forces(:,3), MER_rear_forces(:,1));
BR_lead_forces(:,5) = atantheta(BR_lead_forces(:,3), BR_lead_forces(:,1));
BR_rear_forces(:,5) = atantheta(BR_rear_forces(:,3), BR_rear_forces(:,1));
MIR_lead_forces(:,5) = atantheta(MIR_lead_forces(:,3), MIR_lead_forces(:,1));
MIR_rear_forces(:,5) = atantheta(MIR_rear_forces(:,3), MIR_rear_forces(:,1));
%% SAVE
save collegeforces.mat
%% Descriptives
avg_vel = mean(pitch_speed);
med_vel = median(pitch_speed);
std_dev_vel = std(pitch_speed);
mode_vel = mode(pitch_speed);
descriptives = [avg_vel med_vel mode_vel std_dev_vel]