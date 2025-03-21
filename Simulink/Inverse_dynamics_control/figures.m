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
