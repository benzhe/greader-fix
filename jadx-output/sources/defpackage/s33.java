package defpackage;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;

/* loaded from: classes.dex */
public final class s33 implements vw2 {
    public static final byte[] f = new byte[0];
    public final u33 a;
    public final String b;
    public final byte[] c;
    public final z33 d;
    public final q33 e;

    public s33(ECPublicKey eCPublicKey, byte[] bArr, String str, z33 z33Var, q33 q33Var) throws GeneralSecurityException {
        c50.q2(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.a = new u33(eCPublicKey);
        this.c = bArr;
        this.b = str;
        this.d = z33Var;
        this.e = q33Var;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type update terminated with stack overflow, arg: (r7v17 ?? I:g03), method size: 1235
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // defpackage.vw2
    public final byte[] a(byte[] r18, byte[] r19) throws java.security.GeneralSecurityException {
        /*
            Method dump skipped, instructions count: 1235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s33.a(byte[], byte[]):byte[]");
    }
}
