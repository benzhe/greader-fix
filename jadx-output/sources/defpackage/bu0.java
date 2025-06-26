package defpackage;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.view.Display;
import android.view.WindowManager;

/* loaded from: classes.dex */
public final class bu0 implements SensorEventListener {
    public final SensorManager a;
    public final Display c;
    public float[] f;
    public Handler g;
    public du0 h;
    public final float[] d = new float[9];
    public final float[] e = new float[9];
    public final Object b = new Object();

    public bu0(Context context) {
        this.a = (SensorManager) context.getSystemService("sensor");
        this.c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    public final void a() {
        if (this.g == null) {
            return;
        }
        this.a.unregisterListener(this);
        this.g.post(new eu0());
        this.g = null;
    }

    public final boolean b(float[] fArr) {
        synchronized (this.b) {
            float[] fArr2 = this.f;
            if (fArr2 == null) {
                return false;
            }
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
            return true;
        }
    }

    public final void c(int i, int i2) {
        float[] fArr = this.e;
        float f = fArr[i];
        fArr[i] = fArr[i2];
        fArr[i2] = f;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == 0.0f && fArr[1] == 0.0f && fArr[2] == 0.0f) {
            return;
        }
        synchronized (this.b) {
            if (this.f == null) {
                this.f = new float[9];
            }
        }
        SensorManager.getRotationMatrixFromVector(this.d, fArr);
        int rotation = this.c.getRotation();
        if (rotation == 1) {
            SensorManager.remapCoordinateSystem(this.d, 2, 129, this.e);
        } else if (rotation == 2) {
            SensorManager.remapCoordinateSystem(this.d, 129, 130, this.e);
        } else if (rotation != 3) {
            System.arraycopy(this.d, 0, this.e, 0, 9);
        } else {
            SensorManager.remapCoordinateSystem(this.d, 130, 1, this.e);
        }
        c(1, 3);
        c(2, 6);
        c(5, 7);
        synchronized (this.b) {
            System.arraycopy(this.e, 0, this.f, 0, 9);
        }
        du0 du0Var = this.h;
        if (du0Var != null) {
            gu0 gu0Var = (gu0) du0Var;
            synchronized (gu0Var.y) {
                gu0Var.y.notifyAll();
            }
        }
    }
}
