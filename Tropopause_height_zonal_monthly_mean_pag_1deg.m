RH_data_1991_2020_climatology_ECMWF



lat =[ -89.5    -88.5    -87.5    -86.5    -85.5    -84.5    -83.5    -82.5    -81.5    -80.5    -79.5    -78.5    -77.5    -76.5    -75.5    -74.5    -73.5    -72.5    -71.5    -70.5    -69.5    -68.5    -67.5    -66.5    -65.5    -64.5    -63.5    -62.5    -61.5    -60.5    -59.5    -58.5    -57.5    -56.5    -55.5    -54.5    -53.5    -52.5    -51.5    -50.5    -49.5    -48.5    -47.5    -46.5    -45.5    -44.5    -43.5    -42.5    -41.5    -40.5    -39.5    -38.5    -37.5    -36.5    -35.5    -34.5    -33.5    -32.5    -31.5    -30.5    -29.5    -28.5    -27.5    -26.5    -25.5    -24.5    -23.5    -22.5    -21.5    -20.5    -19.5    -18.5    -17.5    -16.5    -15.5    -14.5    -13.5    -12.5    -11.5    -10.5    -9.5    -8.5    -7.5    -6.5    -5.5    -4.5    -3.5    -2.5    -1.5    -0.5    0.5    1.5    2.5    3.5    4.5    5.5    6.5    7.5    8.5    9.5    10.5    11.5    12.5    13.5    14.5    15.5    16.5    17.5    18.5    19.5    20.5    21.5    22.5    23.5    24.5    25.5    26.5    27.5    28.5    29.5    30.5    31.5    32.5    33.5    34.5    35.5    36.5    37.5    38.5    39.5    40.5    41.5    42.5    43.5    44.5    45.5    46.5    47.5    48.5    49.5    50.5    51.5    52.5    53.5    54.5    55.5    56.5    57.5    58.5    59.5    60.5    61.5    62.5    63.5    64.5    65.5    66.5    67.5    68.5    69.5    70.5    71.5    72.5    73.5    74.5    75.5    76.5    77.5    78.5    79.5    80.5    81.5    82.5    83.5    84.5    85.5    86.5    87.5    88.5    89.5]; % linspace(-87.5, 87.5, 36);
DayOfYear = linspace(1, 365, 365);
PVU = 3.0;

[~, size_lat] = size(lat)
Tropopause_Height_3PVU = zeros([365 size_lat]);
%Tropopause_Height_3PVU_sig = zeros([365 size(lat)]);


for i=1:size_lat
    for j = 1:365
        Tropopause_Height_3PVU(j,i) = bth_model(lat(i), DayOfYear(j), PVU);
        %Tropopause_Height_3PVU_sig(j,i) = sth_model(lat(i), DayOfYear(j), PVU);
    end
end

Trop_Height_Zonal_Jan_mean = mean(Tropopause_Height_3PVU(1:31,:));
Trop_Height_Zonal_Feb_mean = mean(Tropopause_Height_3PVU(32:59,:));
Trop_Height_Zonal_Mar_mean = mean(Tropopause_Height_3PVU(60:90,:));
Trop_Height_Zonal_Apr_mean = mean(Tropopause_Height_3PVU(91:120,:));
Trop_Height_Zonal_May_mean = mean(Tropopause_Height_3PVU(121:151,:));
Trop_Height_Zonal_Jun_mean = mean(Tropopause_Height_3PVU(152:181,:));
Trop_Height_Zonal_Jul_mean = mean(Tropopause_Height_3PVU(182:212,:));
Trop_Height_Zonal_Aug_mean = mean(Tropopause_Height_3PVU(213:243,:));
Trop_Height_Zonal_Sep_mean = mean(Tropopause_Height_3PVU(244:273,:));
Trop_Height_Zonal_Oct_mean = mean(Tropopause_Height_3PVU(274:304,:));
Trop_Height_Zonal_Nov_mean = mean(Tropopause_Height_3PVU(305:334,:));
Trop_Height_Zonal_Dec_mean = mean(Tropopause_Height_3PVU(335:365,:));


Trop_Height_Monthly_means(:,1) = Trop_Height_Zonal_Jan_mean;
Trop_Height_Monthly_means(:,2) = Trop_Height_Zonal_Feb_mean;
Trop_Height_Monthly_means(:,3) = Trop_Height_Zonal_Mar_mean;
Trop_Height_Monthly_means(:,4) = Trop_Height_Zonal_Apr_mean;
Trop_Height_Monthly_means(:,5) = Trop_Height_Zonal_May_mean;
Trop_Height_Monthly_means(:,6) = Trop_Height_Zonal_Jun_mean;
Trop_Height_Monthly_means(:,7) = Trop_Height_Zonal_Jul_mean;
Trop_Height_Monthly_means(:,8) = Trop_Height_Zonal_Aug_mean;
Trop_Height_Monthly_means(:,9) = Trop_Height_Zonal_Sep_mean;
Trop_Height_Monthly_means(:,10) = Trop_Height_Zonal_Oct_mean;
Trop_Height_Monthly_means(:,11) = Trop_Height_Zonal_Nov_mean;
Trop_Height_Monthly_means(:,12) = Trop_Height_Zonal_Dec_mean;

Trop_Height_Zonal_annual_mean = mean(Tropopause_Height_3PVU);
%Trop_Height_Zonal_annual_mean_sig = mean(Tropopause_Height_3PVU_sig);

