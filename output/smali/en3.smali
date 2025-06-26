.class public final Len3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lbn3;


# direct methods
.method public constructor <init>(Lbn3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Len3;->a:Lbn3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Len3;->a:Lbn3;

    iget-object v1, v0, Lbn3;->i:Lzm3;

    iget-object v9, v0, Lbn3;->f:Ltm3;

    iget-object v2, v0, Lbn3;->g:Landroid/webkit/WebView;

    iget-boolean v4, v0, Lbn3;->h:Z

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, v9, Ltm3;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget v3, v9, Ltm3;->m:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v9, Ltm3;->m:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "text"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-boolean p1, v1, Lzm3;->r:Z

    if-nez p1, :cond_0

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v2}, Landroid/webkit/WebView;->getX()F

    move-result v5

    .line 13
    invoke-virtual {v2}, Landroid/webkit/WebView;->getY()F

    move-result v6

    .line 14
    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    int-to-float v7, p1

    .line 15
    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, v9

    .line 16
    invoke-virtual/range {v2 .. v8}, Ltm3;->b(Ljava/lang/String;ZFFFF)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v2}, Landroid/webkit/WebView;->getX()F

    move-result v5

    .line 18
    invoke-virtual {v2}, Landroid/webkit/WebView;->getY()F

    move-result v6

    .line 19
    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    int-to-float v7, p1

    .line 20
    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, v9

    .line 21
    invoke-virtual/range {v2 .. v8}, Ltm3;->b(Ljava/lang/String;ZFFFF)V

    .line 22
    :cond_1
    :goto_0
    iget-object p1, v9, Ltm3;->g:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    iget v0, v9, Ltm3;->m:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_3

    .line 24
    :try_start_3
    iget-object p1, v1, Lzm3;->h:Lwm3;

    invoke-virtual {p1, v9}, Lwm3;->a(Ltm3;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 25
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "Failed to get webview content."

    .line 26
    invoke-static {v0, p1}, Lis0;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    const-string v1, "ContentFetchTask.processWebViewContent"

    .line 28
    iget-object v2, v0, Lor0;->e:Landroid/content/Context;

    iget-object v0, v0, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v2, v0}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v0

    .line 29
    invoke-interface {v0, p1, v1}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    const-string p1, "Json string may be malformed."

    .line 30
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :catchall_2
    move-exception p1

    .line 31
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method
