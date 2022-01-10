import luigi
from luigi.contrib.s3 import S3Target, S3Client
import pandas as pd
import sys

class Task1(luigi.Task):
    def requires(self):
        return None

    def output(self):
        return luigi.LocalTarget('stuff/task1.csv')

    def run(self):
        print('task 1 complete...')
        print()
        print()
        print()
        print()
        t = pd.DataFrame()
        with self.output().open('w') as outtie:
            outtie.write('complete')

class Task2(luigi.Task):
    def requires(self):
        return None

    def output(self):
        return luigi.LocalTarget('stuff/task2.csv')

    def run(self):
        assert(True==False)
        print('task 2 complete...')
        t = pd.DataFrame()
        print()
        print()
        print()
        print()
        with self.output().open('w') as outtie:
            outtie.write('complete')

class Task3(luigi.Task):
    def requires(self):
        return None

    def output(self):
        return luigi.LocalTarget('stuff/task3.csv')

    def run(self):
        print('task 3 complete...')
        t = pd.DataFrame()
        print()
        print()
        print()
        print()
        with self.output().open('w') as outtie:
            outtie.write('complete')

class Task4(luigi.Task):
    def requires(self):
        return None

    def output(self):
        return luigi.LocalTarget('stuff/task4.csv')

    def run(self):
        print('task 4 complete...')
        print()
        print()
        print()
        print()
        t = pd.DataFrame()
        with self.output().open('w') as outtie:
            outtie.write('complete')
