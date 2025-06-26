.class public final Lsb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkb0<",
        "Lxw0;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/zza;

.field public final b:Lsj0;

.field public final c:Lyp1;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "resize"

    const-string v1, "playVideo"

    const-string v2, "storePicture"

    const-string v3, "createCalendarEvent"

    const-string v4, "setOrientationProperties"

    const-string v5, "closeResizedAd"

    const-string v6, "unload"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x1

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x4

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x5

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x6

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 9
    new-instance v3, Lf4;

    invoke-direct {v3, v1}, Lf4;-><init>(I)V

    :goto_0
    if-ge v5, v1, :cond_0

    .line 10
    aget-object v4, v0, v5

    aget-object v6, v2, v5

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 12
    sput-object v0, Lsb0;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zza;Lsj0;Lyp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsb0;->a:Lcom/google/android/gms/ads/internal/zza;

    .line 3
    iput-object p2, p0, Lsb0;->b:Lsj0;

    .line 4
    iput-object p3, p0, Lsb0;->c:Lyp1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lxw0;

    const-string v3, "a"

    .line 2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    sget-object v4, Lsb0;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x5

    if-eq v3, v6, :cond_0

    if-eq v3, v5, :cond_0

    .line 4
    iget-object v7, v1, Lsb0;->a:Lcom/google/android/gms/ads/internal/zza;

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/ads/internal/zza;->zzkc()Z

    move-result v7

    if-nez v7, :cond_0

    .line 6
    iget-object v0, v1, Lsb0;->a:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/zza;->zzbk(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_16

    if-eq v3, v9, :cond_a

    if-eq v3, v8, :cond_9

    const/4 v4, 0x6

    if-eq v3, v6, :cond_3

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_1

    const-string v0, "Unknown MRAID command called."

    .line 7
    invoke-static {v0}, Lis0;->zzey(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, v1, Lsb0;->c:Lyp1;

    .line 9
    iget-object v0, v0, Lyp1;->a:Lop1;

    .line 10
    iget-object v0, v0, Lop1;->m:Lzc1;

    .line 11
    sget-object v2, Lcd1;->a:Lzd1;

    invoke-virtual {v0, v2}, Lxd1;->D0(Lzd1;)V

    return-void

    .line 12
    :cond_2
    iget-object v0, v1, Lsb0;->b:Lsj0;

    invoke-virtual {v0, v10}, Lsj0;->f(Z)V

    return-void

    :cond_3
    const-string v3, "forceOrientation"

    .line 13
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "allowOrientationChange"

    .line 14
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 15
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    :cond_4
    if-nez v2, :cond_5

    const-string v0, "AdWebView is null"

    .line 16
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "portrait"

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "landscape"

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v5, 0x6

    goto :goto_0

    :cond_7
    if-eqz v10, :cond_8

    const/4 v5, -0x1

    goto :goto_0

    .line 19
    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzv()I

    move-result v5

    .line 20
    :goto_0
    invoke-interface {v2, v5}, Lxw0;->setRequestedOrientation(I)V

    :goto_1
    return-void

    .line 21
    :cond_9
    new-instance v3, Lnj0;

    invoke-direct {v3, v2, v0}, Lnj0;-><init>(Lxw0;Ljava/util/Map;)V

    invoke-virtual {v3}, Lnj0;->f()V

    return-void

    .line 22
    :cond_a
    new-instance v3, Luj0;

    invoke-direct {v3, v2, v0}, Luj0;-><init>(Lxw0;Ljava/util/Map;)V

    .line 23
    iget-object v0, v3, Luj0;->d:Landroid/content/Context;

    if-nez v0, :cond_b

    const-string v0, "Activity context is not available"

    .line 24
    invoke-virtual {v3, v0}, Lyj0;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 25
    :cond_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, v3, Luj0;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzar(Landroid/content/Context;)Ll40;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ll40;->b()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "Feature is not supported by the device."

    .line 27
    invoke-virtual {v3, v0}, Lyj0;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 28
    :cond_c
    iget-object v0, v3, Luj0;->c:Ljava/util/Map;

    const-string v2, "iurl"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "Image url cannot be empty."

    .line 30
    invoke-virtual {v3, v0}, Lyj0;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 31
    :cond_d
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "Invalid image url: "

    .line 32
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3, v0}, Lyj0;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 33
    :cond_f
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzej(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v0, "Image type not recognized: "

    .line 36
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_10
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Lyj0;->d(Ljava/lang/String;)V

    goto :goto_8

    .line 37
    :cond_11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v4

    invoke-virtual {v4}, Lor0;->a()Landroid/content/res/Resources;

    move-result-object v4

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v5, v3, Luj0;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaq(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    if-eqz v4, :cond_12

    .line 39
    sget v6, Lcom/google/android/gms/ads/impl/R$string;->s1:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_12
    const-string v6, "Save image"

    :goto_4
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_13

    .line 40
    sget v6, Lcom/google/android/gms/ads/impl/R$string;->s2:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_13
    const-string v6, "Allow Ad to store image in Picture gallery?"

    .line 41
    :goto_5
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_14

    .line 42
    sget v6, Lcom/google/android/gms/ads/impl/R$string;->s3:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_14
    const-string v6, "Accept"

    :goto_6
    new-instance v7, Lwj0;

    invoke-direct {v7, v3, v0, v2}, Lwj0;-><init>(Luj0;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_15

    .line 44
    sget v0, Lcom/google/android/gms/ads/impl/R$string;->s4:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_15
    const-string v0, "Decline"

    :goto_7
    new-instance v2, Lvj0;

    invoke-direct {v2, v3}, Lvj0;-><init>(Luj0;)V

    .line 45
    invoke-virtual {v5, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_8
    return-void

    .line 48
    :cond_16
    iget-object v2, v1, Lsb0;->b:Lsj0;

    .line 49
    iget-object v3, v2, Lsj0;->k:Ljava/lang/Object;

    monitor-enter v3

    .line 50
    :try_start_0
    iget-object v5, v2, Lsj0;->m:Landroid/app/Activity;

    if-nez v5, :cond_17

    const-string v0, "Not an activity context. Cannot resize."

    .line 51
    invoke-virtual {v2, v0}, Lyj0;->d(Ljava/lang/String;)V

    .line 52
    monitor-exit v3

    goto/16 :goto_1d

    .line 53
    :cond_17
    iget-object v5, v2, Lsj0;->l:Lxw0;

    invoke-interface {v5}, Lxw0;->c()Ljy0;

    move-result-object v5

    if-nez v5, :cond_18

    const-string v0, "Webview is not yet available, size is not set."

    .line 54
    invoke-virtual {v2, v0}, Lyj0;->d(Ljava/lang/String;)V

    .line 55
    monitor-exit v3

    goto/16 :goto_1d

    .line 56
    :cond_18
    iget-object v5, v2, Lsj0;->l:Lxw0;

    invoke-interface {v5}, Lxw0;->c()Ljy0;

    move-result-object v5

    invoke-virtual {v5}, Ljy0;->b()Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    .line 57
    invoke-virtual {v2, v0}, Lyj0;->d(Ljava/lang/String;)V

    .line 58
    monitor-exit v3

    goto/16 :goto_1d

    .line 59
    :cond_19
    iget-object v5, v2, Lsj0;->l:Lxw0;

    invoke-interface {v5}, Lxw0;->E0()Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v0, "Cannot resize an expanded banner."

    .line 60
    invoke-virtual {v2, v0}, Lyj0;->d(Ljava/lang/String;)V

    .line 61
    monitor-exit v3

    goto/16 :goto_1d

    :cond_1a
    const-string v5, "width"

    .line 62
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 63
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    const-string v5, "width"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzei(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lsj0;->j:I

    :cond_1b
    const-string v5, "height"

    .line 64
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 65
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    const-string v5, "height"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzei(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lsj0;->g:I

    :cond_1c
    const-string v5, "offsetX"

    .line 66
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 67
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    const-string v5, "offsetX"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzei(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lsj0;->h:I

    :cond_1d
    const-string v5, "offsetY"

    .line 68
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    const-string v5, "offsetY"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzei(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lsj0;->i:I

    :cond_1e
    const-string v5, "allowOffscreen"

    .line 70
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    const-string v5, "allowOffscreen"

    .line 71
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lsj0;->d:Z

    :cond_1f
    const-string v5, "customClosePosition"

    .line 72
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 74
    iput-object v0, v2, Lsj0;->c:Ljava/lang/String;

    .line 75
    :cond_20
    iget v0, v2, Lsj0;->j:I

    const/4 v5, 0x0

    if-ltz v0, :cond_21

    iget v0, v2, Lsj0;->g:I

    if-ltz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_9

    :cond_21
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_22

    const-string v0, "Invalid width and height options. Cannot resize."

    .line 76
    invoke-virtual {v2, v0}, Lyj0;->d(Ljava/lang/String;)V

    .line 77
    monitor-exit v3

    goto/16 :goto_1d

    .line 78
    :cond_22
    iget-object v0, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 79
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_23

    goto/16 :goto_1c

    .line 80
    :cond_23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v11, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zzj;->zzg(Landroid/app/Activity;)[I

    move-result-object v11

    .line 81
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v12, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/app/Activity;)[I

    move-result-object v12

    .line 82
    aget v13, v11, v5

    .line 83
    aget v11, v11, v10

    .line 84
    iget v14, v2, Lsj0;->j:I

    const/16 v15, 0x32

    const/4 v4, 0x2

    if-lt v14, v15, :cond_30

    if-le v14, v13, :cond_24

    goto/16 :goto_10

    .line 85
    :cond_24
    iget v7, v2, Lsj0;->g:I

    if-lt v7, v15, :cond_2f

    if-le v7, v11, :cond_25

    goto/16 :goto_f

    :cond_25
    if-ne v7, v11, :cond_26

    if-ne v14, v13, :cond_26

    const-string v7, "Cannot resize to a full-screen ad."

    .line 86
    invoke-static {v7}, Lis0;->zzez(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 87
    :cond_26
    iget-boolean v7, v2, Lsj0;->d:Z

    if-eqz v7, :cond_2e

    .line 88
    iget-object v7, v2, Lsj0;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_a

    :sswitch_0
    const-string v11, "top-center"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, 0x1

    goto :goto_b

    :sswitch_1
    const-string v11, "bottom-center"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, 0x4

    goto :goto_b

    :sswitch_2
    const-string v11, "bottom-right"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, 0x5

    goto :goto_b

    :sswitch_3
    const-string v11, "bottom-left"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, 0x3

    goto :goto_b

    :sswitch_4
    const-string v11, "top-left"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, 0x0

    goto :goto_b

    :sswitch_5
    const-string v11, "center"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, 0x2

    goto :goto_b

    :cond_27
    :goto_a
    const/4 v7, -0x1

    :goto_b
    if-eqz v7, :cond_2d

    if-eq v7, v10, :cond_2c

    if-eq v7, v4, :cond_2b

    if-eq v7, v9, :cond_2a

    if-eq v7, v8, :cond_29

    if-eq v7, v6, :cond_28

    .line 89
    iget v7, v2, Lsj0;->e:I

    iget v11, v2, Lsj0;->h:I

    add-int/2addr v7, v11

    iget v11, v2, Lsj0;->j:I

    add-int/2addr v7, v11

    sub-int/2addr v7, v15

    .line 90
    iget v11, v2, Lsj0;->f:I

    iget v14, v2, Lsj0;->i:I

    goto :goto_d

    .line 91
    :cond_28
    iget v7, v2, Lsj0;->e:I

    iget v11, v2, Lsj0;->h:I

    add-int/2addr v7, v11

    iget v11, v2, Lsj0;->j:I

    add-int/2addr v7, v11

    sub-int/2addr v7, v15

    .line 92
    iget v11, v2, Lsj0;->f:I

    iget v14, v2, Lsj0;->i:I

    add-int/2addr v11, v14

    iget v14, v2, Lsj0;->g:I

    goto :goto_c

    .line 93
    :cond_29
    iget v7, v2, Lsj0;->e:I

    iget v11, v2, Lsj0;->h:I

    add-int/2addr v7, v11

    iget v11, v2, Lsj0;->j:I

    div-int/2addr v11, v4

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, -0x19

    .line 94
    iget v11, v2, Lsj0;->f:I

    iget v14, v2, Lsj0;->i:I

    add-int/2addr v11, v14

    iget v14, v2, Lsj0;->g:I

    goto :goto_c

    .line 95
    :cond_2a
    iget v7, v2, Lsj0;->e:I

    iget v11, v2, Lsj0;->h:I

    add-int/2addr v7, v11

    .line 96
    iget v11, v2, Lsj0;->f:I

    iget v14, v2, Lsj0;->i:I

    add-int/2addr v11, v14

    iget v14, v2, Lsj0;->g:I

    :goto_c
    add-int/2addr v11, v14

    sub-int/2addr v11, v15

    goto :goto_e

    .line 97
    :cond_2b
    iget v7, v2, Lsj0;->e:I

    iget v11, v2, Lsj0;->h:I

    add-int/2addr v7, v11

    iget v11, v2, Lsj0;->j:I

    div-int/2addr v11, v4

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, -0x19

    .line 98
    iget v11, v2, Lsj0;->f:I

    iget v14, v2, Lsj0;->i:I

    add-int/2addr v11, v14

    iget v14, v2, Lsj0;->g:I

    div-int/2addr v14, v4

    add-int/2addr v11, v14

    add-int/lit8 v11, v11, -0x19

    goto :goto_e

    .line 99
    :cond_2c
    iget v7, v2, Lsj0;->e:I

    iget v11, v2, Lsj0;->h:I

    add-int/2addr v7, v11

    iget v11, v2, Lsj0;->j:I

    div-int/2addr v11, v4

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, -0x19

    .line 100
    iget v11, v2, Lsj0;->f:I

    iget v14, v2, Lsj0;->i:I

    goto :goto_d

    .line 101
    :cond_2d
    iget v7, v2, Lsj0;->e:I

    iget v11, v2, Lsj0;->h:I

    add-int/2addr v7, v11

    .line 102
    iget v11, v2, Lsj0;->f:I

    iget v14, v2, Lsj0;->i:I

    :goto_d
    add-int/2addr v11, v14

    :goto_e
    if-ltz v7, :cond_31

    add-int/2addr v7, v15

    if-gt v7, v13, :cond_31

    .line 103
    aget v7, v12, v5

    if-lt v11, v7, :cond_31

    add-int/2addr v11, v15

    aget v7, v12, v10

    if-le v11, v7, :cond_2e

    goto :goto_11

    :cond_2e
    const/4 v7, 0x1

    goto :goto_12

    :cond_2f
    :goto_f
    const-string v7, "Height is too small or too large."

    .line 104
    invoke-static {v7}, Lis0;->zzez(Ljava/lang/String;)V

    goto :goto_11

    :cond_30
    :goto_10
    const-string v7, "Width is too small or too large."

    .line 105
    invoke-static {v7}, Lis0;->zzez(Ljava/lang/String;)V

    :cond_31
    :goto_11
    const/4 v7, 0x0

    :goto_12
    if-nez v7, :cond_32

    const/4 v6, 0x0

    goto :goto_15

    .line 106
    :cond_32
    iget-boolean v7, v2, Lsj0;->d:Z

    if-eqz v7, :cond_33

    new-array v7, v4, [I

    .line 107
    iget v11, v2, Lsj0;->e:I

    iget v12, v2, Lsj0;->h:I

    add-int/2addr v11, v12

    aput v11, v7, v5

    iget v11, v2, Lsj0;->f:I

    iget v12, v2, Lsj0;->i:I

    add-int/2addr v11, v12

    aput v11, v7, v10

    move-object v6, v7

    goto :goto_15

    .line 108
    :cond_33
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v7, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzj;->zzg(Landroid/app/Activity;)[I

    move-result-object v7

    .line 109
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v11, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/app/Activity;)[I

    move-result-object v11

    .line 110
    aget v7, v7, v5

    .line 111
    iget v12, v2, Lsj0;->e:I

    iget v13, v2, Lsj0;->h:I

    add-int/2addr v12, v13

    .line 112
    iget v13, v2, Lsj0;->f:I

    iget v14, v2, Lsj0;->i:I

    add-int/2addr v13, v14

    if-gez v12, :cond_34

    const/4 v12, 0x0

    goto :goto_13

    .line 113
    :cond_34
    iget v14, v2, Lsj0;->j:I

    add-int v6, v12, v14

    if-le v6, v7, :cond_35

    sub-int v12, v7, v14

    .line 114
    :cond_35
    :goto_13
    aget v6, v11, v5

    if-ge v13, v6, :cond_36

    .line 115
    aget v13, v11, v5

    goto :goto_14

    .line 116
    :cond_36
    iget v6, v2, Lsj0;->g:I

    add-int v7, v13, v6

    aget v14, v11, v10

    if-le v7, v14, :cond_37

    .line 117
    aget v7, v11, v10

    sub-int v13, v7, v6

    :cond_37
    :goto_14
    new-array v6, v4, [I

    aput v12, v6, v5

    aput v13, v6, v10

    :goto_15
    if-nez v6, :cond_38

    const-string v0, "Resize location out of screen or close button is not visible."

    .line 118
    invoke-virtual {v2, v0}, Lyj0;->d(Ljava/lang/String;)V

    .line 119
    monitor-exit v3

    goto/16 :goto_1d

    .line 120
    :cond_38
    sget-object v7, Los3;->j:Los3;

    iget-object v7, v7, Los3;->a:Lzr0;

    .line 121
    iget-object v7, v2, Lsj0;->m:Landroid/app/Activity;

    iget v11, v2, Lsj0;->j:I

    invoke-static {v7, v11}, Lzr0;->k(Landroid/content/Context;I)I

    move-result v7

    .line 122
    sget-object v11, Los3;->j:Los3;

    iget-object v11, v11, Los3;->a:Lzr0;

    .line 123
    iget-object v11, v2, Lsj0;->m:Landroid/app/Activity;

    iget v12, v2, Lsj0;->g:I

    invoke-static {v11, v12}, Lzr0;->k(Landroid/content/Context;I)I

    move-result v11

    .line 124
    iget-object v12, v2, Lsj0;->l:Lxw0;

    invoke-interface {v12}, Lxw0;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_45

    .line 125
    instance-of v13, v12, Landroid/view/ViewGroup;

    if-eqz v13, :cond_45

    .line 126
    move-object v13, v12

    check-cast v13, Landroid/view/ViewGroup;

    iget-object v14, v2, Lsj0;->l:Lxw0;

    invoke-interface {v14}, Lxw0;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    iget-object v13, v2, Lsj0;->r:Landroid/widget/PopupWindow;

    if-nez v13, :cond_39

    .line 128
    check-cast v12, Landroid/view/ViewGroup;

    iput-object v12, v2, Lsj0;->t:Landroid/view/ViewGroup;

    .line 129
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v12, v2, Lsj0;->l:Lxw0;

    invoke-interface {v12}, Lxw0;->getView()Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/zzj;->zzm(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 130
    new-instance v13, Landroid/widget/ImageView;

    iget-object v14, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v13, v2, Lsj0;->o:Landroid/widget/ImageView;

    .line 131
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v12, v2, Lsj0;->l:Lxw0;

    invoke-interface {v12}, Lxw0;->c()Ljy0;

    move-result-object v12

    iput-object v12, v2, Lsj0;->n:Ljy0;

    .line 133
    iget-object v12, v2, Lsj0;->t:Landroid/view/ViewGroup;

    iget-object v13, v2, Lsj0;->o:Landroid/widget/ImageView;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_16

    .line 134
    :cond_39
    invoke-virtual {v13}, Landroid/widget/PopupWindow;->dismiss()V

    .line 135
    :goto_16
    new-instance v12, Landroid/widget/RelativeLayout;

    iget-object v13, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-direct {v12, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v2, Lsj0;->s:Landroid/widget/RelativeLayout;

    .line 136
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 137
    iget-object v12, v2, Lsj0;->s:Landroid/widget/RelativeLayout;

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v13, v7, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v12, v2, Lsj0;->s:Landroid/widget/RelativeLayout;

    invoke-static {v12, v7, v11, v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v12

    iput-object v12, v2, Lsj0;->r:Landroid/widget/PopupWindow;

    .line 139
    invoke-virtual {v12, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 140
    iget-object v12, v2, Lsj0;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v12, v10}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 141
    iget-object v12, v2, Lsj0;->r:Landroid/widget/PopupWindow;

    iget-boolean v13, v2, Lsj0;->d:Z

    if-nez v13, :cond_3a

    const/4 v13, 0x1

    goto :goto_17

    :cond_3a
    const/4 v13, 0x0

    :goto_17
    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 142
    iget-object v12, v2, Lsj0;->s:Landroid/widget/RelativeLayout;

    iget-object v13, v2, Lsj0;->l:Lxw0;

    .line 143
    invoke-interface {v13}, Lxw0;->getView()Landroid/view/View;

    move-result-object v13

    const/4 v14, -0x1

    .line 144
    invoke-virtual {v12, v13, v14, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 145
    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v13, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v2, Lsj0;->p:Landroid/widget/LinearLayout;

    .line 146
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 147
    sget-object v13, Los3;->j:Los3;

    iget-object v13, v13, Los3;->a:Lzr0;

    .line 148
    iget-object v13, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-static {v13, v15}, Lzr0;->k(Landroid/content/Context;I)I

    move-result v13

    .line 149
    sget-object v14, Los3;->j:Los3;

    iget-object v14, v14, Los3;->a:Lzr0;

    .line 150
    iget-object v14, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-static {v14, v15}, Lzr0;->k(Landroid/content/Context;I)I

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    iget-object v13, v2, Lsj0;->c:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    goto :goto_18

    :sswitch_6
    const-string v14, "top-center"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    const/4 v13, 0x1

    goto :goto_19

    :sswitch_7
    const-string v14, "bottom-center"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    const/4 v13, 0x4

    goto :goto_19

    :sswitch_8
    const-string v14, "bottom-right"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    const/4 v13, 0x5

    goto :goto_19

    :sswitch_9
    const-string v14, "bottom-left"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    const/4 v13, 0x3

    goto :goto_19

    :sswitch_a
    const-string v14, "top-left"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    const/4 v13, 0x0

    goto :goto_19

    :sswitch_b
    const-string v14, "center"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    const/4 v13, 0x2

    goto :goto_19

    :cond_3b
    :goto_18
    const/4 v13, -0x1

    :goto_19
    const/16 v14, 0x9

    const/16 v15, 0xa

    if-eqz v13, :cond_41

    const/16 v5, 0xe

    if-eq v13, v10, :cond_40

    if-eq v13, v4, :cond_3f

    const/16 v4, 0xc

    if-eq v13, v9, :cond_3e

    if-eq v13, v8, :cond_3d

    const/16 v5, 0xb

    const/4 v8, 0x5

    if-eq v13, v8, :cond_3c

    .line 152
    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1a

    .line 154
    :cond_3c
    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1a

    .line 156
    :cond_3d
    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1a

    .line 158
    :cond_3e
    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1a

    :cond_3f
    const/16 v4, 0xd

    .line 160
    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1a

    .line 161
    :cond_40
    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1a

    .line 163
    :cond_41
    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    :goto_1a
    iget-object v4, v2, Lsj0;->p:Landroid/widget/LinearLayout;

    new-instance v5, Lrj0;

    invoke-direct {v5, v2}, Lrj0;-><init>(Lsj0;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v4, v2, Lsj0;->p:Landroid/widget/LinearLayout;

    const-string v5, "Close button"

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v4, v2, Lsj0;->s:Landroid/widget/RelativeLayout;

    iget-object v5, v2, Lsj0;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    iget-object v4, v2, Lsj0;->r:Landroid/widget/PopupWindow;

    .line 169
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 170
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->a:Lzr0;

    .line 171
    iget-object v5, v2, Lsj0;->m:Landroid/app/Activity;

    const/4 v8, 0x0

    aget v9, v6, v8

    invoke-static {v5, v9}, Lzr0;->k(Landroid/content/Context;I)I

    move-result v5

    .line 172
    sget-object v8, Los3;->j:Los3;

    iget-object v8, v8, Los3;->a:Lzr0;

    .line 173
    iget-object v8, v2, Lsj0;->m:Landroid/app/Activity;

    aget v9, v6, v10

    invoke-static {v8, v9}, Lzr0;->k(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x0

    .line 174
    invoke-virtual {v4, v0, v9, v5, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    aget v0, v6, v9

    aget v0, v6, v10

    .line 176
    iget-object v0, v2, Lsj0;->q:Lyp1;

    if-eqz v0, :cond_42

    .line 177
    iget-object v0, v0, Lyp1;->a:Lop1;

    .line 178
    iget-object v0, v0, Lop1;->b:Ldb1;

    .line 179
    sget-object v4, Leb1;->a:Lzd1;

    invoke-virtual {v0, v4}, Lxd1;->D0(Lzd1;)V

    .line 180
    :cond_42
    iget-object v0, v2, Lsj0;->l:Lxw0;

    invoke-static {v7, v11}, Ljy0;->d(II)Ljy0;

    move-result-object v4

    invoke-interface {v0, v4}, Lxw0;->J(Ljy0;)V

    const/4 v0, 0x0

    .line 181
    aget v4, v6, v0

    aget v0, v6, v10

    .line 182
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v5, v2, Lsj0;->m:Landroid/app/Activity;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/app/Activity;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v0, v5

    .line 183
    iget v5, v2, Lsj0;->j:I

    iget v6, v2, Lsj0;->g:I

    invoke-virtual {v2, v4, v0, v5, v6}, Lyj0;->c(IIII)V

    const-string v0, "resized"

    .line 184
    invoke-virtual {v2, v0}, Lyj0;->e(Ljava/lang/String;)V

    .line 185
    monitor-exit v3

    goto :goto_1d

    :catch_0
    move-exception v0

    const-string v4, "Cannot show popup window: "

    .line 186
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_43

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_43
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1b
    invoke-virtual {v2, v0}, Lyj0;->d(Ljava/lang/String;)V

    .line 187
    iget-object v0, v2, Lsj0;->s:Landroid/widget/RelativeLayout;

    iget-object v4, v2, Lsj0;->l:Lxw0;

    invoke-interface {v4}, Lxw0;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 188
    iget-object v0, v2, Lsj0;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_44

    .line 189
    iget-object v4, v2, Lsj0;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    iget-object v0, v2, Lsj0;->t:Landroid/view/ViewGroup;

    iget-object v4, v2, Lsj0;->l:Lxw0;

    invoke-interface {v4}, Lxw0;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    iget-object v0, v2, Lsj0;->l:Lxw0;

    iget-object v2, v2, Lsj0;->n:Ljy0;

    invoke-interface {v0, v2}, Lxw0;->J(Ljy0;)V

    .line 192
    :cond_44
    monitor-exit v3

    goto :goto_1d

    :cond_45
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    .line 193
    invoke-virtual {v2, v0}, Lyj0;->d(Ljava/lang/String;)V

    .line 194
    monitor-exit v3

    goto :goto_1d

    :cond_46
    :goto_1c
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    .line 195
    invoke-virtual {v2, v0}, Lyj0;->d(Ljava/lang/String;)V

    .line 196
    monitor-exit v3

    :goto_1d
    return-void

    :catchall_0
    move-exception v0

    .line 197
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch
.end method
