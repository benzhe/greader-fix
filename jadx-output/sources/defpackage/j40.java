package defpackage;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import defpackage.tg0;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public abstract class j40<T> implements Comparable<j40<T>> {
    public final tg0.a e;
    public final int f;
    public final String g;
    public final int h;
    public final Object i;
    public cc0 j;
    public Integer k;
    public b80 l;
    public boolean m;
    public boolean n;
    public yc0 o;
    public ui3 p;
    public pk0 q;

    public j40(int i, String str, cc0 cc0Var) {
        Uri uri;
        String host;
        this.e = tg0.a.c ? new tg0.a() : null;
        this.i = new Object();
        this.m = true;
        int iHashCode = 0;
        this.n = false;
        this.p = null;
        this.f = i;
        this.g = str;
        this.j = cc0Var;
        this.o = new im3();
        if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && (host = uri.getHost()) != null) {
            iHashCode = host.hashCode();
        }
        this.h = iHashCode;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        return this.k.intValue() - ((j40) obj).k.intValue();
    }

    public Map<String, String> getHeaders() throws eh3 {
        return Collections.emptyMap();
    }

    public final int getMethod() {
        return this.f;
    }

    public final String getUrl() {
        return this.g;
    }

    public abstract c90<T> i(pu3 pu3Var);

    public final boolean isCanceled() {
        synchronized (this.i) {
        }
        return false;
    }

    public final void k(c90<?> c90Var) {
        pk0 pk0Var;
        List<j40<?>> listRemove;
        synchronized (this.i) {
            pk0Var = this.q;
        }
        if (pk0Var != null) {
            ui3 ui3Var = c90Var.b;
            if (ui3Var != null) {
                if (!(ui3Var.e < System.currentTimeMillis())) {
                    String strZze = zze();
                    synchronized (pk0Var) {
                        listRemove = pk0Var.a.remove(strZze);
                    }
                    if (listRemove != null) {
                        if (tg0.a) {
                            tg0.c("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(listRemove.size()), strZze);
                        }
                        Iterator<j40<?>> it = listRemove.iterator();
                        while (it.hasNext()) {
                            pk0Var.b.a(it.next(), c90Var);
                        }
                        return;
                    }
                    return;
                }
            }
            pk0Var.a(this);
        }
    }

    public abstract void l(T t);

    public final void t(int i) {
        b80 b80Var = this.l;
        if (b80Var != null) {
            b80Var.b(this, i);
        }
    }

    public String toString() {
        String strValueOf = String.valueOf(Integer.toHexString(this.h));
        String strConcat = strValueOf.length() != 0 ? "0x".concat(strValueOf) : new String("0x");
        isCanceled();
        String str = this.g;
        String strValueOf2 = String.valueOf(g50.NORMAL);
        String strValueOf3 = String.valueOf(this.k);
        StringBuilder sbY = jo.y(strValueOf3.length() + strValueOf2.length() + jo.x(strConcat, jo.x(str, "[ ] ".length() + 3)), "[ ] ", str, StringUtils.SPACE, strConcat);
        sbY.append(StringUtils.SPACE);
        sbY.append(strValueOf2);
        sbY.append(StringUtils.SPACE);
        sbY.append(strValueOf3);
        return sbY.toString();
    }

    public final void w(String str) {
        b80 b80Var = this.l;
        if (b80Var != null) {
            synchronized (b80Var.b) {
                b80Var.b.remove(this);
            }
            synchronized (b80Var.j) {
                Iterator<da0> it = b80Var.j.iterator();
                while (it.hasNext()) {
                    it.next().a(this);
                }
            }
            b80Var.b(this, 5);
        }
        if (tg0.a.c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new l30(this, str, id));
            } else {
                this.e.a(str, id);
                this.e.b(toString());
            }
        }
    }

    public final void x() {
        pk0 pk0Var;
        synchronized (this.i) {
            pk0Var = this.q;
        }
        if (pk0Var != null) {
            pk0Var.a(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final j40<?> zza(b80 b80Var) {
        this.l = b80Var;
        return this;
    }

    public final void zzb(uh0 uh0Var) {
        cc0 cc0Var;
        synchronized (this.i) {
            cc0Var = this.j;
        }
        if (cc0Var != null) {
            cc0Var.a(uh0Var);
        }
    }

    public final void zzc(String str) {
        if (tg0.a.c) {
            this.e.a(str, Thread.currentThread().getId());
        }
    }

    public final int zzd() {
        return this.h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final j40<?> zze(int i) {
        this.k = Integer.valueOf(i);
        return this;
    }

    public final ui3 zzf() {
        return this.p;
    }

    public byte[] zzg() throws eh3 {
        return null;
    }

    public final boolean zzh() {
        return this.m;
    }

    public final int zzi() {
        return ((im3) this.o).a;
    }

    public final yc0 zzj() {
        return this.o;
    }

    public final void zzk() {
        synchronized (this.i) {
            this.n = true;
        }
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this.i) {
            z = this.n;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final j40<?> zza(ui3 ui3Var) {
        this.p = ui3Var;
        return this;
    }

    public final String zze() {
        String str = this.g;
        int i = this.f;
        if (i == 0 || i == -1) {
            return str;
        }
        String string = Integer.toString(i);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + String.valueOf(string).length() + 1);
        sb.append(string);
        sb.append('-');
        sb.append(str);
        return sb.toString();
    }
}
