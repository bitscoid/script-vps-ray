echo -e "[ WARNING ] All users will be deleted (Y/N)${NC}" read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
bash -c "$(wget -qO- s.id/20rns)"
fi
