import luigi

from tasks import Task1, Task2, Task3, Task4

class Pipeline1(luigi.WrapperTask):
    def requires(self):
        yield Task1()
        try:
            yield Task2()
        except ValueError:
            raise ValueError
        yield Task3()

class Pipeline2(luigi.WrapperTask):
    def requires(self):
        yield Task4()

class Pipeline3(luigi.Task):
    def requires():
        None
    def output():
        return luigi.LocalTarget('stuff/task5.csv')
    def run():
        raise ValueError
        
        
if __name__=='__main__':
    # luigi.build(Pipeline1, Pipeline2)
    pass
