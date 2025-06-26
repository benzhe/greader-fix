package defpackage;

import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.internal.ads.zzbar;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.UUID;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class os3 {
    public static os3 j = new os3();
    public final zr0 a;
    public final wr3 b;
    public final String c;
    public final t40 d;
    public final v40 e;
    public final u40 f;
    public final zzbar g;
    public final Random h;
    public final WeakHashMap<QueryInfo, String> i;

    public os3() throws NoSuchAlgorithmException {
        zr0 zr0Var = new zr0();
        wr3 wr3Var = new wr3(new mr3(), new jr3(), new m30(), new z90(), new tn0(), new vo0(), new vk0(), new ca0());
        t40 t40Var = new t40();
        v40 v40Var = new v40();
        u40 u40Var = new u40();
        UUID uuidRandomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(uuidRandomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(uuidRandomUUID.getMostSignificantBits()).toByteArray();
        String string = new BigInteger(1, byteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                string = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        zzbar zzbarVar = new zzbar(0, 204890000, true);
        Random random = new Random();
        WeakHashMap<QueryInfo, String> weakHashMap = new WeakHashMap<>();
        this.a = zr0Var;
        this.b = wr3Var;
        this.d = t40Var;
        this.e = v40Var;
        this.f = u40Var;
        this.c = string;
        this.g = zzbarVar;
        this.h = random;
        this.i = weakHashMap;
    }

    public static u40 a() {
        return j.f;
    }
}
