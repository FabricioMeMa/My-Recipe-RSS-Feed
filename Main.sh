HOJE="$(date +%a_%d-%b-%Y)"
PS="$(cat ~/Documents/News/Script/ps.txt)"
EM="$(cat ~/Documents/News/Script/em.txt)"
EK="$(cat ~/Documents/News/Script/ek.txt)"
EKL="$(cat ~/Documents/News/Script/ekl.txt)"

ebook-convert ~/Documents/News/Script/Git/Minhas\ Notícias.recipe ~/Documents/News/Jornal/Minhas\ Noticias-$HOJE.mobi --output-profile kindle
#ebook-convert ~/Documents/News/Jornal/Minhas\ Notícias-$HOJE.mobi ~/Área\ de\ trabalho/Minhas\ Notícias-$HOJE.epub
#notify-send  -t 10000 -i ~/Documentos/News/Script/jornal.png -a 🗞\ Minhas\ Notícias 'Notícias baixadas'
#cp ~/Documents/News/Minhas\ Notícias-$HOJE.mobi ~/Biblioteca\ do\ calibre/News/Minhas\ Notícias-$HOJE.epub
swaks --to $EK -s smtp.gmail.com:587 -tls -au $EM -ap $PS  --header "Subject: " --attach  ~/Documents/News/Jornal/Minhas\ Noticias-$HOJE.mobi
#echo "Minhas notícias de $HOJE" | mailx -r "FabMeMak1ndl3@kindle.com" -a ~/Documents/News/Minhas\ Notícias-$HOJE.epub -s "Notícias $HOJE" -S smtp="smtp.gmail.com:587" -S smtp-use-starttls -S smtp-auth=login -S smtp-auth-user="email@email.com" -S smtp-auth-password="password" -S ssl-verify=ignore sendto@email.com
#notify-send  -t 10000 -i ~/Documentos/News/Script/jornal.png -a 🗞\ Minhas\ Notícias 'Notícias enviadas para o seu Kindle'
ebook-convert ~/Documents/News/Script/Git/NoticiasLe.recipe ~/Documents/News/Jornal/Leandro/Noticias-$HOJE.mobi --output-profile kindle
swaks --to $EKL -s smtp.gmail.com:587 -tls -au $EM -ap $PS  --header "Subject: " --attach  ~/Documents/News/Jornal/Leandro/Noticias-$HOJE.mobi


#Linha de comando Fish
#set HOJE (date +%a_%d-%b-%Y) && ebook-convert ~/Documentos/News/Script/Minhas\ Notícias.recipe ~/Documentos/News/Minhas\ Notícias-$HOJE.epub && echo "Minhas notícias de $HOJE" | mailx -v -r "FabMeMak1ndl3@kindle.com" -a ~/Documentos/News/🗞\ Minhas\ Notícias-$HOJE.mobi -s "Notícias $HOJE" -S smtp="smtp.gmail.com:587" -S smtp-use-starttls -S smtp-auth=login -S smtp-auth-user="fabriciomesalira@gmail.com" -S smtp-auth-password="mdcetcsagjvlmzee" -S ssl-verify=ignore FabMeMak1ndl3@kindle.com 


#set HOJE (date +%a_%d-%b-%Y) && ebook-convert ~/Documentos/News/🗞\ Minhas\ Notícias-$HOJE.epub ~/Documentos/News/🗞\ Minhas\ Notícias-$HOJE.docx
#h  ~/Documents/News/Minhas\ Notícias-sáb_23-mai-2020.mobi

#ebook-convert ~/Documents/News/Script/Minhas\ Notícias.recipe ~/Documents/News/Minhas.mobi --output-profile kindle --test --debug-pipeline debug
