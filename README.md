<h2>MyLinkedList</h2>
Ce package contient les classes `MyLinkedList` et `MyNode`, 
il représente la construction d'une liste chaînée contenant des noeuds (node).

**Méthodes:**
- **MyLinkedList**
  - *add:* , ajoute un nouveau noeud à la fin de la liste.
  - *first* , retourne le premier noeud de la liste.
  - *first:* , modifie le premier noeud de la liste (/!\ vas casser la chaîne entière si utilisé sur une liste de plusieurs éléments).
  - *initialize* , initialise une liste chaînée vide.
  - *isEmpty* , retourne vrai si la liste est vide, faux sinon.
  - *size* , retourne la taille de la liste.
- **MyNode**
  - *value* , retourne la valeur du noeud.
  - *value:* , modifie la valeur du noeud.
  - *next* , retourne le noeud suivant.
  - *next:* , modifie le noeud suivant.

<h2>MyJavaDocGen</h2>
Ce package contient la classe `MyJavaDocGen` qui permet de créer un html de la 
documentation d'une classe donnée et d'ensuite exporter ce fichier sous
le nom de `doc.html`.

**Méthodes:**
- **MyJavaDocGen**
  - *class:* , crée l'html de la documentation de la classe en paramètre. 
  - *doc:* , crée un fichier `doc.html` dans lequel on retrouve la documentation
    de la classe passée en paramètre.

<h3>Comment créer doc.html?</h3>
Afin de créer `doc.html`, il suffit d'exécute le code suivant dans le PlayGround:

  ```
  MyJavaDocGen new doc: MyLinkedList.
  ```

  Le fichier est alors trouvable dans `Pharo/images/Phara_exercices/doc.html`.
