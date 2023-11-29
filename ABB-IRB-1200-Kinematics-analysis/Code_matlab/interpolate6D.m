function intermediatePoints = interpolate6D(A, B, numSteps)
    % A: Điểm xuất phát (A là một vector 3D)
    % B: Điểm đích (B là một vector 3D)
    % numSteps: Số bước trung gian
    
    % Kiểm tra xem A và B có cùng kích thước hay không
    if numel(A) ~= 6 || numel(B) ~= 6
        error('A và B phải là vector 3D.');
    end

    % Sử dụng hàm linspace để tạo các điểm trung gian
    t1 = linspace(A(1), B(1), numSteps);
    t2 = linspace(A(2), B(2), numSteps);
    t3 = linspace(A(3), B(3), numSteps);
    t4 = linspace(A(4), B(4), numSteps);
    t5 = linspace(A(5), B(5), numSteps);
    t6 = linspace(A(6), B(6), numSteps);

    % Kết hợp các điểm trung gian thành ma trận 3D
    intermediatePoints = [t1; t2; t3; t4; t5; t6]';

    % Trả về ma trận chứa các điểm trung gian
end
