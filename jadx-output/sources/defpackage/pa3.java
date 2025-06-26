package defpackage;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public abstract class pa3 implements d91 {
    public static va3 l = va3.b(pa3.class);
    public String e;
    public ByteBuffer h;
    public long i;
    public ov0 k;
    public long j = -1;
    public boolean g = true;
    public boolean f = true;

    public pa3(String str) {
        this.e = str;
    }

    @Override // defpackage.d91
    public final void a(ov0 ov0Var, ByteBuffer byteBuffer, long j, f41 f41Var) throws IOException {
        this.i = ov0Var.a();
        byteBuffer.remaining();
        this.j = j;
        this.k = ov0Var;
        ov0Var.b(ov0Var.a() + j);
        this.g = false;
        this.f = false;
        d();
    }

    public final synchronized void b() {
        if (!this.g) {
            try {
                va3 va3Var = l;
                String strValueOf = String.valueOf(this.e);
                va3Var.a(strValueOf.length() != 0 ? "mem mapping ".concat(strValueOf) : new String("mem mapping "));
                this.h = this.k.c(this.i, this.j);
                this.g = true;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override // defpackage.d91
    public final void c(c81 c81Var) {
    }

    public final synchronized void d() {
        b();
        va3 va3Var = l;
        String strValueOf = String.valueOf(this.e);
        va3Var.a(strValueOf.length() != 0 ? "parsing details of ".concat(strValueOf) : new String("parsing details of "));
        ByteBuffer byteBuffer = this.h;
        if (byteBuffer != null) {
            this.f = true;
            byteBuffer.rewind();
            e(byteBuffer);
            if (byteBuffer.remaining() > 0) {
                byteBuffer.slice();
            }
            this.h = null;
        }
    }

    public abstract void e(ByteBuffer byteBuffer);

    @Override // defpackage.d91
    public final String getType() {
        return this.e;
    }
}
