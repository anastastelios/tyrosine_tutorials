%relate trial type and difficulty

Ignore=zeros(4,1);
No_Inter=ones(4,1);
Update=No_Inter+1;
type=[Ignore;No_Inter;Update]
typeS=Shuffle(type);

Setsize1=ones(4,1);
Setsize2=Setsize1+1;
Setsize3=Setsize2+1;
Setsize4=Setsize3+1;

level=[Setsize1;Setsize2;Setsize3;Setsize4]
levelS=Shuffle(level);

number=[1:12]';

trials=struct()

for i=1:12
    trials(i).number=number(i)
    trial_index = typeS(i)
    if (~(i--ypoloipo--/4))
        check_index = 0;
        while super_index < 3
            for j = 1:(i--ypoloipo--/4-1)
                if trial_index ~= trials(i-j)
                    check_index = check_index + 1;
                end
            end
    
            if check_index == j
                trials(i).type = trial_index;
                super_index = 5;
            else
                super_index = 1;
            end
        end
    end
                
end

set=randperm(4);

for i=1:12
if trials(i).type==0
    trials(i).setsize=datasample(set,1)
end

    if trials(i).type==1
        trials(i).setsize=datasample(set,1)
    end
    
        if trials(i).type==2
        trials(i).setsize=datasample(set,1)
        end
    
end





