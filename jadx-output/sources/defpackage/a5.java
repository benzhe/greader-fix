package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class a5 extends x4 {
    public int e = 0;
    public int f = -1;
    public float g = Float.NaN;
    public float h = 0.0f;
    public float i = Float.NaN;
    public int j = -1;
    public float k = Float.NaN;
    public float l = Float.NaN;
    public float m = Float.NaN;
    public float n = Float.NaN;
    public float o = Float.NaN;
    public float p = Float.NaN;
    public float q = Float.NaN;
    public float r = Float.NaN;
    public float s = Float.NaN;
    public float t = Float.NaN;
    public float u = Float.NaN;

    public static class a {
        public static SparseIntArray a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyCycle_motionTarget, 1);
            a.append(R$styleable.KeyCycle_framePosition, 2);
            a.append(R$styleable.KeyCycle_transitionEasing, 3);
            a.append(R$styleable.KeyCycle_curveFit, 4);
            a.append(R$styleable.KeyCycle_waveShape, 5);
            a.append(R$styleable.KeyCycle_wavePeriod, 6);
            a.append(R$styleable.KeyCycle_waveOffset, 7);
            a.append(R$styleable.KeyCycle_waveVariesBy, 8);
            a.append(R$styleable.KeyCycle_android_alpha, 9);
            a.append(R$styleable.KeyCycle_android_elevation, 10);
            a.append(R$styleable.KeyCycle_android_rotation, 11);
            a.append(R$styleable.KeyCycle_android_rotationX, 12);
            a.append(R$styleable.KeyCycle_android_rotationY, 13);
            a.append(R$styleable.KeyCycle_transitionPathRotate, 14);
            a.append(R$styleable.KeyCycle_android_scaleX, 15);
            a.append(R$styleable.KeyCycle_android_scaleY, 16);
            a.append(R$styleable.KeyCycle_android_translationX, 17);
            a.append(R$styleable.KeyCycle_android_translationY, 18);
            a.append(R$styleable.KeyCycle_android_translationZ, 19);
            a.append(R$styleable.KeyCycle_motionProgress, 20);
        }
    }

    public a5() {
        this.d = new HashMap<>();
    }

    @Override // defpackage.x4
    public void a(HashMap<String, m5> map) {
        m5 m5Var;
        StringBuilder sbZ = jo.z("add ");
        sbZ.append(map.size());
        sbZ.append(" values");
        String string = sbZ.toString();
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int iMin = Math.min(2, stackTrace.length - 1);
        String strN = StringUtils.SPACE;
        for (int i = 1; i <= iMin; i++) {
            StackTraceElement stackTraceElement = stackTrace[i];
            StringBuilder sbZ2 = jo.z(".(");
            sbZ2.append(stackTrace[i].getFileName());
            sbZ2.append(":");
            sbZ2.append(stackTrace[i].getLineNumber());
            sbZ2.append(") ");
            sbZ2.append(stackTrace[i].getMethodName());
            String string2 = sbZ2.toString();
            strN = jo.n(strN, StringUtils.SPACE);
            Log.v("KeyCycle", string + strN + string2 + strN);
        }
        for (String str : map.keySet()) {
            m5Var = map.get(str);
            str.hashCode();
            str.hashCode();
            switch (str) {
                case "rotationX":
                    m5Var.b(this.a, this.o);
                    break;
                case "rotationY":
                    m5Var.b(this.a, this.p);
                    break;
                case "translationX":
                    m5Var.b(this.a, this.s);
                    break;
                case "translationY":
                    m5Var.b(this.a, this.t);
                    break;
                case "translationZ":
                    m5Var.b(this.a, this.u);
                    break;
                case "progress":
                    m5Var.b(this.a, this.i);
                    break;
                case "scaleX":
                    m5Var.b(this.a, this.q);
                    break;
                case "scaleY":
                    m5Var.b(this.a, this.r);
                    break;
                case "rotation":
                    m5Var.b(this.a, this.m);
                    break;
                case "elevation":
                    m5Var.b(this.a, this.l);
                    break;
                case "transitionPathRotate":
                    m5Var.b(this.a, this.n);
                    break;
                case "alpha":
                    m5Var.b(this.a, this.k);
                    break;
                case "waveOffset":
                    m5Var.b(this.a, this.h);
                    break;
                default:
                    Log.v("WARNING KeyCycle", "  UNKNOWN  " + str);
                    break;
            }
        }
    }

    @Override // defpackage.x4
    public void b(HashSet<String> hashSet) {
        if (!Float.isNaN(this.k)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.l)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.m)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.s)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.t)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.u)) {
            hashSet.add("translationZ");
        }
        if (this.d.size() > 0) {
            Iterator<String> it = this.d.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + it.next());
            }
        }
    }

    @Override // defpackage.x4
    public void c(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.KeyCycle);
        SparseIntArray sparseIntArray = a.a;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            switch (a.a.get(index)) {
                case 1:
                    if (MotionLayout.G0) {
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.b);
                        this.b = resourceId;
                        if (resourceId == -1) {
                            this.c = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        } else {
                            break;
                        }
                    } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        this.c = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    } else {
                        this.b = typedArrayObtainStyledAttributes.getResourceId(index, this.b);
                        break;
                    }
                case 2:
                    this.a = typedArrayObtainStyledAttributes.getInt(index, this.a);
                    break;
                case 3:
                    typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 4:
                    this.e = typedArrayObtainStyledAttributes.getInteger(index, this.e);
                    break;
                case 5:
                    this.f = typedArrayObtainStyledAttributes.getInt(index, this.f);
                    break;
                case 6:
                    this.g = typedArrayObtainStyledAttributes.getFloat(index, this.g);
                    break;
                case 7:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 5) {
                        this.h = typedArrayObtainStyledAttributes.getDimension(index, this.h);
                        break;
                    } else {
                        this.h = typedArrayObtainStyledAttributes.getFloat(index, this.h);
                        break;
                    }
                case 8:
                    this.j = typedArrayObtainStyledAttributes.getInt(index, this.j);
                    break;
                case 9:
                    this.k = typedArrayObtainStyledAttributes.getFloat(index, this.k);
                    break;
                case 10:
                    this.l = typedArrayObtainStyledAttributes.getDimension(index, this.l);
                    break;
                case 11:
                    this.m = typedArrayObtainStyledAttributes.getFloat(index, this.m);
                    break;
                case 12:
                    this.o = typedArrayObtainStyledAttributes.getFloat(index, this.o);
                    break;
                case 13:
                    this.p = typedArrayObtainStyledAttributes.getFloat(index, this.p);
                    break;
                case 14:
                    this.n = typedArrayObtainStyledAttributes.getFloat(index, this.n);
                    break;
                case 15:
                    this.q = typedArrayObtainStyledAttributes.getFloat(index, this.q);
                    break;
                case 16:
                    this.r = typedArrayObtainStyledAttributes.getFloat(index, this.r);
                    break;
                case 17:
                    this.s = typedArrayObtainStyledAttributes.getDimension(index, this.s);
                    break;
                case 18:
                    this.t = typedArrayObtainStyledAttributes.getDimension(index, this.t);
                    break;
                case 19:
                    this.u = typedArrayObtainStyledAttributes.getDimension(index, this.u);
                    break;
                case 20:
                    this.i = typedArrayObtainStyledAttributes.getFloat(index, this.i);
                    break;
                default:
                    StringBuilder sbZ = jo.z("unused attribute 0x");
                    sbZ.append(Integer.toHexString(index));
                    sbZ.append("   ");
                    sbZ.append(a.a.get(index));
                    Log.e("KeyCycle", sbZ.toString());
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(java.util.HashMap<java.lang.String, defpackage.b5> r15) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a5.e(java.util.HashMap):void");
    }
}
