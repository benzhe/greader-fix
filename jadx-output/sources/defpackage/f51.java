package defpackage;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class f51 extends ThreadLocal<ByteBuffer> {
    @Override // java.lang.ThreadLocal
    public final /* synthetic */ ByteBuffer initialValue() {
        return ByteBuffer.allocate(32);
    }
}
