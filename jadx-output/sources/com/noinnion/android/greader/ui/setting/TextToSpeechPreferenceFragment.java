package com.noinnion.android.greader.ui.setting;

import android.os.Bundle;
import com.noinnion.android.greader.reader.R;
import defpackage.dx6;
import defpackage.n56;

/* loaded from: classes2.dex */
public class TextToSpeechPreferenceFragment extends dx6 {
    public static final /* synthetic */ int l = 0;

    @Override // defpackage.dx6, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) throws NoSuchMethodException, SecurityException {
        super.onCreate(bundle);
        d(R.xml.pref_text_to_speech);
        n56.y2(getActivity(), R.string.ga_screen_preference_text_to_speech);
    }
}
