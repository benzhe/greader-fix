package defpackage;

import defpackage.ck4;
import defpackage.mj4;
import defpackage.pj4;
import java.io.IOException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class mj4<MessageType extends mj4<MessageType, BuilderType>, BuilderType extends pj4<MessageType, BuilderType>> implements am4 {
    public int zza = 0;

    public void c(int i) {
        throw new UnsupportedOperationException();
    }

    public final byte[] d() {
        try {
            pk4 pk4Var = (pk4) this;
            int i = pk4Var.i();
            byte[] bArr = new byte[i];
            Logger logger = ck4.b;
            ck4.a aVar = new ck4.a(bArr, i);
            pk4Var.b(aVar);
            if (aVar.a() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sbY = jo.y(name.length() + 62 + 10, "Serializing ", name, " to a ", "byte array");
            sbY.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sbY.toString(), e);
        }
    }

    public int f() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.am4
    public final vj4 h() {
        try {
            pk4 pk4Var = (pk4) this;
            int i = pk4Var.i();
            vj4 vj4Var = vj4.f;
            byte[] bArr = new byte[i];
            Logger logger = ck4.b;
            ck4.a aVar = new ck4.a(bArr, i);
            pk4Var.b(aVar);
            if (aVar.a() == 0) {
                return new ak4(bArr);
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
