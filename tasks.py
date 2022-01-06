import luigi
from luigi.contrib.s3 import S3Target, S3Client
import pandas as pd

class Task1(luigi.Task):
    def requires(self):
        return None

    def output(self):
        return luigi.LocalTarget('stuff/task1.txt')

    def run(self):
        print('task 1 complete...')
        t = pd.DataFrame()
        with self.output().open('w') as outtie:
            t.to_csv(outtie, sep=' ', header=True, index=None)

class Task2(luigi.Task):
    def requires(self):
        return None

    def output(self):
        return luigi.LocalTarget('stuff/task2.txt')

    def run(self):
        print('task 2 complete...')
        t = pd.DataFrame()
        with self.output().open('w') as outtie:
            t.to_csv(outtie, sep=' ', header=True, index=None)

class Task3(luigi.Task):
    def requires(self):
        return None

    def output(self):
        return luigi.LocalTarget('stuff/task3.txt')

    def run(self):
        print('task 3 complete...')
        t = pd.DataFrame()
        with self.output().open('w') as outtie:
            t.to_csv(outtie, sep=' ', header=True, index=None)

class Task4(luigi.Task):
    def requires(self):
        return None

    def output(self):
        return luigi.LocalTarget('stuff/task4.txt')

    def run(self):
        print('task 4 complete...')
        t = pd.DataFrame()
        with self.output().open('w') as outtie:
            t.to_csv(outtie, sep=' ', header=True, index=None)
