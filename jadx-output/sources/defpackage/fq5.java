package defpackage;

/* loaded from: classes.dex */
public abstract class fq5 {

    public enum a {
        LESS_THAN("<"),
        LESS_THAN_OR_EQUAL("<="),
        EQUAL("=="),
        NOT_EQUAL("!="),
        GREATER_THAN(">"),
        GREATER_THAN_OR_EQUAL(">="),
        ARRAY_CONTAINS("array_contains"),
        ARRAY_CONTAINS_ANY("array_contains_any"),
        IN("in"),
        NOT_IN("not_in");

        public final String e;

        a(String str) {
            this.e = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.e;
        }
    }

    public abstract String a();

    public abstract boolean b(yt5 yt5Var);
}
