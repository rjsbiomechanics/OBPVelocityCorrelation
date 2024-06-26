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
%% INDIVIDUAL VARIABLES
pkh_lead_x = pkh_lead_forces(:,1);
pkh_rear_x = pkh_rear_forces(:,1);
pkh_lead_z = pkh_lead_forces(:,3);
pkh_rear_z = pkh_rear_forces(:,3);
pkh_lead_res = pkh_lead_forces(:,4);
pkh_rear_res = pkh_rear_forces(:,4);
pkh_lead_ang = pkh_lead_forces(:,5);
pkh_rear_ang = pkh_rear_forces(:,5);

fp10_lead_x = fp10_lead_forces(:,1);
fp10_rear_x = fp10_rear_forces(:,1);
fp10_lead_z = fp10_lead_forces(:,3);
fp10_rear_z = fp10_rear_forces(:,3);
fp10_lead_res = fp10_lead_forces(:,4);
fp10_rear_res = fp10_rear_forces(:,4);
fp10_lead_ang = fp10_lead_forces(:,5);
fp10_rear_ang = fp10_rear_forces(:,5);

fp100_lead_x = fp100_lead_forces(:,1);
fp100_rear_x = fp100_rear_forces(:,1);
fp100_lead_z = fp100_lead_forces(:,3);
fp100_rear_z = fp100_rear_forces(:,3);
fp100_lead_res = fp100_lead_forces(:,4);
fp100_rear_res = fp100_rear_forces(:,4);
fp100_lead_ang = fp100_lead_forces(:,5);
fp100_rear_ang = fp100_rear_forces(:,5);

MER_lead_x = MER_lead_forces(:,1);
MER_rear_x = MER_rear_forces(:,1);
MER_lead_z = MER_lead_forces(:,3);
MER_rear_z = MER_rear_forces(:,3);
MER_lead_res = MER_lead_forces(:,4);
MER_rear_res = MER_rear_forces(:,4);
MER_lead_ang = MER_lead_forces(:,5);
MER_rear_ang = MER_rear_forces(:,5);

BR_lead_x = BR_lead_forces(:,1);
BR_rear_x = BR_rear_forces(:,1);
BR_lead_z = BR_lead_forces(:,3);
BR_rear_z = BR_rear_forces(:,3);
BR_lead_res = BR_lead_forces(:,4);
BR_rear_res = BR_rear_forces(:,4);
BR_lead_ang = BR_lead_forces(:,5);
BR_rear_ang = BR_rear_forces(:,5);

MIR_lead_x = MIR_lead_forces(:,1);
MIR_rear_x = MIR_rear_forces(:,1);
MIR_lead_z = MIR_lead_forces(:,3);
MIR_rear_z = MIR_rear_forces(:,3);
MIR_lead_res = MIR_lead_forces(:,4);
MIR_rear_res = MIR_rear_forces(:,4);
MIR_lead_ang = MIR_lead_forces(:,5);
MIR_rear_ang = MIR_rear_forces(:,5);
%% SAVE
save resultant_data.mat pkh_lead_res pkh_rear_res pkh_lead_ang pkh_rear_ang fp10_lead_res fp10_rear_res fp10_lead_ang fp10_rear_ang fp100_lead_res fp100_rear_res fp100_lead_ang fp100_rear_ang MER_lead_res MER_rear_res MER_lead_ang MER_rear_ang BR_lead_res BR_rear_res BR_lead_ang BR_rear_ang MIR_lead_res MIR_rear_res MIR_lead_ang MIR_rear_ang pkh_lead_x pkh_rear_x pkh_lead_z pkh_rear_z fp10_lead_x fp10_rear_x fp10_lead_z fp10_rear_z fp100_lead_x fp100_rear_x fp100_lead_z fp100_rear_z MER_lead_x MER_rear_x MER_lead_z MER_rear_z BR_lead_x BR_rear_x BR_lead_z BR_rear_z MIR_lead_x MIR_rear_x MIR_lead_z MIR_rear_z
%% CLEAN WORKSPACE
clear pkh_lead_res pkh_rear_res pkh_lead_ang pkh_rear_ang fp10_lead_res fp10_rear_res fp10_lead_ang fp10_rear_ang fp100_lead_res fp100_rear_res fp100_lead_ang fp100_rear_ang MER_lead_res MER_rear_res MER_lead_ang MER_rear_ang BR_lead_res BR_rear_res BR_lead_ang BR_rear_ang MIR_lead_res MIR_rear_res MIR_lead_ang MIR_rear_ang pkh_lead_x pkh_rear_x pkh_lead_z pkh_rear_z fp10_lead_x fp10_rear_x fp10_lead_z fp10_rear_z fp100_lead_x fp100_rear_x fp100_lead_z fp100_rear_z MER_lead_x MER_rear_x MER_lead_z MER_rear_z BR_lead_x BR_rear_x BR_lead_z BR_rear_z MIR_lead_x MIR_rear_x MIR_lead_z MIR_rear_z