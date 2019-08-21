precedencegroup LogicalComparisonPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
}

precedencegroup LogicalImplicationPrecedence {
    associativity: left
    higherThan: LogicalComparisonPrecedence
}

precedencegroup LogicalDisjunctionPrecedence {
    associativity: left
    higherThan: LogicalImplicationPrecedence
}

precedencegroup LogicalConjunctionPrecedence {
    associativity: left
    higherThan: LogicalDisjunctionPrecedence
}


enum LogicalOperator : String {
    case negation                 = "¬" // U+00AC
    case conjunction              = "∧" // U+2227
    case negatedConjunction       = "⊼" // U+22BC
    case disjunction              = "∨" // U+2228
    case negatedDisjunction       = "⊽" // U+22BD
    case implication              = "→" // U+2192
    case converseImplication      = "←" // U+2190
    case bidirectionalImplication = "↔" // U+2194
    case exclusiveDisjunction     = "⊕" // U+2295
    case exclusiveDisjunctionAltA = "⊻" // U+22BB
    case exclusiveDisjunctionAltB = "⩒" // U+2A52
    case equivalence              = "≡" // U+2261
    case inequivalence            = "≢" // U+2262
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

