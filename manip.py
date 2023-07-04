import os
import subprocess
'''
dossier = "/home/vboxuser/tp/shell_script"
if os.path.exists(dossier):
    print("le dossier exist")

    contenu = os.listdir("/home/vboxuser/tp/shell_script")
    dossiers = [element for element in contenu if os.path.isdir(os.path.join(dossier, element))]
    for dossier in dossiers:
        print(dossier)
        os.system(f"tree {dossier}")
        '''

fichier = "/home/vboxuser/tp/shell_script/text.txt"
dossier = "/home/vboxuser/tp/shell_script/"
script_shell1 = "/home/vboxuser/tp/shell_script/creation_script.sh"
script_shell2 = "/home/vboxuser/tp/shell_script/reorganization_script.sh"
repertoire_travail = "/home/vboxuser/tp/shell_script/"
parametre1 = "kaat"
parametre2 = "sudo"
parametre3 = "4"

with open(fichier, 'r') as f:
    lignes = f.readlines()

donnees = []
for ligne in lignes:
    ligne = ligne.rstrip('\n')
    elements = ligne.split(',')
    #donnees.extend(elements)
    #print(elements[0], elements[1], elements[2])
    print("le fichier exist")
    subprocess.run([script_shell1, elements[0], elements[1], elements[2]], cwd=repertoire_travail)
    subprocess.run([script_shell2], cwd=repertoire_travail)

os.system(f"tree {dossier}")
