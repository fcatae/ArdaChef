cd bin

##########################################
# Git

git clone https://github.com/DXBrazil/Arda.git --depth 1

##########################################
# Build
cd Arda\src

dotnet restore
dotnet publish Arda.Main -o output

##########################################
# tar cvzf / cp

tar cvzf Arda.Main.tar.gz ./output

mount -t cifs //<azurestorageaccount>.file.core.windows.net/<azureshare> ./azfile -o vers=3.0,username=<azurestorageaccount>,password=<azurestorageaccount_password>,dir_mode=0777,file_mode=0777

cp Arda.Main.tar.gz ./azfile

############################################
# download

Download:
https://<azurestorageaccount>.file.core.windows.net/<azureshare>/#{FILENAME}?st=2017-02-22T16%3A27%3A00Z&se=2019-02-23T16%3A27%3A00Z&sp=rl&sv=2015-04-05&sr=s&sig=u5wYYM4eEhGwfouBM4yCA%2BMbsVt6nwr9sefCMOWxrP8%3D


