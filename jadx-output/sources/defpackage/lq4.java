package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.pk4;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class lq4 extends pk4<lq4, a> implements bm4 {
    private static final lq4 zzo;
    private static volatile jm4<lq4> zzp;
    private int zzc;
    private String zzd = "";
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private wk4<String> zzk = mm4.h;
    private String zzl = "";
    private boolean zzm;
    private boolean zzn;

    public static final class a extends pk4.b<lq4, a> implements bm4 {
        public a() {
            super(lq4.zzo);
        }

        public a(bp4 bp4Var) {
            super(lq4.zzo);
        }
    }

    static {
        lq4 lq4Var = new lq4();
        zzo = lq4Var;
        pk4.l(lq4.class, lq4Var);
    }

    public static void B(lq4 lq4Var, String str) {
        Objects.requireNonNull(lq4Var);
        str.getClass();
        lq4Var.zzc |= 16;
        lq4Var.zzh = str;
    }

    public static void C(lq4 lq4Var, String str) {
        Objects.requireNonNull(lq4Var);
        str.getClass();
        lq4Var.zzc |= 128;
        lq4Var.zzl = str;
    }

    public static a p(lq4 lq4Var) {
        a aVarO = zzo.o();
        aVarO.c(lq4Var);
        return aVarO;
    }

    public static void s(lq4 lq4Var) {
        lq4Var.zzc |= RecyclerView.a0.FLAG_TMP_DETACHED;
        lq4Var.zzm = true;
    }

    public static void t(lq4 lq4Var, Iterable iterable) {
        wk4<String> wk4Var = lq4Var.zzk;
        if (!wk4Var.a()) {
            int size = wk4Var.size();
            lq4Var.zzk = wk4Var.i(size == 0 ? 10 : size << 1);
        }
        List list = lq4Var.zzk;
        Charset charset = rk4.a;
        Objects.requireNonNull(iterable);
        if (iterable instanceof hl4) {
            List<?> listB = ((hl4) iterable).b();
            hl4 hl4Var = (hl4) list;
            int size2 = list.size();
            for (Object obj : listB) {
                if (obj == null) {
                    int size3 = hl4Var.size() - size2;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size3);
                    sb.append(" is null.");
                    String string = sb.toString();
                    int size4 = hl4Var.size();
                    while (true) {
                        size4--;
                        if (size4 < size2) {
                            throw new NullPointerException(string);
                        }
                        hl4Var.remove(size4);
                    }
                } else if (obj instanceof vj4) {
                    hl4Var.s0((vj4) obj);
                } else {
                    hl4Var.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof im4) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size5 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                int size6 = list.size() - size5;
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("Element at index ");
                sb2.append(size6);
                sb2.append(" is null.");
                String string2 = sb2.toString();
                int size7 = list.size();
                while (true) {
                    size7--;
                    if (size7 < size5) {
                        throw new NullPointerException(string2);
                    }
                    list.remove(size7);
                }
            } else {
                list.add(obj2);
            }
        }
    }

    public static void u(lq4 lq4Var, String str) {
        Objects.requireNonNull(lq4Var);
        str.getClass();
        lq4Var.zzc |= 1;
        lq4Var.zzd = str;
    }

    public static a v() {
        return zzo.o();
    }

    public static void w(lq4 lq4Var) {
        lq4Var.zzc |= 512;
        lq4Var.zzn = true;
    }

    public static void x(lq4 lq4Var, String str) {
        Objects.requireNonNull(lq4Var);
        str.getClass();
        lq4Var.zzc |= 2;
        lq4Var.zze = str;
    }

    public static lq4 y() {
        return zzo;
    }

    public static void z(lq4 lq4Var, String str) {
        Objects.requireNonNull(lq4Var);
        str.getClass();
        lq4Var.zzc |= 8;
        lq4Var.zzg = str;
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<lq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<lq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new lq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzo, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\b\u001a\tဈ\u0007\nဇ\b\u000bဇ\t", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn"});
            case 4:
                return zzo;
            case 5:
                jm4<lq4> jm4Var2 = zzp;
                jm4<lq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (lq4.class) {
                        jm4<lq4> jm4Var4 = zzp;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzo);
                            zzp = aVar;
                            jm4Var = aVar;
                        }
                    }
                    jm4Var3 = jm4Var;
                }
                return jm4Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final String q() {
        return this.zzh;
    }
}
