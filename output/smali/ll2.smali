.class public final Lll2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwt3;

.field public final b:Lcom/google/android/gms/internal/ads/zzaaz;

.field public final c:Lcom/google/android/gms/internal/ads/zzajy;

.field public final d:Lcom/google/android/gms/internal/ads/zzvq;

.field public final e:Lcom/google/android/gms/internal/ads/zzvt;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/google/android/gms/internal/ads/zzaei;

.field public final j:Lcom/google/android/gms/internal/ads/zzwc;

.field public final k:I

.field public final l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field public final m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public final n:Lpt3;

.field public final o:Lxk2;

.field public final p:Z


# direct methods
.method public constructor <init>(Lnl2;Lkl2;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v2, v1, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 3
    iput-object v2, v0, Lll2;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 4
    iget-object v2, v1, Lnl2;->d:Ljava/lang/String;

    .line 5
    iput-object v2, v0, Lll2;->f:Ljava/lang/String;

    .line 6
    iget-object v2, v1, Lnl2;->c:Lwt3;

    .line 7
    iput-object v2, v0, Lll2;->a:Lwt3;

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvq;

    .line 9
    iget-object v3, v1, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 10
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzvq;->e:I

    .line 11
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    .line 12
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzvq;->g:Landroid/os/Bundle;

    .line 13
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    .line 14
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    .line 15
    iget-boolean v10, v3, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    .line 16
    iget v11, v3, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    .line 17
    iget-boolean v12, v3, Lcom/google/android/gms/internal/ads/zzvq;->l:Z

    if-nez v12, :cond_1

    .line 18
    iget-boolean v12, v1, Lnl2;->f:Z

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    .line 19
    :goto_1
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzvq;->m:Ljava/lang/String;

    .line 20
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzvq;->n:Lcom/google/android/gms/internal/ads/zzaav;

    .line 21
    iget-object v15, v3, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    .line 22
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->p:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 23
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    move-object/from16 v17, v1

    .line 24
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->r:Landroid/os/Bundle;

    move-object/from16 v18, v1

    .line 25
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->s:Ljava/util/List;

    move-object/from16 v19, v1

    .line 26
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->t:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 27
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->u:Ljava/lang/String;

    move-object/from16 v21, v1

    .line 28
    iget-boolean v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->v:Z

    move/from16 v22, v1

    .line 29
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    move-object/from16 v23, v1

    .line 30
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    move/from16 v24, v1

    .line 31
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;

    move-object/from16 v25, v1

    .line 32
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->z:Ljava/util/List;

    move-object/from16 v26, v1

    .line 33
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzvq;->A:I

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzdl(I)I

    move-result v27

    move-object v3, v2

    invoke-direct/range {v3 .. v27}, Lcom/google/android/gms/internal/ads/zzvq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaav;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvf;ILjava/lang/String;Ljava/util/List;I)V

    .line 34
    iput-object v2, v0, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    move-object/from16 v1, p1

    .line 35
    iget-object v2, v1, Lnl2;->e:Lcom/google/android/gms/internal/ads/zzaaz;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto :goto_2

    .line 36
    :cond_2
    iget-object v2, v1, Lnl2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    if-eqz v2, :cond_3

    .line 37
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaei;->j:Lcom/google/android/gms/internal/ads/zzaaz;

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 38
    :goto_2
    iput-object v2, v0, Lll2;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    .line 39
    iget-object v2, v1, Lnl2;->g:Ljava/util/ArrayList;

    .line 40
    iput-object v2, v0, Lll2;->g:Ljava/util/ArrayList;

    .line 41
    iget-object v4, v1, Lnl2;->h:Ljava/util/ArrayList;

    .line 42
    iput-object v4, v0, Lll2;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    .line 43
    :cond_4
    iget-object v2, v1, Lnl2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    if-nez v2, :cond_5

    .line 44
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaei;

    new-instance v4, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    .line 45
    :cond_5
    :goto_3
    iput-object v2, v0, Lll2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 46
    iget-object v2, v1, Lnl2;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 47
    iput-object v2, v0, Lll2;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 48
    iget v2, v1, Lnl2;->n:I

    .line 49
    iput v2, v0, Lll2;->k:I

    .line 50
    iget-object v2, v1, Lnl2;->k:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 51
    iput-object v2, v0, Lll2;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 52
    iget-object v2, v1, Lnl2;->l:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 53
    iput-object v2, v0, Lll2;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 54
    iget-object v2, v1, Lnl2;->m:Lpt3;

    .line 55
    iput-object v2, v0, Lll2;->n:Lpt3;

    .line 56
    iget-object v2, v1, Lnl2;->o:Lcom/google/android/gms/internal/ads/zzajy;

    .line 57
    iput-object v2, v0, Lll2;->c:Lcom/google/android/gms/internal/ads/zzajy;

    .line 58
    iget-object v2, v1, Lnl2;->p:Lal2;

    .line 59
    new-instance v4, Lxk2;

    invoke-direct {v4, v2, v3}, Lxk2;-><init>(Lal2;Lbl2;)V

    .line 60
    iput-object v4, v0, Lll2;->o:Lxk2;

    .line 61
    iget-boolean v1, v1, Lnl2;->q:Z

    .line 62
    iput-boolean v1, v0, Lll2;->p:Z

    return-void
.end method


# virtual methods
.method public final a()Lp90;
    .locals 2

    .line 1
    iget-object v0, p0, Lll2;->m:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-nez v0, :cond_0

    iget-object v1, p0, Lll2;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzjv()Lp90;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lll2;->l:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->zzjv()Lp90;

    move-result-object v0

    return-object v0
.end method
