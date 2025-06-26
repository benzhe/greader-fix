package defpackage;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.er;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import okhttp3.internal.http2.Settings;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes.dex */
public class bi {
    public static Boolean a;
    public static Boolean b;
    public static Boolean c;
    public static Boolean d;
    public static Boolean e;
    public static Context f;
    public static Boolean g;

    public static void A(Parcel parcel, int i) {
        if (parcel.dataPosition() != i) {
            throw new z00(jo.M(37, "Overread allowed size end=", i), parcel);
        }
    }

    public static boolean B(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static InvocationHandler C() throws IllegalAccessException, NoSuchMethodException, SecurityException, ClassNotFoundException, InvocationTargetException {
        ClassLoader classLoader;
        if (Build.VERSION.SDK_INT >= 28) {
            classLoader = WebView.getWebViewClassLoader();
        } else {
            try {
                Method declaredMethod = WebView.class.getDeclaredMethod("getFactory", new Class[0]);
                declaredMethod.setAccessible(true);
                classLoader = declaredMethod.invoke(null, new Object[0]).getClass().getClassLoader();
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException(e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException(e4);
            }
        }
        return (InvocationHandler) Class.forName("org.chromium.support_lib_glue.SupportLibReflectionUtil", false, classLoader).getDeclaredMethod("createWebViewProviderFactory", new Class[0]).invoke(null, new Object[0]);
    }

    public static String D(int i) {
        switch (i) {
            case -1:
                return "SUCCESS_CACHE";
            case 0:
                return "SUCCESS";
            case 1:
            case 9:
            case 11:
            case 12:
            default:
                return jo.M(32, "unknown status code: ", i);
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 10:
                return "DEVELOPER_ERROR";
            case 13:
                return "ERROR";
            case 14:
                return "INTERRUPTED";
            case 15:
                return "TIMEOUT";
            case 16:
                return "CANCELED";
            case 17:
                return "API_NOT_CONNECTED";
            case 18:
                return "DEAD_CLIENT";
            case 19:
                return "REMOTE_EXCEPTION";
            case 20:
                return "CONNECTION_SUSPENDED_DURING_CALL";
        }
    }

    public static String E(String str) {
        return jo.n("TransportRuntime.", str);
    }

    public static void F(String str, String str2) {
        Log.i(E(str), str2);
    }

    public static oj G(int i) {
        if (i == 0) {
            return oj.EXPONENTIAL;
        }
        if (i == 1) {
            return oj.LINEAR;
        }
        throw new IllegalArgumentException(jo.h("Could not convert ", i, " to BackoffPolicy"));
    }

    public static wj H(int i) {
        if (i == 0) {
            return wj.NOT_REQUIRED;
        }
        if (i == 1) {
            return wj.CONNECTED;
        }
        if (i == 2) {
            return wj.UNMETERED;
        }
        if (i == 3) {
            return wj.NOT_ROAMING;
        }
        if (i == 4) {
            return wj.METERED;
        }
        throw new IllegalArgumentException(jo.h("Could not convert ", i, " to NetworkType"));
    }

    public static ak I(int i) {
        if (i == 0) {
            return ak.ENQUEUED;
        }
        if (i == 1) {
            return ak.RUNNING;
        }
        if (i == 2) {
            return ak.SUCCEEDED;
        }
        if (i == 3) {
            return ak.FAILED;
        }
        if (i == 4) {
            return ak.BLOCKED;
        }
        if (i == 5) {
            return ak.CANCELLED;
        }
        throw new IllegalArgumentException(jo.h("Could not convert ", i, " to State"));
    }

    public static boolean J() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean K() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (!(i >= 29)) {
            return false;
        }
        if (i >= 30 && Build.VERSION.CODENAME.equals("REL")) {
            return true;
        }
        String str = Build.VERSION.CODENAME;
        if (!(str.length() == 1 && str.charAt(0) >= 'R' && str.charAt(0) <= 'Z')) {
            return false;
        }
        Boolean bool = e;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            if (!"google".equals(Build.BRAND) || Build.ID.startsWith("RPP1") || Build.ID.startsWith("RPP2") || Integer.parseInt(Build.VERSION.INCREMENTAL) < 6301457) {
                z = false;
            }
            e = Boolean.valueOf(z);
        } catch (NumberFormatException unused) {
            e = Boolean.TRUE;
        }
        if (!e.booleanValue()) {
            Log.w("PlatformVersion", "Build version must be at least 6301457 to support R in gmscore");
        }
        return e.booleanValue();
    }

