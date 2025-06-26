package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R$styleable;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public class g5 extends x4 {
    public Method q;
    public Method r;
    public Method s;
    public float t;
    public String e = null;
    public int f = -1;
    public String g = null;
    public String h = null;
    public int i = -1;
    public int j = -1;
    public View k = null;
    public float l = 0.1f;
    public boolean m = true;
    public boolean n = true;
    public boolean o = true;
    public float p = Float.NaN;
    public boolean u = false;
    public RectF v = new RectF();
    public RectF w = new RectF();

    public static class a {
        public static SparseIntArray a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyTrigger_framePosition, 8);
            a.append(R$styleable.KeyTrigger_onCross, 4);
            a.append(R$styleable.KeyTrigger_onNegativeCross, 1);
            a.append(R$styleable.KeyTrigger_onPositiveCross, 2);
            a.append(R$styleable.KeyTrigger_motionTarget, 7);
            a.append(R$styleable.KeyTrigger_triggerId, 6);
            a.append(R$styleable.KeyTrigger_triggerSlack, 5);
            a.append(R$styleable.KeyTrigger_motion_triggerOnCollision, 9);
            a.append(R$styleable.KeyTrigger_motion_postLayoutCollision, 10);
            a.append(R$styleable.KeyTrigger_triggerReceiver, 11);
        }
    }

    public g5() {
        this.d = new HashMap<>();
    }

    @Override // defpackage.x4
    public void a(HashMap<String, m5> map) {
    }

    @Override // defpackage.x4
    public void b(HashSet<String> hashSet) {
    }

    @Override // defpackage.x4
    public void c(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.KeyTrigger);
        SparseIntArray sparseIntArray = a.a;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            switch (a.a.get(index)) {
                case 1:
                    this.g = typedArrayObtainStyledAttributes.getString(index);
                    continue;
                case 2:
                    this.h = typedArrayObtainStyledAttributes.getString(index);
                    continue;
                case 4:
                    this.e = typedArrayObtainStyledAttributes.getString(index);
                    continue;
                case 5:
                    this.l = typedArrayObtainStyledAttributes.getFloat(index, this.l);
                    continue;
                case 6:
                    this.i = typedArrayObtainStyledAttributes.getResourceId(index, this.i);
                    continue;
                case 7:
                    if (MotionLayout.G0) {
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.b);
                        this.b = resourceId;
                        if (resourceId == -1) {
                            this.c = typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            continue;
                        }
                    } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        this.c = typedArrayObtainStyledAttributes.getString(index);
                    } else {
                        this.b = typedArrayObtainStyledAttributes.getResourceId(index, this.b);
                    }
                case 8:
                    int integer = typedArrayObtainStyledAttributes.getInteger(index, this.a);
                    this.a = integer;
                    this.p = (integer + 0.5f) / 100.0f;
                    continue;
                case 9:
                    this.j = typedArrayObtainStyledAttributes.getResourceId(index, this.j);
                    continue;
                case 10:
                    this.u = typedArrayObtainStyledAttributes.getBoolean(index, this.u);
                    continue;
                case 11:
                    this.f = typedArrayObtainStyledAttributes.getResourceId(index, this.f);
                    break;
            }
            StringBuilder sbZ = jo.z("unused attribute 0x");
            sbZ.append(Integer.toHexString(index));
            sbZ.append("   ");
            sbZ.append(a.a.get(index));
            Log.e("KeyTrigger", sbZ.toString());
        }
    }

    public final void e(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }
}
