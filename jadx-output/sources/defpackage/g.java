package defpackage;

import defpackage.sj7;
import java.lang.reflect.Constructor;

/* compiled from: kotlin-style lambda group */
/* loaded from: classes.dex */
public final class g extends jm7 implements pl7<Throwable, Throwable> {
    public final /* synthetic */ int e;
    public final /* synthetic */ Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(int i, Object obj) {
        super(1);
        this.e = i;
        this.f = obj;
    }

    @Override // defpackage.pl7
    public final Throwable invoke(Throwable th) {
        Object objK;
        Object objNewInstance;
        Object objK2;
        Object objNewInstance2;
        Object objK3;
        Object objNewInstance3;
        Object objK4;
        Object objNewInstance4;
        int i = this.e;
        if (i == 0) {
            Throwable th2 = th;
            try {
                objNewInstance = ((Constructor) this.f).newInstance(th2.getMessage(), th2);
            } catch (Throwable th3) {
                objK = n56.K(th3);
            }
            if (objNewInstance == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
            }
            objK = (Throwable) objNewInstance;
            return (Throwable) (objK instanceof sj7.a ? null : objK);
        }
        if (i == 1) {
            try {
                objNewInstance2 = ((Constructor) this.f).newInstance(th);
            } catch (Throwable th4) {
                objK2 = n56.K(th4);
            }
            if (objNewInstance2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
            }
            objK2 = (Throwable) objNewInstance2;
            return (Throwable) (objK2 instanceof sj7.a ? null : objK2);
        }
        if (i == 2) {
            Throwable th5 = th;
            try {
                objNewInstance3 = ((Constructor) this.f).newInstance(th5.getMessage());
            } catch (Throwable th6) {
                objK3 = n56.K(th6);
            }
            if (objNewInstance3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
            }
            Throwable th7 = (Throwable) objNewInstance3;
            th7.initCause(th5);
            objK3 = th7;
            return (Throwable) (objK3 instanceof sj7.a ? null : objK3);
        }
        if (i != 3) {
            throw null;
        }
        Throwable th8 = th;
        try {
            objNewInstance4 = ((Constructor) this.f).newInstance(new Object[0]);
        } catch (Throwable th9) {
            objK4 = n56.K(th9);
        }
        if (objNewInstance4 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
        Throwable th10 = (Throwable) objNewInstance4;
        th10.initCause(th8);
        objK4 = th10;
        return (Throwable) (objK4 instanceof sj7.a ? null : objK4);
    }
}
