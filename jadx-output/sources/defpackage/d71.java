package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public class d71 extends qa3 implements Closeable {
    static {
        va3.b(d71.class);
    }

    public d71(ov0 ov0Var, f41 f41Var) throws IOException {
        e(ov0Var, ov0Var.e.limit(), f41Var);
    }

    @Override // defpackage.qa3, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Objects.requireNonNull(this.f);
    }

    @Override // defpackage.qa3
    public String toString() {
        String string = this.f.toString();
        return jo.c(jo.x(string, 7), "model(", string, ")");
    }
}
