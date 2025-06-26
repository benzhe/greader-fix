package defpackage;

import java.io.IOException;
import java.io.StringWriter;

/* loaded from: classes.dex */
public abstract class td6 {
    public yd6 d() {
        if (this instanceof yd6) {
            return (yd6) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            gg6 gg6Var = new gg6(stringWriter);
            gg6Var.j = true;
            uf6.X.b(gg6Var, this);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
