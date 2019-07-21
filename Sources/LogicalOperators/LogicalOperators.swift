precedencegroup LogicalComparisonPrecedence {
    higherThan: AssignmentPrecedence
}

precedencegroup LogicalImplicationPrecedence {
    higherThan: LogicalComparisonPrecedence
}


enum LogicalOperator : String {
    case negation                 = "¬"
    case conjunction              = "∧"
    case negatedConjunction       = "⊼"
    case disjunction              = "∨"
    case negatedDisjunction       = "⊽"
    case implication              = "→"
    case converseImplication      = "←"
    case bidrectionalImplication  = "↔"
    case exclusiveDisjunction     = "⊕"
    case exclusiveDisjunctionAltA = "⊻"
    case exclusiveDisjunctionAltB = "⩒"
    case equivalence              = "≡"
    case inequivalence            = "≢"
}

prefix operator ¬                               // Negation
infix operator ∧ : LogicalConjunctionPrecedence // Conjunction
infix operator ⊼ : LogicalConjunctionPrecedence // Negated conjunction
infix operator ∨ : LogicalDisjunctionPrecedence // Disjunction
infix operator ⊽ : LogicalDisjunctionPrecedence // Negated disjunction
infix operator → : LogicalImplicationPrecedence // Implication
infix operator ← : LogicalImplicationPrecedence // Converse implication
infix operator ↔ : LogicalComparisonPrecedence  // Bidirectional implication (Precedence same as comparison because same as 'Equivalence')
infix operator ⊕ : LogicalComparisonPrecedence  // Exclusive disjunction
infix operator ⊻ : LogicalComparisonPrecedence  // Exclusive disjunction
infix operator ⩒ : LogicalComparisonPrecedence  // Exclusive disjunction
infix operator ≡ : LogicalComparisonPrecedence  // Equivalence
infix operator ≢ : LogicalComparisonPrecedence  // Not equivalent

extension Bool {
    // Negation
    public static prefix func ¬ (operand:Bool) -> Bool {
        return !operand
    }

    // Conjunction
    public static func ∧ (left:Bool, right:Bool) -> Bool {
        return left && right
    }

    // Negated conjunction
    public static func ⊼ (left:Bool, right:Bool) -> Bool {
        return !(left && right)
    }

    // Disjunction
    public static func ∨ (left:Bool, right:Bool) -> Bool {
        return left || right
    }

    // Negated disjunction
    public static func ⊽ (left:Bool, right:Bool) -> Bool {
        return !(left || right)
    }

    // Implication
    public static func → (left:Bool, right:Bool) -> Bool {
        return !left || right
    }

    // Converse implication
    public static func ← (left:Bool, right:Bool) -> Bool {
        return left || !right
    }

    // Bidirectional implication
    public static func ↔ (left:Bool, right:Bool) -> Bool {
        return left == right
    }

    // Exclusive disjunction
    public static func ⊕ (left:Bool, right:Bool) -> Bool {
        return left != right
    }

    // Exclusive disjunction
    public static func ⊻ (left:Bool, right:Bool) -> Bool {
        return left != right
    }

    // Exclusive disjunction
    public static func ⩒ (left:Bool, right:Bool) -> Bool {
        return left != right
    }

    public static func ≡ (left:Bool, right:Bool) -> Bool {
        return left == right
    }

    public static func ≢ (left:Bool, right:Bool) -> Bool {
        return left != right
    }


}

