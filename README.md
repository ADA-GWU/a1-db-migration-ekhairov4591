# a1-db-migration-ekhairov4591
a1-db-migration-ekhairov4591 created by GitHub Classroom


# Migration & Rollback Scripts for POM_DB

These scripts implement migration & rollback POM_DB for Production & Operations Mgmt.

## Installation

Downlaod the folder with Migration Scripts and run CMD in the downloaded folder.
 
## Order, Usage & Explanation

After dowloading and opening the folder you will see following files:
~~~~~~~~~~~~~~~~~~
1.migration_1.sql

2.migration_1f.sql

3.migration_2.sql

4.migration_2f.sql

5.DKS.sql

6.rollback_1.sql

7.rollback_2.sql
~~~~~~~~~~~~~~~~~~

## Explanation

#### Example DB --> POM_DB

#### (For more detailed explanation on what exactly scripts do open them with any text editor. Each step is commented and explained.)

rollback_1.sql & rollback_2.sql can be executed only if migration_1.sql & migration_2.sql were executed prior to them.

~~~~~~~~~~~~~~~~~~
1. migration_1.sql 
-is responsible for the first phase of migration in POM_DB.
It starts working with STUDENTS TABLE in POM_DB. 

2. migration_1f.sql 
-is a finalization of migration_1.sql script 
that cleans up after migration_1.sql and is supposed to be run if no errors were encountered during migration_1.sql or if no rollback_1.sql was executed.

3. migration_2.sql 
-is responsible for the second phase of migration in POM_DB.
It starts working with INTERESTS TABLE in POM_DB.

4. migration_2f.sql 
-is a finalization of migration_2.sql script
that cleans up after migration_2.sql and is supposed to be run if no erros were encountered during migration_2.sql or if no rollback_2.sql was executed.

5.(OPTIONAL) DKS.sql 
-is responsible for Key Set up between altered/newly-created tables. 
It should be executed only if both migration_1f.sql & migration_2f.sql were successful and no rollback scripts were executed.
~~~~~~~~~~~~~~~~~~

## Usage Example for Migration as a postgres superuser

### Open CMD in folder with scripts.

#### Example command in CMD:

```
psql -U postgres -d [DB_NAME] -f [FILENAME.sql]
Enter superuser password
```
### Actual Order & Steps

```
psql -U postgres -d [DB_NAME] -f migration_1.sql
Enter superuser password
```

#### If migration_1.sql is successful:

```
psql -U postgres -d [DB_NAME] -f migration_1f.sql
Enter superuser password
```

#### If migration_1f.sql is successful:

```
psql -U postgress -d [DB_NAME] -f migration_2.sql
Enter superuser password
```


#### If migration_2.sql is successful:

```
psql -U postgress -d [DB_NAME] -f migration_2f.sql
Enter superuser password
```


#### Now if all migration & migration finalization scripts were successful and no erros occured during their execution you can run DKS.sql 

```
psql -U postgress -d [DB_NAME] if DKS.sql
Enter superuser password
```


---------------------------------------------

## END
