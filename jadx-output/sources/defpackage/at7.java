package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public interface at7 extends vt7, ReadableByteChannel {
    void D0(long j) throws IOException;

    byte[] G() throws IOException;

    long G0() throws IOException;

    boolean J() throws IOException;

    int J0(lt7 lt7Var) throws IOException;

    void N(xs7 xs7Var, long j) throws IOException;

    long P() throws IOException;

    String R(long j) throws IOException;

    boolean U(long j, bt7 bt7Var) throws IOException;

    String V(Charset charset) throws IOException;

    bt7 e0() throws IOException;

    xs7 h();

    String i0() throws IOException;

    InputStream inputStream();

    boolean l(long j) throws IOException;

    byte[] l0(long j) throws IOException;

    at7 peek();

    xs7 r();

    byte readByte() throws IOException;

    void readFully(byte[] bArr) throws IOException;

    int readInt() throws IOException;

    long readLong() throws IOException;

    short readShort() throws IOException;

    bt7 s(long j) throws IOException;

    void skip(long j) throws IOException;

    long w0(tt7 tt7Var) throws IOException;
}
