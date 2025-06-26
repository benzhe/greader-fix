package defpackage;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class fc1 extends pa3 {
    public fc1(String str) {
        super(str);
    }

    @Override // defpackage.pa3
    public final void e(ByteBuffer byteBuffer) {
        byteBuffer.position(byteBuffer.remaining() + byteBuffer.position());
    }
}
