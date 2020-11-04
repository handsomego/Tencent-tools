#! /bin/bash
function Comdig(){

a=$(( m - 1 ))
	Rount=($*)
	for i in $( seq 1 ${#Rount[@]} ) ;do
	a=$i
if [ ${Rount[a]} -lt ${Rount[m]} ];then
	b=${Rount[a]}
	Rount[a]=${Rount[m]}
	Rount[m]=$b
fi
i=$(( i + 1 ))
done
}
n=2
p=2
Quan=(0)
Directory=(0)
Other=(0)

for file in $1/*;do

Directory[n]=$file


n=$(( n + 1))


#break
done
#echo ${#Quan[@]}

for j in "${Directory[@]}";do
echo $j
done



p=0
while [ $p -lt ${#Directory[@]} ];do
 for file in  ${Directory[p]}/*;do


p=$(( p + 1 ))
while [  ! -d $file ];do
n=2
s=$2
l=$3

while [ $s -lt $l ];do
	Other[n]="$s.ts"
	#echo ${Other[n]}
	s=$(( s + 1 ))
	n=$(( n  + 1 ))
done
	
    
break
done


done
done
for i in "${Other[@]}";do
echo $i
done
#合并文件  
NewRount=(0)
i=0
n=0
p=2
m=2
for i in $( seq 1 ${#Directory[@]} );do
	NewRount[n]=$( echo ${Directory[p]##*_} |bc)
p=$(( p + 1 ))
n=$(( n + 1 ))
done
 
Comdig "${NewRount[*]}"  
for l in ${NewRount[@]};do
	echo $l
done
Newfile=0\.bak 
#for New in ${Directory[n]};do
#m=$(( n -1 ))
#directory=${Directory[m]##/}
#oldfile=${New##/}
#newfile=${oldfile##/}
#if [ $directory = $newfile ];then
#Quan[n]=$((n + 1));

#fi
#done
p=2
i=0
m=2
l=0
	#cd ~/$name > /dev/null 2>&1
while [ $l -le   ${#Directory[@]}  ];do

cd ~/${Directory[m]} 
      m=$(( m + 1 ))
while [ $i -le ${#Other[@]} ] 

    do 
      Subfilename=${Other[p]} 

      
      if [ -e $Subfilename ];then 

         echo "$Subfilename done!" 

         cat $Subfilename >> $Newfile 

      p=$(( p + 1 ))
else 
	break
      fi 
         i=`expr $i + 1` 
    done 

     l=$(( l + 1 ))
done
echo "Subfiles be merged into $Newfile" 

echo "Success!"  

