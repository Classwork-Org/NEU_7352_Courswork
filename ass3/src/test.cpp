// accessing mapped values
#include <iostream>
#include <map>
#include <string>

int main ()
{
  std::map<char,int> mymap;

  mymap['a']=1;
  mymap['a'] += 1;

  std::cout << "mymap now contains " << mymap['a'] << std::endl;

  return 0;
}