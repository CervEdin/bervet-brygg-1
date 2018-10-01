function waterPipesLU = waterPipesLU(namein)

load(namein);

[L, U, P] = lu(A);

if exist("nodes") == 0
    nodes = sources;
end

b = zeros(size(A, 1), 1);

loop = '';

while isempty(loop)
    for source = 1:size(nodes, 1)
        prompt = sprintf('Input preasure for node %i : ', source);
        b(nodes(source)) = input(prompt);
    end
    d = L\(P*b);
    x = U\d;
    meanPreassure = sum(x)/size(x, 1);
    fprintf('Average preassure is: \n%f\n', meanPreassure);
    loop = input('Press return to enter new values, any other key to abort', 's');
end

end