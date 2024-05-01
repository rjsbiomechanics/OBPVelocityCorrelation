fp10_rear_force_x = data(:,14);
fp10_rear_force_y = data(:,15);
fp10_rear_force_z = data(:,16);
fp10_lead_force_x = data(:,17);
fp10_lead_force_y = data(:,18);
fp10_lead_force_z = data(:,19);
fp10_lead_forces = horzcat(fp10_lead_force_x, fp10_lead_force_y, fp10_lead_force_z);
fp10_rear_forces = horzcat(fp10_rear_force_x, fp10_rear_force_y, fp10_rear_force_z);
clear cfd fp10_rear_force_x fp10_rear_force_y fp10_rear_force_z fp10_lead_force_x fp10_lead_force_y fp10_lead_force_z