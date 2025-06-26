package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: classes.dex */
public final class ap3 extends PushbackInputStream {
    public final /* synthetic */ vo3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ap3(vo3 vo3Var, InputStream inputStream) {
        super(inputStream, 1);
        this.e = vo3Var;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        to3.a(this.e.c);
        super.close();
    }
}
