package defpackage;

import android.graphics.BitmapFactory;

/* loaded from: classes2.dex */
public class c07 {
    public final String a;
    public final String b;
    public final uz6 c;
    public final tz6 d;
    public final xz6 e;
    public final f07 f;
    public final Object g;
    public final boolean h;
    public final BitmapFactory.Options i;

    public c07(String str, String str2, String str3, uz6 uz6Var, xz6 xz6Var, f07 f07Var, gz6 gz6Var) {
        this.a = str;
        this.b = str2;
        this.c = uz6Var;
        this.d = gz6Var.j;
        this.e = xz6Var;
        this.f = f07Var;
        this.g = gz6Var.n;
        this.h = gz6Var.m;
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.i = options;
        BitmapFactory.Options options2 = gz6Var.k;
        options.inDensity = options2.inDensity;
        options.inDither = options2.inDither;
        options.inInputShareable = options2.inInputShareable;
        options.inJustDecodeBounds = options2.inJustDecodeBounds;
        options.inPreferredConfig = options2.inPreferredConfig;
        options.inPurgeable = options2.inPurgeable;
        options.inSampleSize = options2.inSampleSize;
        options.inScaled = options2.inScaled;
        options.inScreenDensity = options2.inScreenDensity;
        options.inTargetDensity = options2.inTargetDensity;
        options.inTempStorage = options2.inTempStorage;
        options.inPreferQualityOverSpeed = options2.inPreferQualityOverSpeed;
        options.inBitmap = options2.inBitmap;
        options.inMutable = options2.inMutable;
    }
}
