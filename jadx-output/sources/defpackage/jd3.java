package defpackage;

import java.io.UnsupportedEncodingException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class jd3 implements Runnable {
    public final /* synthetic */ gd3 e;

    public jd3(gd3 gd3Var) {
        this.e = gd3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        gd3 gd3Var = this.e;
        Objects.requireNonNull(gd3Var);
        try {
            xb3 xb3Var = gd3Var.a;
            Class clsLoadClass = xb3Var.c.loadClass(gd3Var.a(xb3Var.e, gd3Var.b));
            if (clsLoadClass == null) {
                return;
            }
            gd3Var.d = clsLoadClass.getMethod(gd3Var.a(gd3Var.a.e, gd3Var.c), gd3Var.e);
            if (gd3Var.d == null) {
            }
        } catch (b33 unused) {
        } catch (UnsupportedEncodingException unused2) {
        } catch (ClassNotFoundException unused3) {
        } catch (NoSuchMethodException unused4) {
        } catch (NullPointerException unused5) {
        } finally {
            gd3Var.f.countDown();
        }
    }
}
