function W = find_W(U,H,V, R, I,d)
%[1]An Iteratively Weighted MMSE Approach to Distributed Sum-Utility Maximization for a MIMO Interfering Broadcast Channel
    W = zeros(d,d,I);
    for i=1:I
            W(:,:,i) = inv(eye(d)-U(:,:,i)'*H(:,:,i)*V(:,:,i)); 
    end
end