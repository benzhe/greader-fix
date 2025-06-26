package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;

/* loaded from: classes.dex */
public class vh5 {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static long b = -1;
    public static final Comparator<File> c = new a();

    public class a implements Comparator<File> {
        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return (int) (file.lastModified() - file2.lastModified());
        }
    }

    public enum b {
        X86_32,
        X86_64,
        ARM_UNKNOWN,
        PPC,
        PPC64,
        ARMV6,
        ARMV7,
        UNKNOWN,
        ARMV7S,
        ARM64;

        public static final Map<String, b> o;

        static {
            b bVar = X86_32;
            b bVar2 = ARMV6;
            b bVar3 = ARMV7;
            b bVar4 = ARM64;
            HashMap map = new HashMap(4);
            o = map;
            map.put("armeabi-v7a", bVar3);
            map.put("armeabi", bVar2);
            map.put("arm64-v8a", bVar4);
            map.put("x86", bVar);
        }
    }

    public static long a(String str) {
        long blockSize = new StatFs(str).getBlockSize();
        return (r0.getBlockCount() * blockSize) - (blockSize * r0.getAvailableBlocks());
    }

    public static boolean b(Context context) {
        if (!(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    public static void c(Closeable closeable, String str) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                if (ah5.a.a(6)) {
                    Log.e("FirebaseCrashlytics", str, e);
                }
            }
        }
    }

    public static long d(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * i;
    }

    public static String e(String... strArr) {
        if (strArr.length != 0) {
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                if (str != null) {
                    arrayList.add(str.replace("-", "").toLowerCase(Locale.US));
                }
            }
            Collections.sort(arrayList);
            StringBuilder sb = new StringBuilder();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sb.append((String) it.next());
            }
            String string = sb.toString();
            if (string.length() > 0) {
                return t(string);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
    
        r2 = r3[1];
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.BufferedReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String f(java.io.File r6, java.lang.String r7) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "Failed to close system file reader."
            boolean r1 = r6.exists()
            r2 = 0
            if (r1 == 0) goto L5d
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            r3.<init>(r6)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            r4 = 1024(0x400, float:1.435E-42)
            r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
        L15:
            java.lang.String r3 = r1.readLine()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L57
            if (r3 == 0) goto L53
            java.lang.String r4 = "\\s*:\\s*"
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L57
            r5 = 2
            java.lang.String[] r3 = r4.split(r3, r5)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L57
            int r4 = r3.length     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L57
            r5 = 1
            if (r4 <= r5) goto L15
            r4 = 0
            r4 = r3[r4]     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L57
            boolean r4 = r4.equals(r7)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L57
            if (r4 == 0) goto L15
            r6 = r3[r5]     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L57
            r2 = r6
            goto L53
        L37:
            r7 = move-exception
            goto L3d
        L39:
            r6 = move-exception
            goto L59
        L3b:
            r7 = move-exception
            r1 = r2
        L3d:
            ah5 r3 = defpackage.ah5.a     // Catch: java.lang.Throwable -> L57
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L57
            r4.<init>()     // Catch: java.lang.Throwable -> L57
            java.lang.String r5 = "Error parsing "
            r4.append(r5)     // Catch: java.lang.Throwable -> L57
            r4.append(r6)     // Catch: java.lang.Throwable -> L57
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L57
            r3.e(r6, r7)     // Catch: java.lang.Throwable -> L57
        L53:
            c(r1, r0)
            goto L5d
        L57:
            r6 = move-exception
            r2 = r1
        L59:
            c(r2, r0)
            throw r6
        L5d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vh5.f(java.io.File, java.lang.String):java.lang.String");
    }

    public static void g(Flushable flushable, String str) {
        if (flushable != null) {
            try {
                ((rl5) flushable).flush();
            } catch (IOException e) {
                if (ah5.a.a(6)) {
                    Log.e("FirebaseCrashlytics", str, e);
                }
            }
        }
    }

    public static ActivityManager.RunningAppProcessInfo h(String str, Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.processName.equals(str)) {
                    return runningAppProcessInfo;
                }
            }
        }
        return null;
    }

    public static boolean i(Context context, String str, boolean z) throws Resources.NotFoundException {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int iM = m(context, str, "bool");
            if (iM > 0) {
                return resources.getBoolean(iM);
            }
            int iM2 = m(context, str, "string");
            if (iM2 > 0) {
                return Boolean.parseBoolean(context.getString(iM2));
            }
        }
        return z;
    }

    public static int j(Context context) {
        boolean z = true;
        int i = q(context) ? 1 : 0;
        if (s(context)) {
            i |= 2;
        }
        if (!Debug.isDebuggerConnected() && !Debug.waitingForDebugger()) {
            z = false;
        }
        return z ? i | 4 : i;
    }

    public static String k(Context context) throws Resources.NotFoundException {
        int iM = m(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        if (iM == 0) {
            iM = m(context, "com.crashlytics.android.build_id", "string");
        }
        if (iM != 0) {
            return context.getResources().getString(iM);
        }
        return null;
    }

    public static boolean l(Context context) {
        return (q(context) || ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) == null) ? false : true;
    }

    public static int m(Context context, String str, String str2) throws Resources.NotFoundException {
        String packageName;
        Resources resources = context.getResources();
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            try {
                packageName = context.getResources().getResourcePackageName(i);
                if ("android".equals(packageName)) {
                    packageName = context.getPackageName();
                }
            } catch (Resources.NotFoundException unused) {
                packageName = context.getPackageName();
            }
        } else {
            packageName = context.getPackageName();
        }
        return resources.getIdentifier(str, str2, packageName);
    }

    public static SharedPreferences n(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    public static synchronized long o() {
        if (b == -1) {
            long jD = 0;
            String strF = f(new File("/proc/meminfo"), "MemTotal");
            if (!TextUtils.isEmpty(strF)) {
                String upperCase = strF.toUpperCase(Locale.US);
                try {
                    if (upperCase.endsWith("KB")) {
                        jD = d(upperCase, "KB", 1024);
                    } else if (upperCase.endsWith("MB")) {
                        jD = d(upperCase, "MB", 1048576);
                    } else if (upperCase.endsWith("GB")) {
                        jD = d(upperCase, "GB", 1073741824);
                    } else {
                        ah5.a.b("Unexpected meminfo format while computing RAM: " + upperCase);
                    }
                } catch (NumberFormatException e) {
                    ah5.a.e("Unexpected meminfo format while computing RAM: " + upperCase, e);
                }
            }
            b = jD;
        }
        return b;
    }

    public static String p(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    public static boolean q(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        String str = Build.PRODUCT;
        return "sdk".equals(str) || "google_sdk".equals(str) || string == null;
    }

    public static boolean r(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean s(Context context) {
        boolean zQ = q(context);
        String str = Build.TAGS;
        if ((zQ || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !zQ && new File("/system/xbin/su").exists();
        }
        return true;
    }

    public static String t(String str) throws NoSuchAlgorithmException {
        byte[] bytes = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bytes);
            return p(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            ah5.a.e("Could not create hashing algorithm: SHA-1, returning empty string.", e);
            return "";
        }
    }

    public static String u(InputStream inputStream) throws IOException {
        Scanner scannerUseDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return scannerUseDelimiter.hasNext() ? scannerUseDelimiter.next() : "";
    }
}
