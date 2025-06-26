.class public final Lfx0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljy0;Ljava/lang/String;ZZLd23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lsk2;Lwk2;)Lxw0;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lix0;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ly40;->a(Landroid/content/Context;)V

    .line 2
    :try_start_0
    new-instance v0, Lhx0;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lhx0;-><init>(Landroid/content/Context;Ljy0;Ljava/lang/String;ZZLd23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lsk2;Lwk2;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbr;->zza(Lgt2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxw0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    new-instance v1, Lix0;

    const-string v2, "Webview initialization failed."

    invoke-direct {v1, v2, v0}, Lix0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
