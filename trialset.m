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
trials(i).type=typeS(i)
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





