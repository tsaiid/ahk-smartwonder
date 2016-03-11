/* varExist: Check if a var exists
 * ref: https://autohotkey.com/board/topic/41035-can-you-check-if-a-variable-exists/
 * 0 indicates that the variable does not exist
 * 1 indicates that the variable does exist and contains data
 * 2 indicates that the variable does exist and is empty
 */

varExist(ByRef v) { ; Requires 1.0.46+
   return &v = &n ? 0 : v = "" ? 2 : 1
}