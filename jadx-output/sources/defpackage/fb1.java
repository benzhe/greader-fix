package defpackage;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class fb1 extends qa3 implements d91 {
    public String l = "moov";
    public boolean m;

    @Override // defpackage.d91
    public final void a(ov0 ov0Var, ByteBuffer byteBuffer, long j, f41 f41Var) throws IOException {
        ov0Var.a();
        byteBuffer.remaining();
        this.m = byteBuffer.remaining() == 16;
        e(ov0Var, j, f41Var);
    }

    @Override // defpackage.d91
    public final void c(c81 c81Var) {
    }

    @Override // defpackage.qa3
    public final void e(ov0 ov0Var, long j, f41 f41Var) throws IOException {
        this.f = ov0Var;
        this.h = ov0Var.a();
        ov0Var.b(ov0Var.a() + j);
        this.i = ov0Var.a();
        this.e = f41Var;
    }

    @Override // defpackage.d91
    public final String getType() {
        return this.l;
    }
}
