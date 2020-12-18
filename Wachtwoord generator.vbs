'Author: 	Mark
'Date:		01-02-2016
'Versie:	1.0.0


strComplex = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#?"
strLength = 8
strTitle = "Talpa"
 
inputBox "Uw automatisch gegenereerde wachtwoord is:", strTitle, RandomizePassword(strLength)
 
Function Generate(RandomNumber)
 Randomize
 Generate = INT(RND()*RandomNumber)+1
End Function
 
Function RandomizePassword(strLength)
 RandomizePassword = ""
 RandomNumber = Len(strComplex)
 
 For x = 1 To strLength
 strNum = Generate(RandomNumber)
 strNext = Mid(strComplex,strNum,1)
 RandomizePassword = RandomizePassword & strNext
 Next
End Function