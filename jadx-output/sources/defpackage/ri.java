package defpackage;

import android.animation.TypeEvaluator;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class ri implements TypeEvaluator {
    public static final ri a = new ri();

    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f, Object obj, Object obj2) {
        int iIntValue = ((Integer) obj).intValue();
        float f2 = ((iIntValue >> 24) & Base64.BASELENGTH) / 255.0f;
        float f3 = ((iIntValue >> 16) & Base64.BASELENGTH) / 255.0f;
        float f4 = ((iIntValue >> 8) & Base64.BASELENGTH) / 255.0f;
        int iIntValue2 = ((Integer) obj2).intValue();
        float f5 = ((iIntValue2 >> 24) & Base64.BASELENGTH) / 255.0f;
        float f6 = ((iIntValue2 >> 16) & Base64.BASELENGTH) / 255.0f;
        float f7 = ((iIntValue2 >> 8) & Base64.BASELENGTH) / 255.0f;
        float fPow = (float) Math.pow(f3, 2.2d);
        float fPow2 = (float) Math.pow(f4, 2.2d);
        float fPow3 = (float) Math.pow((iIntValue & Base64.BASELENGTH) / 255.0f, 2.2d);
        float fPow4 = (float) Math.pow(f6, 2.2d);
        float fPow5 = (float) Math.pow(f7, 2.2d);
        float fPow6 = (float) Math.pow((iIntValue2 & Base64.BASELENGTH) / 255.0f, 2.2d);
        float fA = jo.a(f5, f2, f, f2);
        float fA2 = jo.a(fPow4, fPow, f, fPow);
        float fA3 = jo.a(fPow5, fPow2, f, fPow2);
        float fA4 = jo.a(fPow6, fPow3, f, fPow3);
        float fPow7 = ((float) Math.pow(fA2, 0.45454545454545453d)) * 255.0f;
        float fPow8 = ((float) Math.pow(fA3, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(fA4, 0.45454545454545453d)) * 255.0f) | (Math.round(fPow7) << 16) | (Math.round(fA * 255.0f) << 24) | (Math.round(fPow8) << 8));
    }
}
