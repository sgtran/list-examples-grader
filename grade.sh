CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission
echo 'Finished cloning'

#cp student-submission/ListExamples.java ./

cd student-submission

if [[ -e ListExamples.java ]]
    then
    echo "ListExample File Found"
    else 
    echo "ListExample File not found"
fi

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar ListExamples.java