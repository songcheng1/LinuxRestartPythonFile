internetNames="data1 data2 data3"
function pythonName(){
    nohup python3 /path/main.py $1 10  >> main.log &    
}
for internetName in ${internetNames}
do
    echo "InternetName ${internetName} start"
    pythonName ${internetName}
done
