package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.CharEncoding;

/* loaded from: classes.dex */
public abstract class h21 implements f41 {
    public static Logger b = Logger.getLogger(h21.class.getName());
    public ThreadLocal<ByteBuffer> a = new f51();

    public final d91 a(ov0 ov0Var, c81 c81Var) throws IOException {
        int i;
        long jLimit;
        long jA = ov0Var.a();
        this.a.get().rewind().limit(8);
        do {
            i = ov0Var.read(this.a.get());
            if (i == 8) {
                this.a.get().rewind();
                long jW3 = c50.W3(this.a.get());
                byte[] bArr = null;
                if (jW3 < 8 && jW3 > 1) {
                    Logger logger = b;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(jW3);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                this.a.get().get(bArr2);
                try {
                    String str = new String(bArr2, CharEncoding.ISO_8859_1);
                    if (jW3 == 1) {
                        this.a.get().limit(16);
                        ov0Var.read(this.a.get());
                        this.a.get().position(8);
                        jLimit = c50.j4(this.a.get()) - 16;
                    } else {
                        jLimit = jW3 == 0 ? ov0Var.e.limit() - ov0Var.a() : jW3 - 8;
                    }
                    if ("uuid".equals(str)) {
                        this.a.get().limit(this.a.get().limit() + 16);
                        ov0Var.read(this.a.get());
                        bArr = new byte[16];
                        for (int iPosition = this.a.get().position() - 16; iPosition < this.a.get().position(); iPosition++) {
                            bArr[iPosition - (this.a.get().position() - 16)] = this.a.get().get(iPosition);
                        }
                        jLimit -= 16;
                    }
                    long j = jLimit;
                    d91 d91VarB = b(str, bArr, c81Var instanceof d91 ? ((d91) c81Var).getType() : "");
                    d91VarB.c(c81Var);
                    this.a.get().rewind();
                    d91VarB.a(ov0Var, this.a.get(), j, this);
                    return d91VarB;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (i >= 0);
        ov0Var.b(jA);
        throw new EOFException();
    }

    public abstract d91 b(String str, byte[] bArr, String str2);
}
