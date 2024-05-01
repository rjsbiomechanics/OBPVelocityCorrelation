MER_rear_force_x = data(:,14);
MER_rear_force_y = data(:,15);
MER_rear_force_z = data(:,16);
MER_lead_force_x = data(:,17);
MER_lead_force_y = data(:,18);
MER_lead_force_z = data(:,19);
MER_lead_forces = horzcat(MER_lead_force_x, MER_lead_force_y, MER_lead_force_z);
MER_rear_forces = horzcat(MER_rear_force_x, MER_rear_force_y, MER_rear_force_z);
clear cfd MER_rear_force_x MER_rear_force_y MER_rear_force_z MER_lead_force_x MER_lead_force_y MER_lead_force_z