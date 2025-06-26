.class public final Lxx0;
.super Lay0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lxw0;Lep3;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lay0;-><init>(Lxw0;Lep3;Z)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lay0;->Z(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
