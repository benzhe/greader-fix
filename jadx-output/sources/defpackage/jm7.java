package defpackage;

import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class jm7<R> implements hm7<R>, Serializable {
    private final int arity;

    public jm7(int i) {
        this.arity = i;
    }

    @Override // defpackage.hm7
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        Objects.requireNonNull(sm7.a);
        String string = getClass().getGenericInterfaces()[0].toString();
        if (string.startsWith("kotlin.jvm.functions.")) {
            string = string.substring(21);
        }
        im7.d(string, "Reflection.renderLambdaToString(this)");
        return string;
    }
}
