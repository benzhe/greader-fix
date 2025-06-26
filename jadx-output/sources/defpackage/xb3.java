package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.Looper;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.zzfa;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class xb3 {
    public static final String r = "xb3";
    public Context a;
    public ExecutorService b;
    public DexClassLoader c;
    public x33 d;
    public byte[] e;
    public boolean i;
    public pr2 l;
    public Map<Pair<String, String>, gd3> o;
    public zzfa q;
    public volatile AdvertisingIdClient f = null;
    public volatile boolean g = false;
    public Future h = null;
    public volatile gl1 j = null;
    public Future k = null;
    public boolean m = false;
    public boolean n = false;
    public boolean p = false;

    public xb3(Context context) {
        Context applicationContext = context.getApplicationContext();
        boolean z = applicationContext != null;
        this.i = z;
        this.a = z ? applicationContext : context;
        this.o = new HashMap();
        if (this.q == null) {
            this.q = new zzfa(this.a);
        }
    }

    public static xb3 a(Context context, String str, String str2, boolean z) throws Throwable {
        xb3 xb3Var = new xb3(context);
        try {
            xb3Var.b = Executors.newCachedThreadPool(new wb3());
            xb3Var.g = z;
            if (z) {
                xb3Var.h = xb3Var.b.submit(new zb3(xb3Var));
            }
            xb3Var.b.execute(new ac3(xb3Var));
            try {
                gy gyVar = gy.b;
                xb3Var.m = gyVar.a(xb3Var.a) > 0;
                xb3Var.n = gyVar.c(xb3Var.a) == 0;
            } catch (Throwable unused) {
            }
            xb3Var.c(0, true);
            int i = bc3.a;
            if ((Looper.myLooper() == Looper.getMainLooper()) && ((Boolean) os3.j.f.a(y40.G1)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            x33 x33Var = new x33();
            xb3Var.d = x33Var;
            try {
                xb3Var.e = x33Var.c(str);
                try {
                    try {
                        File cacheDir = xb3Var.a.getCacheDir();
                        if (cacheDir == null && (cacheDir = xb3Var.a.getDir("dex", 0)) == null) {
                            throw new rb3();
                        }
                        File file = new File(String.format("%s/%s.jar", cacheDir, "1610724645094"));
                        if (!file.exists()) {
                            byte[] bArrB = xb3Var.d.b(xb3Var.e, str2);
                            file.createNewFile();
                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                            fileOutputStream.write(bArrB, 0, bArrB.length);
                            fileOutputStream.close();
                        }
                        xb3Var.g(cacheDir, "1610724645094");
                        try {
                            xb3Var.c = new DexClassLoader(file.getAbsolutePath(), cacheDir.getAbsolutePath(), null, xb3Var.a.getClassLoader());
                            i(file);
                            xb3Var.d(cacheDir, "1610724645094");
                            f(String.format("%s/%s.dex", cacheDir, "1610724645094"));
                            xb3Var.l = new pr2(xb3Var);
                            xb3Var.p = true;
                        } catch (Throwable th) {
                            i(file);
                            xb3Var.d(cacheDir, "1610724645094");
                            f(String.format("%s/%s.dex", cacheDir, "1610724645094"));
                            throw th;
                        }
                    } catch (FileNotFoundException e) {
                        throw new rb3(e);
                    } catch (IOException e2) {
                        throw new rb3(e2);
                    }
                } catch (b33 e3) {
                    throw new rb3(e3);
                } catch (NullPointerException e4) {
                    throw new rb3(e4);
                }
            } catch (b33 e5) {
                throw new rb3(e5);
            }
        } catch (rb3 unused2) {
        }
        return xb3Var;
    }

    public static void f(String str) {
        i(new File(str));
    }

    public static void i(File file) {
        if (file.exists()) {
            file.delete();
        } else {
            Log.d(r, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        }
    }

    public final Method b(String str, String str2) {
        gd3 gd3Var = this.o.get(new Pair(str, str2));
        if (gd3Var == null) {
            return null;
        }
        if (gd3Var.d != null) {
            return gd3Var.d;
        }
        try {
            if (gd3Var.f.await(2L, TimeUnit.SECONDS)) {
                return gd3Var.d;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }

    public final void c(int i, boolean z) {
        if (this.n) {
            Future<?> futureSubmit = this.b.submit(new yb3(this, i, z));
            if (i == 0) {
                this.k = futureSubmit;
            }
        }
    }

    /*  JADX ERROR: StackOverflowError in pass: MethodInvokeVisitor
        java.lang.StackOverflowError
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:99)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:114)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:120)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v19, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    public final void d(java.io.File r10, java.lang.String r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xb3.d(java.io.File, java.lang.String):void");
    }

    public final boolean e(String str, String str2, Class<?>... clsArr) {
        if (this.o.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.o.put(new Pair<>(str, str2), new gd3(this, str, str2, clsArr));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    public final boolean g(File file, String str) throws Throwable {
        Throwable th;
        ?? r11;
        ?? r112;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            return false;
        }
        FileInputStream fileInputStream = null;
        try {
            long length = file2.length();
            if (length <= 0) {
                i(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            FileInputStream fileInputStream2 = new FileInputStream(file2);
            try {
                try {
                    if (fileInputStream2.read(bArr) <= 0) {
                        Log.d(r, "Cannot read the cache data.");
                        i(file2);
                        try {
                            fileInputStream2.close();
                        } catch (IOException unused) {
                        }
                        return false;
                    }
                    try {
                        try {
                            il1 il1VarY = il1.y(bArr, e63.a());
                            if (str.equals(new String(il1VarY.D().d())) && Arrays.equals(il1VarY.B().d(), h62.b(il1VarY.A().d())) && Arrays.equals(il1VarY.E().d(), Build.VERSION.SDK.getBytes())) {
                                byte[] bArrB = this.d.b(this.e, new String(il1VarY.A().d()));
                                file3.createNewFile();
                                ?? fileOutputStream = new FileOutputStream(file3);
                                try {
                                    fileOutputStream.write(bArrB, 0, bArrB.length);
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException unused2) {
                                    }
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException unused3) {
                                    }
                                    return true;
                                } catch (b33 | IOException | NoSuchAlgorithmException unused4) {
                                    fileInputStream = fileOutputStream;
                                    r112 = fileInputStream;
                                    fileInputStream = fileInputStream2;
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (IOException unused5) {
                                        }
                                    }
                                    if (r112 != 0) {
                                        try {
                                            r112.close();
                                        } catch (IOException unused6) {
                                        }
                                    }
                                    return false;
                                } catch (Throwable th2) {
                                    th = th2;
                                    fileInputStream = fileOutputStream;
                                    th = th;
                                    r11 = fileInputStream;
                                    fileInputStream = fileInputStream2;
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (IOException unused7) {
                                        }
                                    }
                                    if (r11 == 0) {
                                        throw th;
                                    }
                                    try {
                                        r11.close();
                                        throw th;
                                    } catch (IOException unused8) {
                                        throw th;
                                    }
                                }
                            }
                            i(file2);
                            try {
                                fileInputStream2.close();
                            } catch (IOException unused9) {
                            }
                            return false;
                        } catch (NullPointerException unused10) {
                            fileInputStream2.close();
                            return false;
                        }
                    } catch (IOException unused11) {
                        return false;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (b33 | IOException | NoSuchAlgorithmException unused12) {
            }
        } catch (b33 | IOException | NoSuchAlgorithmException unused13) {
            r112 = 0;
        } catch (Throwable th4) {
            th = th4;
            r11 = 0;
        }
    }

    public final int h() {
        if (this.l == null) {
            return Integer.MIN_VALUE;
        }
        ConditionVariable conditionVariable = pr2.c;
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (RuntimeException unused) {
            return pr2.b().nextInt();
        }
    }
}
