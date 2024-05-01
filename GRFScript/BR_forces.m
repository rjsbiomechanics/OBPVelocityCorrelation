BR_rear_force_x = data(:,14);
BR_rear_force_y = data(:,15);
BR_rear_force_z = data(:,16);
BR_lead_force_x = data(:,17);
BR_lead_force_y = data(:,18);
BR_lead_force_z = data(:,19);
BR_lead_forces = horzcat(BR_lead_force_x, BR_lead_force_z, BR_lead_force_z);
BR_rear_forces = horzcat(BR_rear_force_x, BR_rear_force_y, BR_rear_force_z); 
clear cfd BR_rear_force_x BR_rear_force_y BR_rear_force_z BR_lead_force_x BR_lead_force_y BR_lead_force_z