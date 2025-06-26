.class public final synthetic Ly02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lv02;

.field public final b:Landroid/net/Uri;

.field public final c:Lhl2;

.field public final d:Lsk2;


# direct methods
.method public constructor <init>(Lv02;Landroid/net/Uri;Lhl2;Lsk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly02;->a:Lv02;

    iput-object p2, p0, Ly02;->b:Landroid/net/Uri;

    iput-object p3, p0, Ly02;->c:Lhl2;

    iput-object p4, p0, Ly02;->d:Lsk2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Ly02;->a:Lv02;

    iget-object v2, v1, Ly02;->b:Landroid/net/Uri;

    iget-object v3, v1, Ly02;->c:Lhl2;

    iget-object v4, v1, Ly02;->d:Lsk2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    const-string v7, "android.support.customtabs.extra.SESSION"

    .line 3
    invoke-virtual {v5, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 4
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {v8, v7, v9}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6
    invoke-virtual {v5, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v7, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 7
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 9
    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v6, "androidx.browser.customtabs.extra.SHARE_STATE"

    const/4 v7, 0x0

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 12
    new-instance v11, Lcom/google/android/gms/ads/internal/overlay/zzb;

    invoke-direct {v11, v5, v9}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    .line 13
    new-instance v2, Lxs0;

    invoke-direct {v2}, Lxs0;-><init>()V

    .line 14
    iget-object v5, v0, Lv02;->b:Loh1;

    new-instance v6, Lv61;

    invoke-direct {v6, v3, v4, v9}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance v3, Lrg1;

    new-instance v4, Lx02;

    invoke-direct {v4, v2}, Lx02;-><init>(Lxs0;)V

    invoke-direct {v3, v4}, Lrg1;-><init>(Lwh1;)V

    .line 15
    invoke-virtual {v5, v6, v3}, Loh1;->a(Lv61;Lrg1;)Lsg1;

    move-result-object v3

    .line 16
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v12, 0x0

    .line 17
    invoke-virtual {v3}, Lsg1;->k()Lwb1;

    move-result-object v13

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/gms/internal/ads/zzbar;

    invoke-direct {v15, v7, v7, v7}, Lcom/google/android/gms/internal/ads/zzbar;-><init>(IIZ)V

    const/16 v16, 0x0

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Ler3;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/zzbar;Lxw0;)V

    .line 18
    invoke-virtual {v2, v4}, Lxs0;->a(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, v0, Lv02;->d:Lqk2;

    const/4 v2, 0x2

    const/4 v4, 0x3

    .line 20
    invoke-virtual {v0, v2, v4}, Lqk2;->b(II)V

    .line 21
    invoke-virtual {v3}, Lsg1;->j()Lqg1;

    move-result-object v0

    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v2, "Error in CustomTabsAdRenderer"

    .line 22
    invoke-static {v2, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    throw v0
.end method
