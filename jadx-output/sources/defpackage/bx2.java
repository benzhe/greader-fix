package defpackage;

import defpackage.e83;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public abstract class bx2<KeyFormatProtoT extends e83, KeyT> {
    public final Class<KeyFormatProtoT> a;

    public bx2(Class<KeyFormatProtoT> cls) {
        this.a = cls;
    }

    public abstract void a(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    public abstract KeyT b(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    public abstract KeyFormatProtoT c(k53 k53Var) throws e73;
}
