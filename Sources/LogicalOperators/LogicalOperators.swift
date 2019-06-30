precedencegroup LogicalComparisonPrecedence {
    higherThan: AssignmentPrecedence
}

precedencegroup LogicalImplicationPrecedence {
    higherThan: LogicalComparisonPrecedence
}

prefix operator ¬                               // NEGATION
infix operator ∧ : LogicalConjunctionPrecedence // CONJUNCTION
infix operator ∨ : LogicalDisjunctionPrecedence // DISJUNCTION
infix operator → : LogicalImplicationPrecedence // IMPLICATION
infix operator ⊕ : LogicalComparisonPrecedence  // EXCLUSIVE DISJUNCTION
infix operator ≡ : LogicalComparisonPrecedence  // EQUIVALENCE

extension Bool {
    public static prefix func ¬ (operand:Bool) -> Bool {
        return !operand
    }

    public static func ∧ (left:Bool, right:Bool) -> Bool {
        return left && right
    }

    public static func ∨ (left:Bool, right:Bool) -> Bool {
        return left || right
    }

    public static func → (left:Bool, right:Bool) -> Bool {
        return !left || right
    }

    public static func ≡ (left:Bool, right:Bool) -> Bool {
        return left == right
    }

    public static func ⊕ (left:Bool, right:Bool) -> Bool {
        return !(left == right)
    }

}

