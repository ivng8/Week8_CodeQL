/**
 * @description Find all functions longer than 10 lines
 * @id javascript/longer-than-ten
 */
import javascript

predicate isLongFunction(FunctionLike func) {
    func.getNumLines() > 10
}

from FunctionLike func
where isLongFunction(func)
select func, "Function " + func.getName() + " has " + func.getNumLines() + " lines."
