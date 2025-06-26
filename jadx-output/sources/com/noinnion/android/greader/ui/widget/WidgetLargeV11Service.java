package com.noinnion.android.greader.ui.widget;

import android.content.Intent;
import android.widget.RemoteViewsService;
import defpackage.qv6;

/* loaded from: classes2.dex */
public class WidgetLargeV11Service extends RemoteViewsService {
    @Override // android.widget.RemoteViewsService
    public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        return new qv6(getApplicationContext(), intent);
    }
}
