package defpackage;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* loaded from: classes2.dex */
public interface zs7 extends tt7, WritableByteChannel {
    zs7 E0(long j) throws IOException;

    zs7 K(int i) throws IOException;

    zs7 O() throws IOException;

    zs7 T(String str) throws IOException;

    long b0(vt7 vt7Var) throws IOException;

    zs7 c0(long j) throws IOException;

    @Override // defpackage.tt7, java.io.Flushable
    void flush() throws IOException;

    xs7 h();

    zs7 j(byte[] bArr, int i, int i2) throws IOException;

    zs7 o0(byte[] bArr) throws IOException;

    zs7 q0(bt7 bt7Var) throws IOException;

    zs7 u() throws IOException;

    zs7 v(int i) throws IOException;

    zs7 z(int i) throws IOException;
}
