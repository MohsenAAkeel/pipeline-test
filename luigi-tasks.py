import luigi

from tasks import Task1, Task2, Task3, Task4

class Pipeline1(luigi.WrapperTask):
    def requires(self):
        yield Task1()
        yield Task2()
        yield Task3()

class Pipeline2(luigi.WrapperTask):
    def requires(self):
        yield Task4()


if __name__=='__main__':
    # luigi.build(Pipeline1, Pipeline2)
