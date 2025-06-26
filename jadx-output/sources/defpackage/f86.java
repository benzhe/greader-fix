package defpackage;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import defpackage.i47;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class f86 implements Object<i47> {
    public final e86 a;

    public f86(e86 e86Var) {
        this.a = e86Var;
    }

    public Object get() throws PackageManager.NameNotFoundException {
        Signature[] signatureArr;
        e86 e86Var = this.a;
        Objects.requireNonNull(e86Var);
        i47.d<String> dVar = i47.c;
        i47.f fVarA = i47.f.a("X-Goog-Api-Key", dVar);
        i47.f fVarA2 = i47.f.a("X-Android-Package", dVar);
        i47.f fVarA3 = i47.f.a("X-Android-Cert", dVar);
        i47 i47Var = new i47();
        pe5 pe5Var = e86Var.a;
        pe5Var.a();
        String packageName = pe5Var.a.getPackageName();
        pe5 pe5Var2 = e86Var.a;
        pe5Var2.a();
        i47Var.h(fVarA, pe5Var2.c.a);
        i47Var.h(fVarA2, packageName);
        pe5 pe5Var3 = e86Var.a;
        pe5Var3.a();
        String strC = null;
        try {
            PackageInfo packageInfo = pe5Var3.a.getPackageManager().getPackageInfo(packageName, 64);
            if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length != 0 && signatureArr[0] != null) {
                strC = de5.b.f().c(MessageDigest.getInstance("SHA1").digest(signatureArr[0].toByteArray()));
            }
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused) {
        }
        if (strC != null) {
            i47Var.h(fVarA3, strC);
        }
        return i47Var;
    }
}
