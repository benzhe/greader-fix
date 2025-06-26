package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;

/* loaded from: classes.dex */
public class d5 extends e5 {
    public String f = null;
    public int g = -1;
    public int h = 0;
    public float i = Float.NaN;
    public float j = Float.NaN;
    public float k = Float.NaN;
    public float l = Float.NaN;
    public int m = 0;

    public static class a {
        public static SparseIntArray a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyPosition_motionTarget, 1);
            a.append(R$styleable.KeyPosition_framePosition, 2);
            a.append(R$styleable.KeyPosition_transitionEasing, 3);
            a.append(R$styleable.KeyPosition_curveFit, 4);
            a.append(R$styleable.KeyPosition_drawPath, 5);
            a.append(R$styleable.KeyPosition_percentX, 6);
            a.append(R$styleable.KeyPosition_percentY, 7);
            a.append(R$styleable.KeyPosition_keyPositionType, 9);
            a.append(R$styleable.KeyPosition_sizePercent, 8);
            a.append(R$styleable.KeyPosition_percentWidth, 11);
            a.append(R$styleable.KeyPosition_percentHeight, 12);
            a.append(R$styleable.KeyPosition_pathMotionArc, 10);
        }
    }

    @Override // defpackage.x4
    public void a(HashMap<String, m5> map) {
    }

    @Override // defpackage.x4
    public void c(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.KeyPosition);
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
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        this.f = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    } else {
                        this.f = q4.c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 4:
                    this.e = typedArrayObtainStyledAttributes.getInteger(index, this.e);
                    break;
                case 5:
                    this.h = typedArrayObtainStyledAttributes.getInt(index, this.h);
                    break;
                case 6:
                    this.k = typedArrayObtainStyledAttributes.getFloat(index, this.k);
                    break;
                case 7:
                    this.l = typedArrayObtainStyledAttributes.getFloat(index, this.l);
                    break;
                case 8:
                    float f = typedArrayObtainStyledAttributes.getFloat(index, this.j);
                    this.i = f;
                    this.j = f;
                    break;
                case 9:
                    this.m = typedArrayObtainStyledAttributes.getInt(index, this.m);
                    break;
                case 10:
                    this.g = typedArrayObtainStyledAttributes.getInt(index, this.g);
                    break;
                case 11:
                    this.i = typedArrayObtainStyledAttributes.getFloat(index, this.i);
                    break;
                case 12:
                    this.j = typedArrayObtainStyledAttributes.getFloat(index, this.j);
                    break;
                default:
                    StringBuilder sbZ = jo.z("unused attribute 0x");
                    sbZ.append(Integer.toHexString(index));
                    sbZ.append("   ");
                    sbZ.append(a.a.get(index));
                    Log.e("KeyPosition", sbZ.toString());
                    break;
            }
        }
        if (this.a == -1) {
            Log.e("KeyPosition", "no frame position");
        }
    }
}
