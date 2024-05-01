fp100_rear_force_x = data(:,14);
fp100_rear_force_y = data(:,15);
fp100_rear_force_z = data(:,16);
fp100_lead_force_x = data(:,17);
fp100_lead_force_y = data(:,18);
fp100_lead_force_z = data(:,19);
fp100_lead_forces = horzcat(fp100_lead_force_x, fp100_lead_force_y, fp100_lead_force_z);
fp100_rear_forces = horzcat(fp100_rear_force_x, fp100_rear_force_y, fp100_rear_force_z);
clear cfd fp100_rear_force_x  fp100_rear_force_y fp100_rear_force_z  fp100_lead_force_x fp100_lead_force_y fp100_lead_force_z