package defpackage;

import defpackage.jw3;
import defpackage.kw3;
import defpackage.zw3;
import java.io.IOException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class jw3<MessageType extends jw3<MessageType, BuilderType>, BuilderType extends kw3<MessageType, BuilderType>> implements xy3 {
    private static boolean zzey = false;
    public int zzex = 0;

    public void a(int i) {
        throw new UnsupportedOperationException();
    }

    public int c() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.xy3
    public final sw3 l() {
        try {
            sx3 sx3Var = (sx3) this;
            int iO = sx3Var.o();
            sw3 sw3Var = sw3.f;
            byte[] bArr = new byte[iO];
            Logger logger = zw3.b;
            zw3.a aVar = new zw3.a(bArr, 0, iO);
            sx3Var.q(aVar);
            if (aVar.l() == 0) {
                return new ww3(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sbY = jo.y(name.length() + 62 + 10, "Serializing ", name, " to a ", "ByteString");
            sbY.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sbY.toString(), e);
        }
    }
}
