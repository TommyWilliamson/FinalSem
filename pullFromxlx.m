function output=pullFromxlx(filename,variables)
%% Loading Excel Table
xlx=readtable(filename);

% If only a single variable is requested...
if size(variables,1)==1
  index=find(strcmpi(xlx{1:end,1},variables));
  if isempty(index)
      disp(('Did not find: '+variables))
  end
  data=(xlx{index,2:end})';
  data=data(~isnan(data))';
  output=data;
else
% If multiple variables are requested...
    for i=1:size(variables,1)
        variableName=variables(i,:);
        index=find(strcmpi(xlx{1:end,1},variableName));
        if isempty(index)
        disp(['Did not find: ',variableName])
        end
        data=(xlx{index,2:end})';
        data=data(~isnan(data))';
        output{i}=data;
    end
end
end
