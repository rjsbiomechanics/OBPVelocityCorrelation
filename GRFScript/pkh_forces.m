pkh_rear_force_x = data(:,14);
pkh_rear_force_y = data(:,15);
pkh_rear_force_z = data(:,16);
pkh_lead_force_x = data(:,17);
pkh_lead_force_y = data(:,18);
pkh_lead_force_z = data(:,19);
pkh_rear_forces = horzcat(pkh_rear_force_x, pkh_rear_force_y, pkh_rear_force_z);
pkh_lead_forces = horzcat(pkh_lead_force_x, pkh_lead_force_y, pkh_lead_force_z);
clear cfd pkh_rear_force_x pkh_rear_force_y pkh_rear_force_z pkh_lead_force_x pkh_lead_force_y pkh_lead_force_z