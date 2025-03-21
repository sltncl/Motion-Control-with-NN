figure(1)
hold on
plot(q.Time, q.Data(:,1), 'r-', 'LineWidth', 1.5) 
plot(q.Time, q.Data(:,2), 'g-', 'LineWidth', 1.5) 
plot(q.Time, q.Data(:,3), 'b-', 'LineWidth', 1.5) 
plot(qd.Time, qd.Data(:,1), 'r--', 'LineWidth', 1.5) 
plot(qd.Time, qd.Data(:,2), 'g--', 'LineWidth', 1.5) 
plot(qd.Time, qd.Data(:,3), 'b--', 'LineWidth', 1.5) 
hold off
legend({'$q_1$', '$q_2$', '$q_3$', '$q_{d1}$', '$q_{d2}$', '$q_{d3}$'}, ...
       'Interpreter', 'latex', 'FontSize', 12, 'Location', 'best')
xlabel('Time (s)', 'FontSize', 12)
ylabel('Angular position (rad)', 'FontSize', 12)
title('Comparison of q and q_d over time', 'FontSize', 14)
grid on

figure(2)
hold on
plot(q.Time, qd.Data(:,1)-q.Data(:,1), 'r-', 'LineWidth', 1.5) 
plot(q.Time, qd.Data(:,2)-q.Data(:,2), 'g-', 'LineWidth', 1.5) 
plot(q.Time, qd.Data(:,3)-q.Data(:,3), 'b-', 'LineWidth', 1.5) 
hold off
legend({'$e_1$', '$e_2$', '$e_3$'}, 'Interpreter', 'latex', 'FontSize', 12, 'Location', 'best')
xlabel('Time (s)', 'FontSize', 12)
ylabel('Angular position error (rad)', 'FontSize', 12)
title('Tracking error over time', 'FontSize', 14)
grid on

figure(3)

subplot(3,1,1)
hold on
plot(tauPD.Time, tauPD.Data(:,1), 'r-', 'LineWidth', 1.5) 
plot(tauPD.Time, tauPD.Data(:,2), 'g-', 'LineWidth', 1.5) 
plot(tauPD.Time, tauPD.Data(:,3), 'b-', 'LineWidth', 1.5)
hold off
legend({'$PD_1$', '$PD_2$', '$PD_3$'}, 'Interpreter', 'latex', ...
       'FontSize', 12, 'Location', 'best')
ylabel('Torque (Nm)', 'FontSize', 12)
title('PD Control Torque', 'FontSize', 14)
grid on

subplot(3,1,2)
hold on
plot(tauNN.Time, tauNN.Data(1,:), 'r-', 'LineWidth', 1.5) 
plot(tauNN.Time, tauNN.Data(2,:), 'g-', 'LineWidth', 1.5) 
plot(tauNN.Time, tauNN.Data(3,:), 'b-', 'LineWidth', 1.5)
hold off
legend({'$NN_1$', '$NN_2$', '$NN_3$'}, 'Interpreter', 'latex', ...
       'FontSize', 12, 'Location', 'best')
ylabel('Torque (Nm)', 'FontSize', 12)
title('Neural Network Contribution', 'FontSize', 14)
grid on

subplot(3,1,3)
hold on
plot(tau.Time, tau.Data(1,:), 'r-', 'LineWidth', 1.5) 
plot(tau.Time, tau.Data(2,:), 'g-', 'LineWidth', 1.5) 
plot(tau.Time, tau.Data(3,:), 'b-', 'LineWidth', 1.5)
hold off
legend({'$\tau_1$', '$\tau_2$', '$\tau_3$'}, 'Interpreter', 'latex', ...
       'FontSize', 12, 'Location', 'best')
xlabel('Time (s)', 'FontSize', 12)
ylabel('Torque (Nm)', 'FontSize', 12)
title('Total Computed Torque', 'FontSize', 14)
grid on

figure(4)
hold on
plot(taud.Time, taud.Data(1,:), 'r-', 'LineWidth', 1.5) 
plot(taud.Time, taud.Data(2,:), 'g-', 'LineWidth', 1.5) 
plot(taud.Time, taud.Data(3,:), 'b-', 'LineWidth', 1.5)
hold off
legend({'$\tau_{d_{1}}$', '$\tau_{d_{2}}$', '$\tau_{d_{3}}$'}, 'Interpreter', 'latex', ...
       'FontSize', 12, 'Location', 'best')
xlabel('Time (s)', 'FontSize', 12)
ylabel('Torque (Nm)', 'FontSize', 12)
title('Disturbances', 'FontSize', 14)
grid on