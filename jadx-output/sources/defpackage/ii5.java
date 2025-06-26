package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import defpackage.dk5;
import defpackage.gk5;
import defpackage.ql5;
import defpackage.tk5;
import defpackage.uj5;
import defpackage.ul5;
import defpackage.vh5;
import defpackage.zj5;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class ii5 {
    public final Context a;
    public final bj5 b;
    public final xi5 c;
    public final oj5 d;
    public final wh5 e;
    public final fl5 f;
    public final gj5 g;
    public final ol5 h;
    public final qh5 i;
    public final ul5.b j;
    public final j k;
    public final uj5 l;
    public final tl5 m;
    public final ul5.a n;
    public final zg5 o;
    public final dn5 p;
    public final String q;
    public final hh5 r;
    public final mj5 s;
    public aj5 t;
    public f45<Boolean> u;
    public f45<Boolean> v;
    public f45<Void> w;
    public static final FilenameFilter x = new a("BeginSession");
    public static final FilenameFilter y = new b();
    public static final Comparator<File> z = new c();
    public static final Comparator<File> A = new d();
    public static final Pattern B = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    public static final Map<String, String> C = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
    public static final String[] D = {"SessionUser", "SessionApp", "SessionOS", "SessionDevice"};

    public class a extends h {
        public a(String str) {
            super(str);
        }

        @Override // ii5.h, java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return super.accept(file, str) && str.endsWith(".cls");
        }
    }

    public class b implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.length() == 39 && str.endsWith(".cls");
        }
    }

    public class c implements Comparator<File> {
        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return file2.getName().compareTo(file.getName());
        }
    }

    public class d implements Comparator<File> {
        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    public class e implements d45<Boolean, Void> {
        public final /* synthetic */ e45 a;
        public final /* synthetic */ float b;

        public e(e45 e45Var, float f) {
            this.a = e45Var;
            this.b = f;
        }

        @Override // defpackage.d45
        public e45<Void> a(Boolean bool) throws Exception {
            return ii5.this.e.c(new ri5(this, bool));
        }
    }

    public static class f implements FilenameFilter {
        public f(a aVar) {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return !((b) ii5.y).accept(file, str) && ii5.B.matcher(str).matches();
        }
    }

    public interface g {
        void a(rl5 rl5Var) throws Exception;
    }

    public static class h implements FilenameFilter {
        public final String e;

        public h(String str) {
            this.e = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.contains(this.e) && !str.endsWith(".cls_temp");
        }
    }

    public static class i implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return ((ql5.a) ql5.h).accept(file, str) || str.contains("SessionMissingBinaryImages");
        }
    }

    public static final class j implements uj5.b {
        public final ol5 a;

        public j(ol5 ol5Var) {
            this.a = ol5Var;
        }

        public File a() {
            File file = new File(this.a.a(), "log-files");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    public final class k implements ul5.c {
        public k(a aVar) {
        }
    }

    public final class l implements ul5.a {
        public l(a aVar) {
        }
    }

    public static final class m implements Runnable {
        public final Context e;
        public final xl5 f;
        public final ul5 g;
        public final boolean h;

        public m(Context context, xl5 xl5Var, ul5 ul5Var, boolean z) {
            this.e = context;
            this.f = xl5Var;
            this.g = ul5Var;
            this.h = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (vh5.b(this.e)) {
                ah5.a.b("Attempting to send crash report at time of crash...");
                this.g.a(this.f, this.h);
            }
        }
    }

    public static class n implements FilenameFilter {
        public final String e;

        public n(String str) {
            this.e = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.e);
            sb.append(".cls");
            return (str.equals(sb.toString()) || !str.contains(this.e) || str.endsWith(".cls_temp")) ? false : true;
        }
    }

    public ii5(Context context, wh5 wh5Var, fl5 fl5Var, gj5 gj5Var, bj5 bj5Var, ol5 ol5Var, xi5 xi5Var, qh5 qh5Var, tl5 tl5Var, ul5.b bVar, zg5 zg5Var, hh5 hh5Var, km5 km5Var) {
        new AtomicInteger(0);
        this.u = new f45<>();
        this.v = new f45<>();
        this.w = new f45<>();
        new AtomicBoolean(false);
        this.a = context;
        this.e = wh5Var;
        this.f = fl5Var;
        this.g = gj5Var;
        this.b = bj5Var;
        this.h = ol5Var;
        this.c = xi5Var;
        this.i = qh5Var;
        this.j = new si5(this);
        this.o = zg5Var;
        this.q = qh5Var.g.a();
        this.r = hh5Var;
        oj5 oj5Var = new oj5();
        this.d = oj5Var;
        j jVar = new j(ol5Var);
        this.k = jVar;
        uj5 uj5Var = new uj5(context, jVar);
        this.l = uj5Var;
        this.m = new tl5(new k(null));
        this.n = new l(null);
        an5 an5Var = new an5(1024, new cn5(10));
        this.p = an5Var;
        File file = new File(new File(ol5Var.a.getFilesDir(), ".com.google.firebase.crashlytics").getPath());
        yi5 yi5Var = new yi5(context, gj5Var, qh5Var, an5Var);
        nl5 nl5Var = new nl5(file, km5Var);
        cl5 cl5Var = fm5.b;
        is.b(context);
        zq zqVarC = is.a().c(new br(fm5.c, fm5.d));
        uq uqVar = new uq("json");
        xq<tk5, byte[]> xqVar = fm5.e;
        this.s = new mj5(yi5Var, nl5Var, new fm5(((es) zqVarC).b("FIREBASE_CRASHLYTICS_REPORT", tk5.class, uqVar, xqVar), xqVar), uj5Var, oj5Var);
    }

    public static void a(ii5 ii5Var) throws Exception {
        String str;
        String str2;
        Integer num;
        Objects.requireNonNull(ii5Var);
        long j2 = j();
        new uh5(ii5Var.g);
        String str3 = uh5.b;
        ah5 ah5Var = ah5.a;
        jo.G("Opening a new session with ID ", str3, ah5Var);
        ii5Var.o.h(str3);
        Locale locale = Locale.US;
        String str4 = String.format(locale, "Crashlytics Android SDK/%s", "17.3.0");
        ii5Var.y(str3, "BeginSession", new fi5(ii5Var, str3, str4, j2));
        ii5Var.o.d(str3, str4, j2);
        gj5 gj5Var = ii5Var.g;
        String str5 = gj5Var.c;
        qh5 qh5Var = ii5Var.i;
        String str6 = qh5Var.e;
        String str7 = qh5Var.f;
        String strB = gj5Var.b();
        int i2 = dj5.i(ii5Var.i.c).e;
        ii5Var.y(str3, "SessionApp", new gi5(ii5Var, str5, str6, str7, strB, i2));
        ii5Var.o.f(str3, str5, str6, str7, strB, i2, ii5Var.q);
        String str8 = Build.VERSION.RELEASE;
        String str9 = Build.VERSION.CODENAME;
        boolean zS = vh5.s(ii5Var.a);
        ii5Var.y(str3, "SessionOS", new hi5(ii5Var, str8, str9, zS));
        ii5Var.o.g(str3, str8, str9, zS);
        Context context = ii5Var.a;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        vh5.b bVar = vh5.b.UNKNOWN;
        String str10 = Build.CPU_ABI;
        if (TextUtils.isEmpty(str10)) {
            ah5Var.b("Architecture#getValue()::Build.CPU_ABI returned null or empty");
        } else {
            vh5.b bVar2 = vh5.b.o.get(str10.toLowerCase(locale));
            if (bVar2 != null) {
                bVar = bVar2;
            }
        }
        int iOrdinal = bVar.ordinal();
        String str11 = Build.MODEL;
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        long jO = vh5.o();
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        boolean zQ = vh5.q(context);
        int iJ = vh5.j(context);
        String str12 = Build.MANUFACTURER;
        String str13 = Build.PRODUCT;
        ii5Var.y(str3, "SessionDevice", new ji5(ii5Var, iOrdinal, str11, iAvailableProcessors, jO, blockCount, zQ, iJ, str12, str13));
        ii5Var.o.c(str3, iOrdinal, str11, iAvailableProcessors, jO, blockCount, zQ, iJ, str12, str13);
        ii5Var.l.a(str3);
        mj5 mj5Var = ii5Var.s;
        String strT = t(str3);
        yi5 yi5Var = mj5Var.a;
        Objects.requireNonNull(yi5Var);
        Charset charset = tk5.a;
        zj5.b bVar3 = new zj5.b();
        bVar3.a = "17.3.0";
        String str14 = yi5Var.c.a;
        Objects.requireNonNull(str14, "Null gmpAppId");
        bVar3.b = str14;
        String strB2 = yi5Var.b.b();
        Objects.requireNonNull(strB2, "Null installationUuid");
        bVar3.d = strB2;
        String str15 = yi5Var.c.e;
        Objects.requireNonNull(str15, "Null buildVersion");
        bVar3.e = str15;
        String str16 = yi5Var.c.f;
        Objects.requireNonNull(str16, "Null displayVersion");
        bVar3.f = str16;
        bVar3.c = 4;
        dk5.b bVar4 = new dk5.b();
        bVar4.b(false);
        bVar4.c = Long.valueOf(j2);
        Objects.requireNonNull(strT, "Null identifier");
        bVar4.b = strT;
        String str17 = yi5.e;
        Objects.requireNonNull(str17, "Null generator");
        bVar4.a = str17;
        String str18 = yi5Var.b.c;
        Objects.requireNonNull(str18, "Null identifier");
        String str19 = yi5Var.c.e;
        Objects.requireNonNull(str19, "Null version");
        String str20 = yi5Var.c.f;
        String strB3 = yi5Var.b.b();
        String strA = yi5Var.c.g.a();
        if (strA != null) {
            str2 = strA;
            str = "Unity";
        } else {
            str = null;
            str2 = null;
        }
        bVar4.f = new ek5(str18, str19, str20, null, strB3, str, str2, null);
        Integer num2 = 3;
        Objects.requireNonNull(str8, "Null version");
        Objects.requireNonNull(str9, "Null buildVersion");
        Boolean boolValueOf = Boolean.valueOf(vh5.s(yi5Var.a));
        String strN = num2 == null ? " platform" : "";
        if (boolValueOf == null) {
            strN = jo.n(strN, " jailbroken");
        }
        if (!strN.isEmpty()) {
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }
        bVar4.h = new rk5(num2.intValue(), str8, str9, boolValueOf.booleanValue(), null);
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        int iIntValue = 7;
        if (!TextUtils.isEmpty(str10) && (num = yi5.f.get(str10.toLowerCase(locale))) != null) {
            iIntValue = num.intValue();
        }
        int iAvailableProcessors2 = Runtime.getRuntime().availableProcessors();
        long jO2 = vh5.o();
        long blockCount2 = statFs2.getBlockCount() * statFs2.getBlockSize();
        boolean zQ2 = vh5.q(yi5Var.a);
        int iJ2 = vh5.j(yi5Var.a);
        gk5.b bVar5 = new gk5.b();
        bVar5.a = Integer.valueOf(iIntValue);
        Objects.requireNonNull(str11, "Null model");
        bVar5.b = str11;
        bVar5.c = Integer.valueOf(iAvailableProcessors2);
        bVar5.d = Long.valueOf(jO2);
        bVar5.e = Long.valueOf(blockCount2);
        bVar5.f = Boolean.valueOf(zQ2);
        bVar5.g = Integer.valueOf(iJ2);
        Objects.requireNonNull(str12, "Null manufacturer");
        bVar5.h = str12;
        Objects.requireNonNull(str13, "Null modelClass");
        bVar5.i = str13;
        bVar4.i = bVar5.a();
        bVar4.k = 3;
        bVar3.g = bVar4.a();
        tk5 tk5VarA = bVar3.a();
        nl5 nl5Var = mj5Var.b;
        Objects.requireNonNull(nl5Var);
        tk5.d dVarH = tk5VarA.h();
        if (dVarH == null) {
            ah5Var.b("Could not get session for report");
            return;
        }
        String strG = dVarH.g();
        try {
            File fileH = nl5Var.h(strG);
            nl5.i(fileH);
            nl5.l(new File(fileH, "report"), nl5.i.g(tk5VarA));
        } catch (IOException e2) {
            ah5.a.c("Could not persist report for session " + strG, e2);
        }
    }

    public static e45 b(ii5 ii5Var) throws NumberFormatException, ClassNotFoundException {
        boolean z2;
        e45 e45VarI;
        Objects.requireNonNull(ii5Var);
        ArrayList arrayList = new ArrayList();
        for (File file : r(ii5Var.l(), ai5.e)) {
            try {
                long j2 = Long.parseLong(file.getName().substring(3));
                try {
                    Class.forName("com.google.firebase.crash.FirebaseCrash");
                    z2 = true;
                } catch (ClassNotFoundException unused) {
                    z2 = false;
                }
                if (z2) {
                    ah5.a.b("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
                    e45VarI = c50.X(null);
                } else {
                    e45VarI = c50.i(new ScheduledThreadPoolExecutor(1), new li5(ii5Var, j2));
                }
                arrayList.add(e45VarI);
            } catch (NumberFormatException unused2) {
                ah5 ah5Var = ah5.a;
                StringBuilder sbZ = jo.z("Could not parse timestamp from file ");
                sbZ.append(file.getName());
                ah5Var.b(sbZ.toString());
            }
            file.delete();
        }
        return c50.M0(arrayList);
    }

    public static void c(String str, File file) throws Exception {
        FileOutputStream fileOutputStream;
        if (str == null) {
            return;
        }
        rl5 rl5VarI = null;
        try {
            fileOutputStream = new FileOutputStream(file, true);
            try {
                rl5VarI = rl5.i(fileOutputStream);
                pl5 pl5Var = sl5.a;
                pl5 pl5VarA = pl5.a(str);
                rl5VarI.r(7, 2);
                int iB = rl5.b(2, pl5VarA);
                rl5VarI.p(rl5.d(iB) + rl5.e(5) + iB);
                rl5VarI.r(5, 2);
                rl5VarI.p(iB);
                rl5VarI.m(2, pl5VarA);
                StringBuilder sbZ = jo.z("Failed to flush to append to ");
                sbZ.append(file.getPath());
                vh5.g(rl5VarI, sbZ.toString());
                vh5.c(fileOutputStream, "Failed to close " + file.getPath());
            } catch (Throwable th) {
                th = th;
                StringBuilder sbZ2 = jo.z("Failed to flush to append to ");
                sbZ2.append(file.getPath());
                vh5.g(rl5VarI, sbZ2.toString());
                vh5.c(fileOutputStream, "Failed to close " + file.getPath());
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
    }

    public static void e(InputStream inputStream, rl5 rl5Var, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i3, i2 - i3);
            if (i4 < 0) {
                break;
            } else {
                i3 += i4;
            }
        }
        Objects.requireNonNull(rl5Var);
        int i5 = rl5Var.f;
        int i6 = rl5Var.g;
        int i7 = i5 - i6;
        if (i7 >= i2) {
            System.arraycopy(bArr, 0, rl5Var.e, i6, i2);
            rl5Var.g += i2;
            return;
        }
        System.arraycopy(bArr, 0, rl5Var.e, i6, i7);
        int i8 = i7 + 0;
        int i9 = i2 - i7;
        rl5Var.g = rl5Var.f;
        rl5Var.k();
        if (i9 > rl5Var.f) {
            rl5Var.h.write(bArr, i8, i9);
        } else {
            System.arraycopy(bArr, i8, rl5Var.e, 0, i9);
            rl5Var.g = i9;
        }
    }

    public static long j() {
        return new Date().getTime() / 1000;
    }

    public static String o(File file) {
        return file.getName().substring(0, 35);
    }

    public static File[] r(File file, FilenameFilter filenameFilter) {
        File[] fileArrListFiles = file.listFiles(filenameFilter);
        return fileArrListFiles == null ? new File[0] : fileArrListFiles;
    }

    public static String t(String str) {
        return str.replaceAll("-", "");
    }

    public static void w(rl5 rl5Var, File[] fileArr, String str) throws Throwable {
        Arrays.sort(fileArr, vh5.c);
        for (File file : fileArr) {
            try {
                ah5.a.b(String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", str, file.getName()));
                z(rl5Var, file);
            } catch (Exception e2) {
                if (ah5.a.a(6)) {
                    Log.e("FirebaseCrashlytics", "Error writting non-fatal to session.", e2);
                }
            }
        }
    }

    public static void z(rl5 rl5Var, File file) throws Throwable {
        if (!file.exists()) {
            ah5 ah5Var = ah5.a;
            StringBuilder sbZ = jo.z("Tried to include a file that doesn't exist: ");
            sbZ.append(file.getName());
            ah5Var.d(sbZ.toString());
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                e(fileInputStream2, rl5Var, (int) file.length());
                vh5.c(fileInputStream2, "Failed to close file input stream.");
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                vh5.c(fileInputStream, "Failed to close file input stream.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void d(ql5 ql5Var) {
        if (ql5Var == null) {
            return;
        }
        try {
            ql5Var.a();
        } catch (IOException e2) {
            if (ah5.a.a(6)) {
                Log.e("FirebaseCrashlytics", "Error closing session file stream in the presence of an exception", e2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x030d A[LOOP:4: B:107:0x030b->B:108:0x030d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x04b1 A[Catch: IOException -> 0x04f0, TryCatch #5 {IOException -> 0x04f0, blocks: (B:173:0x0498, B:175:0x04b1, B:178:0x04d4, B:179:0x04e8, B:180:0x04ef), top: B:200:0x0498 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x04e8 A[Catch: IOException -> 0x04f0, TryCatch #5 {IOException -> 0x04f0, blocks: (B:173:0x0498, B:175:0x04b1, B:178:0x04d4, B:179:0x04e8, B:180:0x04ef), top: B:200:0x0498 }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0541 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(int r18, boolean r19) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ii5.f(int, boolean):void");
    }

    public final void g(long j2) throws IOException {
        try {
            new File(l(), ".ae" + j2).createNewFile();
        } catch (IOException unused) {
            ah5.a.b("Could not write app exception marker.");
        }
    }

    public boolean h(int i2) {
        this.e.a();
        if (p()) {
            ah5.a.b("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        ah5 ah5Var = ah5.a;
        ah5Var.b("Finalizing previously open sessions.");
        try {
            f(i2, true);
            ah5Var.b("Closed all previously open sessions");
            return true;
        } catch (Exception e2) {
            if (ah5.a.a(6)) {
                Log.e("FirebaseCrashlytics", "Unable to finalize previously open sessions.", e2);
            }
            return false;
        }
    }

    public final String i() {
        File[] fileArrS = s();
        if (fileArrS.length > 0) {
            return o(fileArrS[0]);
        }
        return null;
    }

    public File k() {
        return new File(l(), "fatal-sessions");
    }

    public File l() {
        return this.h.a();
    }

    public File m() {
        return new File(l(), "native-sessions");
    }

    public File n() {
        return new File(l(), "nonfatal-sessions");
    }

    public boolean p() {
        aj5 aj5Var = this.t;
        return aj5Var != null && aj5Var.d.get();
    }

    public File[] q() {
        LinkedList linkedList = new LinkedList();
        File fileK = k();
        FilenameFilter filenameFilter = y;
        File[] fileArrListFiles = fileK.listFiles(filenameFilter);
        if (fileArrListFiles == null) {
            fileArrListFiles = new File[0];
        }
        Collections.addAll(linkedList, fileArrListFiles);
        File[] fileArrListFiles2 = n().listFiles(filenameFilter);
        if (fileArrListFiles2 == null) {
            fileArrListFiles2 = new File[0];
        }
        Collections.addAll(linkedList, fileArrListFiles2);
        Collections.addAll(linkedList, r(l(), filenameFilter));
        return (File[]) linkedList.toArray(new File[linkedList.size()]);
    }

    public final File[] s() {
        File[] fileArrR = r(l(), x);
        Arrays.sort(fileArrR, z);
        return fileArrR;
    }

    public e45<Void> u(float f2, e45<pm5> e45Var) {
        e55<Void> e55Var;
        e45 e45VarX;
        tl5 tl5Var = this.m;
        File[] fileArrQ = ii5.this.q();
        File[] fileArrListFiles = ii5.this.m().listFiles();
        if (fileArrListFiles == null) {
            fileArrListFiles = new File[0];
        }
        if (!((fileArrQ != null && fileArrQ.length > 0) || fileArrListFiles.length > 0)) {
            ah5.a.b("No reports are available.");
            this.u.b(Boolean.FALSE);
            return c50.X(null);
        }
        ah5 ah5Var = ah5.a;
        ah5Var.b("Unsent reports are available.");
        if (this.b.b()) {
            ah5Var.b("Automatic data collection is enabled. Allowing upload.");
            this.u.b(Boolean.FALSE);
            e45VarX = c50.X(Boolean.TRUE);
        } else {
            ah5Var.b("Automatic data collection is disabled.");
            ah5Var.b("Notifying that unsent reports are available.");
            this.u.b(Boolean.TRUE);
            bj5 bj5Var = this.b;
            synchronized (bj5Var.c) {
                e55Var = bj5Var.d.a;
            }
            e45<TContinuationResult> e45VarP = e55Var.p(new pi5(this));
            ah5Var.b("Waiting for send/deleteUnsentReports to be called.");
            e55<Boolean> e55Var2 = this.v.a;
            FilenameFilter filenameFilter = qj5.a;
            f45 f45Var = new f45();
            rj5 rj5Var = new rj5(f45Var);
            e45VarP.h(rj5Var);
            e55Var2.h(rj5Var);
            e45VarX = f45Var.a;
        }
        return e45VarX.p(new e(e45Var, f2));
    }

    public final void v(rl5 rl5Var, String str) throws Throwable {
        for (String str2 : D) {
            File[] fileArrR = r(l(), new h(jo.o(str, str2, ".cls")));
            if (fileArrR.length == 0) {
                ah5.a.b("Can't find " + str2 + " data for session ID " + str);
            } else {
                ah5.a.b("Collecting " + str2 + " data for session ID " + str);
                z(rl5Var, fileArrR[0]);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01f3 A[LOOP:1: B:30:0x01f1->B:31:0x01f3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x030a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(defpackage.rl5 r34, java.lang.Thread r35, java.lang.Throwable r36, long r37, java.lang.String r39, boolean r40) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 802
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ii5.x(rl5, java.lang.Thread, java.lang.Throwable, long, java.lang.String, boolean):void");
    }

    public final void y(String str, String str2, g gVar) throws Exception {
        Throwable th;
        ql5 ql5Var;
        rl5 rl5Var = null;
        try {
            ql5Var = new ql5(l(), str + str2);
            try {
                rl5 rl5VarI = rl5.i(ql5Var);
                try {
                    gVar.a(rl5VarI);
                    vh5.g(rl5VarI, "Failed to flush to session " + str2 + " file.");
                    vh5.c(ql5Var, "Failed to close session " + str2 + " file.");
                } catch (Throwable th2) {
                    th = th2;
                    rl5Var = rl5VarI;
                    vh5.g(rl5Var, "Failed to flush to session " + str2 + " file.");
                    vh5.c(ql5Var, "Failed to close session " + str2 + " file.");
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            ql5Var = null;
        }
    }
}
