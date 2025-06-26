package defpackage;

import com.r0adkll.slidr.widget.SliderPanel;

/* loaded from: classes2.dex */
public class f17 implements Runnable {
    public final /* synthetic */ SliderPanel e;

    public f17(SliderPanel sliderPanel) {
        this.e = sliderPanel;
    }

    @Override // java.lang.Runnable
    public void run() {
        SliderPanel sliderPanel = this.e;
        sliderPanel.f = sliderPanel.getHeight();
    }
}
