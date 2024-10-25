/**
 * @description Find all functions longer than 10 lines
 * @id javascript/longer-than-ten
 */
import javascript

predicate isLongFunction(Function func) {
    func.getNumLines() > 10
}

from Function func
where isLongFunction(func)
select func, "Function " + func.getName() + " has " + func.getNumLines() + " lines."
