.class public final synthetic Lhx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgt2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljy0;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Ld23;

.field public final g:Lb60;

.field public final h:Lcom/google/android/gms/internal/ads/zzbar;

.field public final i:Lcom/google/android/gms/ads/internal/zzm;

.field public final j:Lcom/google/android/gms/ads/internal/zzb;

.field public final k:Lep3;

.field public final l:Lsk2;

.field public final m:Lwk2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljy0;Ljava/lang/String;ZZLd23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lsk2;Lwk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhx0;->a:Landroid/content/Context;

    iput-object p2, p0, Lhx0;->b:Ljy0;

    iput-object p3, p0, Lhx0;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lhx0;->d:Z

    iput-boolean p5, p0, Lhx0;->e:Z

    iput-object p6, p0, Lhx0;->f:Ld23;

    iput-object p7, p0, Lhx0;->g:Lb60;

    iput-object p8, p0, Lhx0;->h:Lcom/google/android/gms/internal/ads/zzbar;

    iput-object p9, p0, Lhx0;->i:Lcom/google/android/gms/ads/internal/zzm;

    iput-object p10, p0, Lhx0;->j:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p11, p0, Lhx0;->k:Lep3;

    iput-object p12, p0, Lhx0;->l:Lsk2;

    iput-object p13, p0, Lhx0;->m:Lwk2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lhx0;->a:Landroid/content/Context;

    iget-object v4, v1, Lhx0;->b:Ljy0;

    iget-object v5, v1, Lhx0;->c:Ljava/lang/String;

    iget-boolean v6, v1, Lhx0;->d:Z

    iget-boolean v15, v1, Lhx0;->e:Z

    iget-object v7, v1, Lhx0;->f:Ld23;

    iget-object v8, v1, Lhx0;->g:Lb60;

    iget-object v9, v1, Lhx0;->h:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v11, v1, Lhx0;->i:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v12, v1, Lhx0;->j:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v14, v1, Lhx0;->k:Lep3;

    iget-object v13, v1, Lhx0;->l:Lsk2;

    iget-object v10, v1, Lhx0;->m:Lwk2;

    const/16 v2, 0x108

    .line 1
    :try_start_0
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbft;

    .line 3
    sget v2, Lmx0;->f0:I

    .line 4
    new-instance v2, Lky0;

    invoke-direct {v2, v0}, Lky0;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v0, Lmx0;

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object v2, v0

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v13

    move-object v13, v14

    move-object/from16 v19, v14

    move-object/from16 v14, v16

    move v1, v15

    move-object/from16 v15, v17

    invoke-direct/range {v2 .. v15}, Lmx0;-><init>(Lky0;Ljy0;Ljava/lang/String;ZLd23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lo50;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lsk2;Lwk2;)V

    move-object/from16 v2, v18

    .line 6
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbft;-><init>(Lxw0;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    move-object/from16 v3, v19

    .line 8
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Lxw0;Lep3;Z)Lww0;

    move-result-object v0

    .line 9
    invoke-interface {v2, v0}, Lxw0;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 10
    new-instance v0, Lpw0;

    invoke-direct {v0, v2}, Lpw0;-><init>(Lxw0;)V

    invoke-interface {v2, v0}, Lxw0;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v2

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 13
    throw v0
.end method
