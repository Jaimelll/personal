class AgreementsController < InheritedResources::Base

  #ver nulo
def ver_nulstr(vver)
  
    if vver  then
       vvar=vver.to_s
     else
       vvar=" "
     end

  return vvar
 end
#fin nulo

end

