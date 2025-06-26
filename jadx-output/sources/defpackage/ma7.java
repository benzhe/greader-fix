package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public interface ma7 extends Closeable {
    void B0(boolean z, boolean z2, int i, int i2, List<na7> list) throws IOException;

    void H0(int i, ka7 ka7Var, byte[] bArr) throws IOException;

    void I0(int i, ka7 ka7Var) throws IOException;

    void X(ra7 ra7Var) throws IOException;

    void connectionPreface() throws IOException;

    void data(boolean z, int i, xs7 xs7Var, int i2) throws IOException;

    void f0(ra7 ra7Var) throws IOException;

    void flush() throws IOException;

    int maxDataLength();

    void ping(boolean z, int i, int i2) throws IOException;

    void windowUpdate(int i, long j) throws IOException;
}
