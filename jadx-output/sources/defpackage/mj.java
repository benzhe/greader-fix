package defpackage;

import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;

/* loaded from: classes.dex */
public class mj implements lj {
    public WebViewProviderFactoryBoundaryInterface a;

    public mj(WebViewProviderFactoryBoundaryInterface webViewProviderFactoryBoundaryInterface) {
        this.a = webViewProviderFactoryBoundaryInterface;
    }

    @Override // defpackage.lj
    public String[] a() {
        return this.a.getSupportedFeatures();
    }

    @Override // defpackage.lj
    public WebkitToCompatConverterBoundaryInterface getWebkitToCompatConverter() {
        return (WebkitToCompatConverterBoundaryInterface) g08.a(WebkitToCompatConverterBoundaryInterface.class, this.a.getWebkitToCompatConverter());
    }
}
