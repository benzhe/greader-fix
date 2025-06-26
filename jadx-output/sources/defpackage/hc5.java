package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import com.google.android.material.timepicker.TimePickerView;

/* loaded from: classes.dex */
public class hc5 implements View.OnTouchListener {
    public final /* synthetic */ GestureDetector e;

    public hc5(TimePickerView timePickerView, GestureDetector gestureDetector) {
        this.e = gestureDetector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (((Checkable) view).isChecked()) {
            return this.e.onTouchEvent(motionEvent);
        }
        return false;
    }
}
