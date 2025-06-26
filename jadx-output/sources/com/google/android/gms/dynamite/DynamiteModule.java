package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.util.DynamiteApi;
import dalvik.system.DelegateLastClassLoader;
import defpackage.a30;
import defpackage.b30;
import defpackage.c20;
import defpackage.c30;
import defpackage.d30;
import defpackage.e30;
import defpackage.f30;
import defpackage.g30;
import defpackage.h30;
import defpackage.i30;
import defpackage.j30;
import defpackage.x20;
import defpackage.y20;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class DynamiteModule {
    public static Boolean b = null;
    public static h30 c = null;
    public static j30 d = null;
    public static String e = null;
    public static int f = -1;
    public static final ThreadLocal<c> g = new ThreadLocal<>();
    public static final b.InterfaceC0004b h = new b30();
    public static final b i = new a30();
    public static final b j = new c30();
    public static final b k = new d30();
    public static final b l = new e30();
    public final Context a;

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    public static class a extends Exception {
        public a(String str, b30 b30Var) {
            super(str);
        }

        public a(String str, Throwable th, b30 b30Var) {
            super(str, th);
        }
    }

    public interface b {

        public static class a {
            public int a = 0;
            public int b = 0;
            public int c = 0;
        }

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b$b, reason: collision with other inner class name */
        public interface InterfaceC0004b {
            int a(Context context, String str, boolean z) throws a;

            int b(Context context, String str);
        }

        a a(Context context, String str, InterfaceC0004b interfaceC0004b) throws a;
    }

    public static class c {
        public Cursor a;

        public c() {
        }

        public c(b30 b30Var) {
        }
    }

    public static class d implements b.InterfaceC0004b {
        public final int a;

        public d(int i) {
            this.a = i;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.b.InterfaceC0004b
        public final int a(Context context, String str, boolean z) {
            return 0;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.b.InterfaceC0004b
        public final int b(Context context, String str) {
            return this.a;
        }
    }

    public DynamiteModule(Context context) {
        Objects.requireNonNull(context, "null reference");
        this.a = context;
    }

    public static int a(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".ModuleDescriptor");
            Class<?> clsLoadClass = classLoader.loadClass(sb.toString());
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                return declaredField2.getInt(null);
            }
            String strValueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 51 + String.valueOf(str).length());
            sb2.append("Module descriptor id '");
            sb2.append(strValueOf);
            sb2.append("' didn't match expected id '");
            sb2.append(str);
            sb2.append("'");
            Log.e("DynamiteModule", sb2.toString());
            return 0;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e2) {
            String strValueOf2 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", strValueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(strValueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    public static int b(Context context, String str) {
        return e(context, str, false);
    }

    public static DynamiteModule d(Context context, b bVar, String str) throws a {
        ThreadLocal<c> threadLocal = g;
        c cVar = threadLocal.get();
        c cVar2 = new c(null);
        threadLocal.set(cVar2);
        try {
            b.a aVarA = bVar.a(context, str, h);
            int i2 = aVarA.a;
            int i3 = aVarA.b;
            StringBuilder sb = new StringBuilder(str.length() + 68 + str.length());
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(":");
            sb.append(i2);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(":");
            sb.append(i3);
            Log.i("DynamiteModule", sb.toString());
            int i4 = aVarA.c;
            if (i4 == 0 || ((i4 == -1 && aVarA.a == 0) || (i4 == 1 && aVarA.b == 0))) {
                int i5 = aVarA.a;
                int i6 = aVarA.b;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i5);
                sb2.append(" and remote version is ");
                sb2.append(i6);
                sb2.append(".");
                throw new a(sb2.toString(), null);
            }
            if (i4 == -1) {
                DynamiteModule dynamiteModuleF = f(context, str);
                Cursor cursor = cVar2.a;
                if (cursor != null) {
                    cursor.close();
                }
                threadLocal.set(cVar);
                return dynamiteModuleF;
            }
            if (i4 != 1) {
                int i7 = aVarA.c;
                StringBuilder sb3 = new StringBuilder(47);
                sb3.append("VersionPolicy returned invalid code:");
                sb3.append(i7);
                throw new a(sb3.toString(), null);
            }
            try {
                DynamiteModule dynamiteModuleG = g(context, str, aVarA.b);
                Cursor cursor2 = cVar2.a;
                if (cursor2 != null) {
                    cursor2.close();
                }
                threadLocal.set(cVar);
                return dynamiteModuleG;
            } catch (a e2) {
                String strValueOf = String.valueOf(e2.getMessage());
                Log.w("DynamiteModule", strValueOf.length() != 0 ? "Failed to load remote module: ".concat(strValueOf) : new String("Failed to load remote module: "));
                int i8 = aVarA.a;
                if (i8 == 0 || bVar.a(context, str, new d(i8)).c != -1) {
                    throw new a("Remote load failed. No local fallback found.", e2, null);
                }
                DynamiteModule dynamiteModuleF2 = f(context, str);
                Cursor cursor3 = cVar2.a;
                if (cursor3 != null) {
                    cursor3.close();
                }
                g.set(cVar);
                return dynamiteModuleF2;
            }
        } catch (Throwable th) {
            Cursor cursor4 = cVar2.a;
            if (cursor4 != null) {
                cursor4.close();
            }
            g.set(cVar);
            throw th;
        }
    }

    public static int e(Context context, String str, boolean z) {
        Field declaredField;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = b;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        String strValueOf = String.valueOf(e2);
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(strValueOf);
                        Log.w("DynamiteModule", sb.toString());
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool = Boolean.FALSE;
                            } else {
                                try {
                                    i(classLoader);
                                } catch (a unused) {
                                }
                                bool = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        } else {
                            try {
                                int iL = l(context, str, z);
                                String str2 = e;
                                if (str2 != null && !str2.isEmpty()) {
                                    ClassLoader delegateLastClassLoader = Build.VERSION.SDK_INT >= 29 ? new DelegateLastClassLoader(e, ClassLoader.getSystemClassLoader()) : new f30(e, ClassLoader.getSystemClassLoader());
                                    i(delegateLastClassLoader);
                                    declaredField.set(null, delegateLastClassLoader);
                                    b = Boolean.TRUE;
                                    return iL;
                                }
                                return iL;
                            } catch (a unused2) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool = Boolean.FALSE;
                            }
                        }
                        b = bool;
                    }
                }
                if (!bool.booleanValue()) {
                    return j(context, str, z);
                }
                try {
                    return l(context, str, z);
                } catch (a e3) {
                    String strValueOf2 = String.valueOf(e3.getMessage());
                    Log.w("DynamiteModule", strValueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(strValueOf2) : new String("Failed to retrieve remote module version: "));
                    return 0;
                }
            }
        } catch (Throwable th) {
            c20.a(context, th);
            throw th;
        }
    }

    public static DynamiteModule f(Context context, String str) {
        String strValueOf = String.valueOf(str);
        Log.i("DynamiteModule", strValueOf.length() != 0 ? "Selected local version of ".concat(strValueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    public static DynamiteModule g(Context context, String str, int i2) throws a {
        Boolean bool;
        x20 x20VarR2;
        try {
            synchronized (DynamiteModule.class) {
                bool = b;
            }
            if (bool == null) {
                throw new a("Failed to determine which loading route to use.", null);
            }
            if (bool.booleanValue()) {
                return k(context, str, i2);
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
            sb.append("Selected remote version of ");
            sb.append(str);
            sb.append(", version >= ");
            sb.append(i2);
            Log.i("DynamiteModule", sb.toString());
            h30 h30VarH = h(context);
            if (h30VarH == null) {
                throw new a("Failed to create IDynamiteLoader.", null);
            }
            if (h30VarH.b() >= 2) {
                x20VarR2 = h30VarH.N4(new y20(context), str, i2);
            } else {
                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                x20VarR2 = h30VarH.r2(new y20(context), str, i2);
            }
            if (y20.l0(x20VarR2) != null) {
                return new DynamiteModule((Context) y20.l0(x20VarR2));
            }
            throw new a("Failed to load remote module.", null);
        } catch (RemoteException e2) {
            throw new a("Failed to load remote module.", e2, null);
        } catch (a e3) {
            throw e3;
        } catch (Throwable th) {
            c20.a(context, th);
            throw new a("Failed to load remote module.", th, null);
        }
    }

    public static h30 h(Context context) {
        h30 g30Var;
        synchronized (DynamiteModule.class) {
            h30 h30Var = c;
            if (h30Var != null) {
                return h30Var;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    g30Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    g30Var = iInterfaceQueryLocalInterface instanceof h30 ? (h30) iInterfaceQueryLocalInterface : new g30(iBinder);
                }
                if (g30Var != null) {
                    c = g30Var;
                    return g30Var;
                }
            } catch (Exception e2) {
                String strValueOf = String.valueOf(e2.getMessage());
                Log.e("DynamiteModule", strValueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(strValueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
            }
            return null;
        }
    }

    public static void i(ClassLoader classLoader) throws a {
        j30 i30Var;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                i30Var = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                i30Var = iInterfaceQueryLocalInterface instanceof j30 ? (j30) iInterfaceQueryLocalInterface : new i30(iBinder);
            }
            d = i30Var;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new a("Failed to instantiate dynamite loader", e2, null);
        }
    }

    public static int j(Context context, String str, boolean z) {
        h30 h30VarH = h(context);
        if (h30VarH == null) {
            return 0;
        }
        try {
            if (h30VarH.b() >= 2) {
                return h30VarH.M3(new y20(context), str, z);
            }
            Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
            return h30VarH.D4(new y20(context), str, z);
        } catch (RemoteException e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            Log.w("DynamiteModule", strValueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(strValueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    public static DynamiteModule k(Context context, String str, int i2) throws RemoteException, a {
        j30 j30Var;
        Boolean boolValueOf;
        x20 x20VarB1;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i2);
        Log.i("DynamiteModule", sb.toString());
        synchronized (DynamiteModule.class) {
            j30Var = d;
        }
        if (j30Var == null) {
            throw new a("DynamiteLoaderV2 was not cached.", null);
        }
        c cVar = g.get();
        if (cVar == null || cVar.a == null) {
            throw new a("No result cursor", null);
        }
        Context applicationContext = context.getApplicationContext();
        Cursor cursor = cVar.a;
        new y20(null);
        synchronized (DynamiteModule.class) {
            boolValueOf = Boolean.valueOf(f >= 2);
        }
        if (boolValueOf.booleanValue()) {
            Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
            x20VarB1 = j30Var.e1(new y20(applicationContext), str, i2, new y20(cursor));
        } else {
            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
            x20VarB1 = j30Var.b1(new y20(applicationContext), str, i2, new y20(cursor));
        }
        Context context2 = (Context) y20.l0(x20VarB1);
        if (context2 != null) {
            return new DynamiteModule(context2);
        }
        throw new a("Failed to get module context", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int l(android.content.Context r8, java.lang.String r9, boolean r10) throws java.lang.Throwable {
        /*
            r0 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            if (r10 == 0) goto La
            java.lang.String r8 = "api_force_staging"
            goto Lc
        La:
            java.lang.String r8 = "api"
        Lc:
            int r10 = r8.length()     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            int r10 = r10 + 42
            java.lang.String r2 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            int r2 = r2.length()     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            int r10 = r10 + r2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            r2.<init>(r10)     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            java.lang.String r10 = "content://com.google.android.gms.chimera/"
            r2.append(r10)     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            r2.append(r8)     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            java.lang.String r8 = "/"
            r2.append(r8)     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            r2.append(r9)     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            android.net.Uri r2 = android.net.Uri.parse(r8)     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L9b java.lang.Exception -> L9d
            if (r8 == 0) goto L83
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            if (r9 == 0) goto L83
            r9 = 0
            int r9 = r8.getInt(r9)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            if (r9 <= 0) goto L7c
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r10 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            r1 = 2
            java.lang.String r1 = r8.getString(r1)     // Catch: java.lang.Throwable -> L79
            com.google.android.gms.dynamite.DynamiteModule.e = r1     // Catch: java.lang.Throwable -> L79
            java.lang.String r1 = "loaderVersion"
            int r1 = r8.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L79
            if (r1 < 0) goto L67
            int r1 = r8.getInt(r1)     // Catch: java.lang.Throwable -> L79
            com.google.android.gms.dynamite.DynamiteModule.f = r1     // Catch: java.lang.Throwable -> L79
        L67:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L79
            java.lang.ThreadLocal<com.google.android.gms.dynamite.DynamiteModule$c> r10 = com.google.android.gms.dynamite.DynamiteModule.g     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            java.lang.Object r10 = r10.get()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            com.google.android.gms.dynamite.DynamiteModule$c r10 = (com.google.android.gms.dynamite.DynamiteModule.c) r10     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            if (r10 == 0) goto L7c
            android.database.Cursor r1 = r10.a     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            if (r1 != 0) goto L7c
            r10.a = r8     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            goto L7d
        L79:
            r9 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L79
            throw r9     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
        L7c:
            r0 = r8
        L7d:
            if (r0 == 0) goto L82
            r0.close()
        L82:
            return r9
        L83:
            java.lang.String r9 = "DynamiteModule"
            java.lang.String r10 = "Failed to retrieve remote module version."
            android.util.Log.w(r9, r10)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            com.google.android.gms.dynamite.DynamiteModule$a r9 = new com.google.android.gms.dynamite.DynamiteModule$a     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            java.lang.String r10 = "Failed to connect to dynamite module ContentResolver."
            r9.<init>(r10, r0)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
            throw r9     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L96
        L92:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto Lae
        L96:
            r9 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
            goto L9f
        L9b:
            r8 = move-exception
            goto Lae
        L9d:
            r8 = move-exception
            r9 = r0
        L9f:
            boolean r10 = r8 instanceof com.google.android.gms.dynamite.DynamiteModule.a     // Catch: java.lang.Throwable -> Lac
            if (r10 == 0) goto La4
            throw r8     // Catch: java.lang.Throwable -> Lac
        La4:
            com.google.android.gms.dynamite.DynamiteModule$a r10 = new com.google.android.gms.dynamite.DynamiteModule$a     // Catch: java.lang.Throwable -> Lac
            java.lang.String r1 = "V2 version check failed"
            r10.<init>(r1, r8, r0)     // Catch: java.lang.Throwable -> Lac
            throw r10     // Catch: java.lang.Throwable -> Lac
        Lac:
            r8 = move-exception
            r0 = r9
        Lae:
            if (r0 == 0) goto Lb3
            r0.close()
        Lb3:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.l(android.content.Context, java.lang.String, boolean):int");
    }

    public final IBinder c(String str) throws a {
        try {
            return (IBinder) this.a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            String strValueOf = String.valueOf(str);
            throw new a(strValueOf.length() != 0 ? "Failed to instantiate module class: ".concat(strValueOf) : new String("Failed to instantiate module class: "), e2, null);
        }
    }
}
