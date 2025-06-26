package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public interface xe3 {
    public static final ByteBuffer a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    int a();

    int b();

    void c(ByteBuffer byteBuffer);

    boolean d(int i, int i2, int i3) throws we3;

    ByteBuffer e();

    void f();

    void flush();

    void g();

    boolean isActive();

    boolean j();
}
