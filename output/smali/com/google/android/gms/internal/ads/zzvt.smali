.class public Lcom/google/android/gms/internal/ads/zzvt;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzvt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:[Lcom/google/android/gms/internal/ads/zzvt;

.field public final l:Z

.field public final m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqr3;

    invoke-direct {v0}, Lqr3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
    .locals 13

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 4
    aget-object v1, p2, v0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->h:Z

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->isFluid()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->m:Z

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/ads/zza;->zzc(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->q:Z

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/ads/zza;->zzd(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->r:Z

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/ads/zza;->zza(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->s:Z

    if-eqz v2, :cond_0

    .line 10
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzvt;->r:Z

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/ads/zza;->zze(Lcom/google/android/gms/ads/AdSize;)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/ads/zza;->zzb(Lcom/google/android/gms/ads/AdSize;)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    .line 19
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 20
    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 21
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    if-eqz v3, :cond_a

    .line 22
    sget-object v7, Los3;->j:Los3;

    iget-object v7, v7, Los3;->a:Lzr0;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 25
    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v7

    float-to-int v7, v8

    const/16 v8, 0x258

    if-ge v7, v8, :cond_5

    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_9

    .line 26
    sget-object v7, Los3;->j:Los3;

    iget-object v7, v7, Los3;->a:Lzr0;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const-string v8, "window"

    .line 28
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 29
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 30
    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 31
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 32
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 33
    invoke-virtual {v8, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 35
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v8, v9, :cond_7

    if-ne v7, v10, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_9

    .line 36
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 37
    sget-object v8, Los3;->j:Los3;

    iget-object v8, v8, Los3;->a:Lzr0;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "navigation_bar_width"

    const-string v10, "dimen"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_8

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    sub-int/2addr v7, v8

    .line 40
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->j:I

    goto :goto_6

    .line 41
    :cond_9
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 42
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->j:I

    .line 43
    :goto_6
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->j:I

    int-to-float v7, v7

    iget v8, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    float-to-double v7, v7

    double-to-int v9, v7

    int-to-double v10, v9

    sub-double/2addr v7, v10

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v12, v7, v10

    if-ltz v12, :cond_b

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 44
    :cond_a
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    .line 45
    sget-object v7, Los3;->j:Los3;

    iget-object v7, v7, Los3;->a:Lzr0;

    .line 46
    invoke-static {v6, v9}, Lzr0;->a(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->j:I

    :cond_b
    :goto_7
    if-eqz v4, :cond_c

    .line 47
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzvt;->n(Landroid/util/DisplayMetrics;)I

    move-result v7

    goto :goto_8

    .line 48
    :cond_c
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    .line 49
    :goto_8
    sget-object v8, Los3;->j:Los3;

    iget-object v8, v8, Los3;->a:Lzr0;

    .line 50
    invoke-static {v6, v7}, Lzr0;->a(Landroid/util/DisplayMetrics;I)I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzvt;->g:I

    const-string v6, "_as"

    const-string v8, "x"

    const/16 v10, 0x1a

    if-nez v3, :cond_11

    if-eqz v4, :cond_d

    goto :goto_a

    .line 51
    :cond_d
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->r:Z

    if-nez v3, :cond_10

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvt;->s:Z

    if-eqz v3, :cond_e

    goto :goto_9

    :cond_e
    if-eqz v2, :cond_f

    const-string v1, "320x50_mb"

    .line 52
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->e:Ljava/lang/String;

    goto :goto_b

    .line 53
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->e:Ljava/lang/String;

    goto :goto_b

    .line 54
    :cond_10
    :goto_9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->e:Ljava/lang/String;

    goto :goto_b

    .line 55
    :cond_11
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->e:Ljava/lang/String;

    .line 56
    :goto_b
    array-length v1, p2

    if-le v1, v5, :cond_12

    .line 57
    array-length v1, p2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzvt;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->k:[Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v1, 0x0

    .line 58
    :goto_c
    array-length v2, p2

    if-ge v1, v2, :cond_13

    .line 59
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->k:[Lcom/google/android/gms/internal/ads/zzvt;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzvt;

    aget-object v4, p2, v1

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_12
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->k:[Lcom/google/android/gms/internal/ads/zzvt;

    .line 61
    :cond_13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->l:Z

    .line 62
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->n:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->e:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    .line 66
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzvt;->g:I

    .line 67
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzvt;->h:Z

    .line 68
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    .line 69
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzvt;->j:I

    .line 70
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzvt;->k:[Lcom/google/android/gms/internal/ads/zzvt;

    .line 71
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzvt;->l:Z

    .line 72
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzvt;->m:Z

    .line 73
    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzvt;->n:Z

    .line 74
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzvt;->o:Z

    .line 75
    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/zzvt;->p:Z

    .line 76
    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zzvt;->q:Z

    .line 77
    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzvt;->r:Z

    .line 78
    iput-boolean p15, p0, Lcom/google/android/gms/internal/ads/zzvt;->s:Z

    return-void
.end method

.method public static C()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 17

    .line 1
    new-instance v16, Lcom/google/android/gms/internal/ads/zzvt;

    const-string v1, "320x50_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static K0()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 17

    .line 1
    new-instance v16, Lcom/google/android/gms/internal/ads/zzvt;

    const-string v1, "reward_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static L0()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 17

    .line 1
    new-instance v16, Lcom/google/android/gms/internal/ads/zzvt;

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static M0()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 17

    .line 1
    new-instance v16, Lcom/google/android/gms/internal/ads/zzvt;

    const-string v1, "invalid"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzvt;ZZZZZZZZ)V

    return-object v16
.end method

.method public static n(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x190

    if-gt p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_1

    const/16 p0, 0x32

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->f:I

    const/4 v4, 0x4

    .line 4
    invoke-static {p1, v1, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->g:I

    .line 7
    invoke-static {p1, v4, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    .line 9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->h:Z

    .line 10
    invoke-static {p1, v1, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 11
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x6

    .line 12
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->i:I

    .line 13
    invoke-static {p1, v1, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 14
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    .line 15
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->j:I

    .line 16
    invoke-static {p1, v1, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 17
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x8

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvt;->k:[Lcom/google/android/gms/internal/ads/zzvt;

    invoke-static {p1, v1, v2, p2, v3}, Lbi;->l0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 p2, 0x9

    .line 19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->l:Z

    .line 20
    invoke-static {p1, p2, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xa

    .line 22
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->m:Z

    .line 23
    invoke-static {p1, p2, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xb

    .line 25
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->n:Z

    .line 26
    invoke-static {p1, p2, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xc

    .line 28
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->o:Z

    .line 29
    invoke-static {p1, p2, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xd

    .line 31
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->p:Z

    .line 32
    invoke-static {p1, p2, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xe

    .line 34
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->q:Z

    .line 35
    invoke-static {p1, p2, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    .line 37
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->r:Z

    .line 38
    invoke-static {p1, p2, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0x10

    .line 40
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvt;->s:Z

    .line 41
    invoke-static {p1, p2, v4}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-static {p1, v0}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
