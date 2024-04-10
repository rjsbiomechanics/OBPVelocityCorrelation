%% PKH Correlation
load ("resultant_data.mat")
A = [pitch_speed, pkh_lead_x, pkh_rear_x, pkh_lead_z, pkh_rear_z, pkh_lead_res, pkh_rear_res, pkh_lead_ang, pkh_rear_ang];
[C1, P1] = corrcoef(A);
T1 = array2table(C1);
T1.Properties.VariableNames(1:9) = {'pitch speed', 'pkh_lead_x', 'pkh_rear_x', 'pkh_lead_z', 'pkh_rear_z', 'pkh_lead_res', 'pkh_rear_res', 'pkh_lead_ang', 'pkh_rear_ang'};
T1.Properties.RowNames(1:9) = {'pitch speed', 'pkh_lead_x', 'pkh_rear_x', 'pkh_lead_z', 'pkh_rear_z', 'pkh_lead_res', 'pkh_rear_res', 'pkh_lead_ang', 'pkh_rear_ang'}
P1 = array2table(P1);
P1.Properties.VariableNames(1:9) = {'pitch speed', 'pkh_lead_x', 'pkh_rear_x', 'pkh_lead_z', 'pkh_rear_z', 'pkh_lead_res', 'pkh_rear_res', 'pkh_lead_ang', 'pkh_rear_ang'}
P1.Properties.RowNames(1:9) = {'pitch speed', 'pkh_lead_x', 'pkh_rear_x', 'pkh_lead_z', 'pkh_rear_z', 'pkh_lead_res', 'pkh_rear_res', 'pkh_lead_ang', 'pkh_rear_ang'}
%% FP_10 Correlation
B = [pitch_speed, fp10_lead_x, fp10_rear_x, fp10_lead_z, fp10_rear_z, fp10_lead_res, fp10_rear_res, fp10_lead_ang, fp10_rear_ang];
[C2, P2] = corrcoef(B);
T2 = array2table(C2);
T2.Properties.VariableNames(1:9) = {'pitch speed', 'fp10_lead_x', 'fp10_rear_x', 'fp10_lead_z', 'fp10_rear_z', 'fp10_lead_res', 'fp10_rear_res', 'fp10_lead_ang', 'fp10_rear_ang'};
T2.Properties.RowNames(1:9) = {'pitch speed', 'fp10_lead_x', 'fp10_rear_x', 'fp10_lead_z', 'fp10_rear_z', 'fp10_lead_res', 'fp10_rear_res', 'fp10_lead_ang', 'fp10_rear_ang'}
P2 = array2table(P2);
P2.Properties.VariableNames(1:9) = {'pitch speed', 'fp10_lead_x', 'fp10_rear_x', 'fp10_lead_z', 'fp10_rear_z', 'fp10_lead_res', 'fp10_rear_res', 'fp10_lead_ang', 'fp10_rear_ang'}
P2.Properties.RowNames(1:9) = {'pitch speed', 'fp10_lead_x', 'fp10_rear_x', 'fp10_lead_z', 'fp10_rear_z', 'fp10_lead_res', 'fp10_rear_res', 'fp10_lead_ang', 'fp10_rear_ang'}
%% FP_100 Correlation
C = [pitch_speed, fp100_lead_x, fp100_rear_x, fp100_lead_z, fp100_rear_z, fp100_lead_res, fp100_rear_res, fp100_lead_ang, fp100_rear_ang];
[C3, P3] = corrcoef(C);
T3 = array2table(C3);
T3.Properties.VariableNames(1:9) = {'pitch speed', 'fp100_lead_x', 'fp100_rear_x', 'fp100_lead_z', 'fp100_rear_z', 'fp100_lead_res', 'fp100_rear_res', 'fp100_lead_ang', 'fp100_rear_ang'};
T3.Properties.RowNames(1:9) = {'pitch speed', 'fp100_lead_x', 'fp100_rear_x', 'fp100_lead_z', 'fp100_rear_z', 'fp100_lead_res', 'fp100_rear_res', 'fp100_lead_ang', 'fp100_rear_ang'}
P3 = array2table(P3);
P3.Properties.VariableNames(1:9) = {'pitch speed', 'fp100_lead_x', 'fp100_rear_x', 'fp100_lead_z', 'fp100_rear_z', 'fp100_lead_res', 'fp100_rear_res', 'fp100_lead_ang', 'fp100_rear_ang'}
P3.Properties.RowNames(1:9) = {'pitch speed', 'fp100_lead_x', 'fp100_rear_x', 'fp100_lead_z', 'fp100_rear_z', 'fp100_lead_res', 'fp100_rear_res', 'fp100_lead_ang', 'fp100_rear_ang'}
%% MER Correlation
D = [pitch_speed, MER_lead_x, MER_rear_x, MER_lead_z, MER_rear_z, MER_lead_res, MER_rear_res, MER_lead_ang, MER_rear_ang];
[C4, P4] = corrcoef(D);
T4 = array2table(C4);
T4.Properties.VariableNames(1:9) = {'pitch speed', 'MER_lead_x', 'MER_rear_x', 'MER_lead_z', 'MER_rear_z', 'MER_lead_res', 'MER_rear_res', 'MER_lead_ang', 'MER_rear_ang'};
T4.Properties.RowNames(1:9) = {'pitch speed', 'MER_lead_x', 'MER_rear_x', 'MER_lead_z', 'MER_rear_z', 'MER_lead_res', 'MER_rear_res', 'MER_lead_ang', 'MER_rear_ang'}
P4 = array2table(P4);
P4.Properties.VariableNames(1:9) = {'pitch speed', 'MER_lead_x', 'MER_rear_x', 'MER_lead_z', 'MER_rear_z', 'MER_lead_res', 'MER_rear_res', 'MER_lead_ang', 'MER_rear_ang'}
P4.Properties.RowNames(1:9) = {'pitch speed', 'MER_lead_x', 'MER_rear_x', 'MER_lead_z', 'MER_rear_z', 'MER_lead_res', 'MER_rear_res', 'MER_lead_ang', 'MER_rear_ang'}
%% BR Correlation
E = [pitch_speed, BR_lead_x, BR_rear_x, BR_lead_z, BR_rear_z, BR_lead_res, BR_rear_res, BR_lead_ang, BR_rear_ang];
[C5, P5] = corrcoef(E);
T5 = array2table(C5);
T5.Properties.VariableNames(1:9) = {'pitch speed', 'BR_lead_x', 'BR_rear_x', 'BR_lead_z', 'BR_rear_z', 'BR_lead_res', 'BR_rear_res', 'BR_lead_ang', 'BR_rear_ang'};
T5.Properties.RowNames(1:9) = {'pitch speed', 'BR_lead_x', 'BR_rear_x', 'BR_lead_z', 'BR_rear_z', 'BR_lead_res', 'BR_rear_res', 'BR_lead_ang', 'BR_rear_ang'}
P5 = array2table(P5);
P5.Properties.VariableNames(1:9) = {'pitch speed', 'BR_lead_x', 'BR_rear_x', 'BR_lead_z', 'BR_rear_z', 'BR_lead_res', 'BR_rear_res', 'BR_lead_ang', 'BR_rear_ang'}
P5.Properties.RowNames(1:9) = {'pitch speed', 'BR_lead_x', 'BR_rear_x', 'BR_lead_z', 'BR_rear_z', 'BR_lead_res', 'BR_rear_res', 'BR_lead_ang', 'BR_rear_ang'}
%% MIR Correlation
F = [pitch_speed, MIR_lead_x, MIR_rear_x, MIR_lead_z, MIR_rear_z, MIR_lead_res, MIR_rear_res, MIR_lead_ang, MIR_rear_ang];
[C6, P6] = corrcoef(F);
T6 = array2table(C6);
T6.Properties.VariableNames(1:9) = {'pitch speed', 'MIR_lead_x', 'MIR_rear_x', 'MIR_lead_z', 'MIR_rear_z', 'MIR_lead_res', 'MIR_rear_res', 'MIR_lead_ang', 'MIR_rear_ang'};
T6.Properties.RowNames(1:9) = {'pitch speed', 'MIR_lead_x', 'MIR_rear_x', 'MIR_lead_z', 'MIR_rear_z', 'MIR_lead_res', 'MIR_rear_res', 'MIR_lead_ang', 'MIR_rear_ang'}
P6 = array2table(P6);
P6.Properties.VariableNames(1:9) = {'pitch speed', 'MIR_lead_x', 'MIR_rear_x', 'MIR_lead_z', 'MIR_rear_z', 'MIR_lead_res', 'MIR_rear_res', 'MIR_lead_ang', 'MIR_rear_ang'}
P6.Properties.RowNames(1:9) = {'pitch speed', 'MIR_lead_x', 'MIR_rear_x', 'MIR_lead_z', 'MIR_rear_z', 'MIR_lead_res', 'MIR_rear_res', 'MIR_lead_ang', 'MIR_rear_ang'}
%% Scatter
figure('Name', 'PKH Lead Resultant and Pitching Velocity', 'NumberTitle', 'off')
scatter(pkh_lead_res, pitch_speed, 'red', '.')
%% Scatter
figure('Name', 'PKH Rear Resultant and Pitching Velocity', 'NumberTitle', 'off')
scatter(pkh_rear_res, pitch_speed, 'blue', '.')
%% Scatter
figure('Name', 'FP10 Lead Resultant and Pitching Velocity', 'NumberTitle', 'off')
scatter(fp10_lead_res, pitch_speed, 'magenta', '.')
%% Scatter
figure('Name', 'FP10 Rear Resultant and Pitching Velocity', 'NumberTitle', 'off')
scatter(fp10_rear_res, pitch_speed, 'magenta', '.')
