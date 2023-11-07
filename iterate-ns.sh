!/bin/bash  

ns=$(kubectl get ns -o jsonpath='{range .items[*]}{.metadata.name}');
ns=( $( echo $ns ) )

for i in ${ns[@]}
do
  echo "Working on $i..."
  # Array not working
done
