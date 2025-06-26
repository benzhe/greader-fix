package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;

/* loaded from: classes.dex */
public final class rk0 {
    public static final Object b = new Object();
    public static boolean c = false;
    public static boolean d = false;
    public kq2 a;

    public final x20 a(String str, WebView webView, String str2, String str3, String str4, uk0 uk0Var, sk0 sk0Var, String str5) throws Throwable {
        synchronized (b) {
            try {
                try {
                    if (((Boolean) os3.j.f.a(y40.T2)).booleanValue() && c) {
                        if (!((Boolean) os3.j.f.a(y40.V2)).booleanValue()) {
                            return b(str, webView, str2, str3, str4, "Google");
                        }
                        try {
                            return this.a.q1(str, new y20(webView), str2, str3, str4, "Google", uk0Var.e, sk0Var.e, str5);
                        } catch (RemoteException | NullPointerException e) {
                            is0.zze("#007 Could not call remote method.", e);
                            return null;
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public final x20 b(String str, WebView webView, String str2, String str3, String str4, String str5) {
        synchronized (b) {
            try {
                try {
                    if (((Boolean) os3.j.f.a(y40.T2)).booleanValue() && c) {
                        try {
                            return this.a.O2(str, new y20(webView), str2, str3, str4, str5);
                        } catch (RemoteException | NullPointerException e) {
                            is0.zze("#007 Could not call remote method.", e);
                            return null;
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    public final void c(x20 x20Var, View view) {
        synchronized (b) {
            if (((Boolean) os3.j.f.a(y40.T2)).booleanValue() && c) {
                try {
                    this.a.O1(x20Var, new y20(view));
                } catch (RemoteException | NullPointerException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void d(x20 x20Var) {
        synchronized (b) {
            if (((Boolean) os3.j.f.a(y40.T2)).booleanValue() && c) {
                try {
                    this.a.p4(x20Var);
                } catch (RemoteException | NullPointerException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final boolean e(Context context) {
        synchronized (b) {
            if (!((Boolean) os3.j.f.a(y40.T2)).booleanValue()) {
                return false;
            }
            if (c) {
                return true;
            }
            try {
                f(context);
                boolean zO3 = this.a.o3(new y20(context));
                c = zO3;
                return zO3;
            } catch (RemoteException e) {
                e = e;
                is0.zze("#007 Could not call remote method.", e);
                return false;
            } catch (NullPointerException e2) {
                e = e2;
                is0.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    public final void f(Context context) {
        synchronized (b) {
            if (((Boolean) os3.j.f.a(y40.T2)).booleanValue() && !d) {
                try {
                    d = true;
                    this.a = (kq2) c50.D1(context, "com.google.android.gms.ads.omid.DynamiteOmid", tk0.a);
                } catch (js0 e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }
}
