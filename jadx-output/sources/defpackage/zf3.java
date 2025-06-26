package defpackage;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class zf3 {
    public int a;
    public final wf3 b = new wf3();
    public ByteBuffer c;
    public long d;

    public final void a() {
        this.a = 0;
        ByteBuffer byteBuffer = this.c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final boolean b(int i) {
        return (this.a & i) == i;
    }

    public final ByteBuffer c(int i) {
        ByteBuffer byteBuffer = this.c;
        int iCapacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(iCapacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    public final boolean d() {
        return b(4);
    }
}
