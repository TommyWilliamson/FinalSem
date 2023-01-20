function output=pullFromxlx(filename,variables)

xlx=readtable(filename)

for i=1:length(variables)
  variableName=variables(i)
  index=find(strcmpi(xlx.Properties.VariableNames,variableName));
  output(i)=xlx{index,2:end}
end
end
