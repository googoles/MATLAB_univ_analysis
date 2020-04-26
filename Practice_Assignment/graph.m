ref_p = 0 : 200 : 2000;
measured_p = ref_p*(0.101972);
mmh2o = 0 : 25 : 250;
voltage1 = 0.0012*ref_p + 2.4413;
test_p = mmh2o*(9.80665);
voltage2 = 0.0012*test_p + 2.4413;
plot(voltage2,mmh2o,'o')
hold on
plot(voltage1,measured_p)
grid on
title('No.1 Manometer')
xlabel('Voltage(V)')
ylabel('mmH2O')
yticks([0 25 50 75 100 125 150 175 200 225 250])
a = (voltage2)';
disp(a)