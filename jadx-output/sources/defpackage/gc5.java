package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Objects;

/* loaded from: classes.dex */
public class gc5 extends GestureDetector.SimpleOnGestureListener {
    public final /* synthetic */ TimePickerView a;

    public gc5(TimePickerView timePickerView) {
        this.a = timePickerView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        boolean zOnDoubleTap = super.onDoubleTap(motionEvent);
        TimePickerView timePickerView = this.a;
        int i = TimePickerView.z;
        Objects.requireNonNull(timePickerView);
        return zOnDoubleTap;
    }
}