    public static boolean L(Context context, int i) throws PackageManager.NameNotFoundException {
        if (!a0(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
            ly lyVarA = ly.a(context);
            Objects.requireNonNull(lyVarA);
            if (packageInfo == null) {
                return false;
            }
            if (!ly.d(packageInfo, false)) {
                if (!ly.d(packageInfo, true)) {
                    return false;
                }
                if (!ky.b(lyVarA.a)) {
                    Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
                    return false;
                }
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            if (Log.isLoggable("UidVerifier", 3)) {
                Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
            }
            return false;
        }
    }

    public static synchronized boolean M(Context context) {
        Boolean bool;
        Context applicationContext = context.getApplicationContext();
        Context context2 = f;
        if (context2 != null && (bool = g) != null && context2 == applicationContext) {
            return bool.booleanValue();
        }
        g = null;
        if (J()) {
            g = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
        } else {
            try {
                context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                g = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                g = Boolean.FALSE;
            }
        }
        f = applicationContext;
        return g.booleanValue();
    }

    public static boolean N(Context context) {
        if (c == null) {
            PackageManager packageManager = context.getPackageManager();
            c = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services"));
        }
        return c.booleanValue();
    }

    public static boolean O(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (a == null) {
            a = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return a.booleanValue();
    }

    public static boolean P(Context context) {
        if (O(context)) {
            if (!(Build.VERSION.SDK_INT >= 24) || (u0(context) && !J())) {
                return true;
            }
        }
        return false;
    }

    public static String Q(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    public static boolean R(Parcel parcel, int i) {
        p0(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static float S(Parcel parcel, int i) {
        p0(parcel, i, 4);
        return parcel.readFloat();
    }

    public static IBinder T(Parcel parcel, int i) {
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iW == 0) {
            return null;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(iDataPosition + iW);
        return strongBinder;
    }

    public static int U(Parcel parcel, int i) {
        p0(parcel, i, 4);
        return parcel.readInt();
    }

    public static long V(Parcel parcel, int i) {
        p0(parcel, i, 8);
        return parcel.readLong();
    }

    public static int W(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & Settings.DEFAULT_INITIAL_WINDOW_SIZE : parcel.readInt();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [TResult, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [TInput, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r7v0, types: [cr, cr<TInput, TResult, TException extends java.lang.Throwable>] */
    public static <TInput, TResult, TException extends Throwable> TResult X(int i, TInput tinput, cr<TInput, TResult, TException> crVar, at<TInput, TResult> atVar) throws Throwable {
        ?? r0;
        if (i < 1) {
            return (TResult) crVar.a(tinput);
        }
        do {
            r0 = (TResult) crVar.a(tinput);
            er.a aVar = (er.a) tinput;
            er.b bVar = (er.b) r0;
            URL url = bVar.b;
            if (url != null) {
                x("CctTransportBackend", "Following redirect to: %s", url);
                tinput = (TInput) new er.a(bVar.b, aVar.b, aVar.c);
            } else {
                tinput = 0;
            }
            if (tinput == 0) {
                break;
            }
            i--;
        } while (i >= 1);
        return r0;
    }

    public static void Y(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + W(parcel, i));
    }

    public static int Z(ak akVar) {
        int iOrdinal = akVar.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        int i = 1;
        if (iOrdinal != 1) {
            i = 2;
            if (iOrdinal != 2) {
                i = 3;
                if (iOrdinal != 3) {
                    i = 4;
                    if (iOrdinal != 4) {
                        if (iOrdinal == 5) {
                            return 5;
                        }
                        throw new IllegalArgumentException("Could not convert " + akVar + " to int");
                    }
                }
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.rj a(byte[] r7) throws java.lang.Throwable {
        /*
            rj r0 = new rj
            r0.<init>()
            if (r7 != 0) goto L8
            return r0
        L8:
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream
            r1.<init>(r7)
            r7 = 0
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L44
            int r7 = r2.readInt()     // Catch: java.io.IOException -> L3e java.lang.Throwable -> L5e
        L17:
            if (r7 <= 0) goto L32
            java.lang.String r3 = r2.readUTF()     // Catch: java.io.IOException -> L3e java.lang.Throwable -> L5e
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.io.IOException -> L3e java.lang.Throwable -> L5e
            boolean r4 = r2.readBoolean()     // Catch: java.io.IOException -> L3e java.lang.Throwable -> L5e
            rj$a r5 = new rj$a     // Catch: java.io.IOException -> L3e java.lang.Throwable -> L5e
            r5.<init>(r3, r4)     // Catch: java.io.IOException -> L3e java.lang.Throwable -> L5e
            java.util.Set<rj$a> r3 = r0.a     // Catch: java.io.IOException -> L3e java.lang.Throwable -> L5e
            r3.add(r5)     // Catch: java.io.IOException -> L3e java.lang.Throwable -> L5e
            int r7 = r7 + (-1)
            goto L17
        L32:
            r2.close()     // Catch: java.io.IOException -> L36
            goto L3a
        L36:
            r7 = move-exception
            r7.printStackTrace()
        L3a:
            r1.close()     // Catch: java.io.IOException -> L59
            goto L5d
        L3e:
            r7 = move-exception
            goto L48
        L40:
            r0 = move-exception
            r2 = r7
            r7 = r0
            goto L5f
        L44:
            r2 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
        L48:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L5e
            if (r2 == 0) goto L55
            r2.close()     // Catch: java.io.IOException -> L51
            goto L55
        L51:
            r7 = move-exception
            r7.printStackTrace()
        L55:
            r1.close()     // Catch: java.io.IOException -> L59
            goto L5d
        L59:
            r7 = move-exception
            r7.printStackTrace()
        L5d:
            return r0
        L5e:
            r7 = move-exception
        L5f:
            if (r2 == 0) goto L69
            r2.close()     // Catch: java.io.IOException -> L65
            goto L69
        L65:
            r0 = move-exception
            r0.printStackTrace()
        L69:
            r1.close()     // Catch: java.io.IOException -> L6d
            goto L71
        L6d:
            r0 = move-exception
            r0.printStackTrace()
        L71:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bi.a(byte[]):rj");
    }

    public static boolean a0(Context context, int i, String str) {
        h20 h20VarA = i20.a(context);
        Objects.requireNonNull(h20VarA);
        try {
            ((AppOpsManager) h20VarA.a.getSystemService("appops")).checkPackage(i, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static void b(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static int b0(Parcel parcel) {
        int i = parcel.readInt();
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if ((65535 & i) != 20293) {
            String strValueOf = String.valueOf(Integer.toHexString(i));
            throw new z00(strValueOf.length() != 0 ? "Expected object header. Got 0x".concat(strValueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i2 = iW + iDataPosition;
        if (i2 < iDataPosition || i2 > parcel.dataSize()) {
            throw new z00(jo.N(54, "Size read is invalid start=", iDataPosition, " end=", i2), parcel);
        }
        return i2;
    }

    public static void c(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void c0(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle == null) {
            if (z) {
                r0(parcel, i, 0);
            }
        } else {
            int iM0 = m0(parcel, i);
            parcel.writeBundle(bundle);
            t0(parcel, iM0);
        }
    }

    public static void d(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void d0(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                r0(parcel, i, 0);
            }
        } else {
            int iM0 = m0(parcel, i);
            parcel.writeByteArray(bArr);
            t0(parcel, iM0);
        }
    }

    public static void e(Handler handler) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != handler.getLooper()) {
            String name = looperMyLooper != null ? looperMyLooper.getThread().getName() : "null current looper";
            String name2 = handler.getLooper().getThread().getName();
            StringBuilder sbY = jo.y(jo.x(name, jo.x(name2, 36)), "Must be called on ", name2, " thread, but got ", name);
            sbY.append(".");
            throw new IllegalStateException(sbY.toString());
        }
    }

    public static void e0(Parcel parcel, int i, byte[][] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                r0(parcel, i, 0);
                return;
            }
            return;
        }
        int iM0 = m0(parcel, i);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        t0(parcel, iM0);
    }

    public static void f(String str) {
        if (!(Looper.getMainLooper() == Looper.myLooper())) {
            throw new IllegalStateException(str);
        }
    }

    public static void f0(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (z) {
                r0(parcel, i, 0);
            }
        } else {
            int iM0 = m0(parcel, i);
            parcel.writeStrongBinder(iBinder);
            t0(parcel, iM0);
        }
    }

    public static String g(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    public static void g0(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr == null) {
            if (z) {
                r0(parcel, i, 0);
            }
        } else {
            int iM0 = m0(parcel, i);
            parcel.writeIntArray(iArr);
            t0(parcel, iM0);
        }
    }

    public static String h(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    public static void h0(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (z) {
                r0(parcel, i, 0);
            }
        } else {
            int iM0 = m0(parcel, i);
            parcelable.writeToParcel(parcel, i2);
            t0(parcel, iM0);
        }
    }

    public static void i(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static void i0(Parcel parcel, int i, String str, boolean z) {
        if (str == null) {
            if (z) {
                r0(parcel, i, 0);
            }
        } else {
            int iM0 = m0(parcel, i);
            parcel.writeString(str);
            t0(parcel, iM0);
        }
    }

    @EnsuresNonNull({"#1"})
    public static <T> T j(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void j0(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr == null) {
            if (z) {
                r0(parcel, i, 0);
            }
        } else {
            int iM0 = m0(parcel, i);
            parcel.writeStringArray(strArr);
            t0(parcel, iM0);
        }
    }

    @EnsuresNonNull({"#1"})
    public static <T> T k(T t) {
        Objects.requireNonNull(t, "null reference");
        return t;
    }

    public static void k0(Parcel parcel, int i, List<String> list, boolean z) {
        if (list == null) {
            if (z) {
                r0(parcel, i, 0);
            }
        } else {
            int iM0 = m0(parcel, i);
            parcel.writeStringList(list);
            t0(parcel, iM0);
        }
    }

    public static void l(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static <T extends Parcelable> void l0(Parcel parcel, int i, T[] tArr, int i2, boolean z) {
        if (tArr == null) {
            if (z) {
                r0(parcel, i, 0);
                return;
            }
            return;
        }
        int iM0 = m0(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                q0(parcel, t, i2);
            }
        }
        t0(parcel, iM0);
    }

    public static void m(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static int m0(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static <T> boolean n(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            if (B(tArr[i], t)) {
                break;
            }
            i++;
        }
        return i >= 0;
    }

    @Deprecated
    public static long n0(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        byte[] bArr = new byte[1024];
        long j = 0;
        while (true) {
            try {
                int i = inputStream.read(bArr, 0, 1024);
                if (i == -1) {
                    break;
                }
                j += i;
                outputStream.write(bArr, 0, i);
            } catch (Throwable th) {
                if (z) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                }
                throw th;
            }
        }
        if (z) {
            try {
                inputStream.close();
            } catch (IOException unused3) {
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException unused4) {
                }
            }
        }
        return j;
    }

    public static Bundle o(Parcel parcel, int i) {
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iW == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(iDataPosition + iW);
        return bundle;
    }

    public static <T> Set<T> o0(int i, boolean z) {
        return i <= (z ? 128 : RecyclerView.a0.FLAG_TMP_DETACHED) ? new h4(i) : new HashSet(i, z ? 0.75f : 1.0f);
    }

    public static byte[] p(Parcel parcel, int i) {
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iW == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        parcel.setDataPosition(iDataPosition + iW);
        return bArrCreateByteArray;
    }

    public static void p0(Parcel parcel, int i, int i2) {
        int iW = W(parcel, i);
        if (iW == i2) {
            return;
        }
        String hexString = Integer.toHexString(iW);
        StringBuilder sb = new StringBuilder(jo.x(hexString, 46));
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(iW);
        throw new z00(jo.t(sb, " (0x", hexString, ")"), parcel);
    }

    public static byte[][] q(Parcel parcel, int i) {
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iW == 0) {
            return null;
        }
        int i2 = parcel.readInt();
        byte[][] bArr = new byte[i2][];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = parcel.createByteArray();
        }
        parcel.setDataPosition(iDataPosition + iW);
        return bArr;
    }

    public static <T extends Parcelable> void q0(Parcel parcel, T t, int i) {
        int iDataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int iDataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int iDataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(iDataPosition);
        parcel.writeInt(iDataPosition3 - iDataPosition2);
        parcel.setDataPosition(iDataPosition3);
    }

    public static int[] r(Parcel parcel, int i) {
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iW == 0) {
            return null;
        }
        int[] iArrCreateIntArray = parcel.createIntArray();
        parcel.setDataPosition(iDataPosition + iW);
        return iArrCreateIntArray;
    }

    public static void r0(Parcel parcel, int i, int i2) {
        if (i2 < 65535) {
            parcel.writeInt(i | (i2 << 16));
        } else {
            parcel.writeInt(i | (-65536));
            parcel.writeInt(i2);
        }
    }

    public static <T extends Parcelable> T s(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iW == 0) {
            return null;
        }
        T tCreateFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(iDataPosition + iW);
        return tCreateFromParcel;
    }

    public static void s0(Parcel parcel, int i, int i2) {
        if (i == i2) {
            return;
        }
        String hexString = Integer.toHexString(i);
        StringBuilder sb = new StringBuilder(jo.x(hexString, 46));
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(i);
        throw new z00(jo.t(sb, " (0x", hexString, ")"), parcel);
    }

    public static String t(Parcel parcel, int i) {
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iW == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(iDataPosition + iW);
        return string;
    }

    public static void t0(Parcel parcel, int i) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(iDataPosition - i);
        parcel.setDataPosition(iDataPosition);
    }

    public static String[] u(Parcel parcel, int i) {
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iW == 0) {
            return null;
        }
        String[] strArrCreateStringArray = parcel.createStringArray();
        parcel.setDataPosition(iDataPosition + iW);
        return strArrCreateStringArray;
    }

    public static boolean u0(Context context) {
        if (b == null) {
            b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return b.booleanValue();
    }

    public static ArrayList<String> v(Parcel parcel, int i) {
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iW == 0) {
            return null;
        }
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(iDataPosition + iW);
        return arrayListCreateStringArrayList;
    }

    public static <T> T[] w(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int iW = W(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iW == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(iDataPosition + iW);
        return tArr;
    }

    public static void x(String str, String str2, Object obj) {
        Log.d(E(str), String.format(str2, obj));
    }

    public static void y(String str, String str2, Object... objArr) {
        Log.d(E(str), String.format(str2, objArr));
    }

    public static void z(String str, String str2, Throwable th) {
        Log.e(E(str), str2, th);
    }
}
