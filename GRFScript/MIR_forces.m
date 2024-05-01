MIR_rear_force_x = data(:,14);
MIR_rear_force_y = data(:,15);
MIR_rear_force_z = data(:,16);
MIR_lead_force_x = data(:,17);
MIR_lead_force_y = data(:,18);
MIR_lead_force_z = data(:,19);
MIR_lead_forces = horzcat(MIR_lead_force_x, MIR_lead_force_y, MIR_lead_force_z);
MIR_rear_forces = horzcat(MIR_rear_force_x, MIR_rear_force_y, MIR_rear_force_z);
clear cfd MIR_rear_force_x MIR_rear_force_y MIR_rear_force_z MIR_lead_force_x MIR_lead_force_y MIR_lead_force_z