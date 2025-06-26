.class public final Lgn2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lym2;",
            "Lfn2<",
            "+",
            "Lf61;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgn2;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lym2;Landroid/content/Context;Lmm2;Lth2;)Lfn2;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdT:",
            "Lf61;",
            ">(",
            "Lym2;",
            "Landroid/content/Context;",
            "Lmm2;",
            "Lth2<",
            "TAdT;>;)",
            "Lfn2<",
            "TAdT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgn2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfn2;

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Lrm2;

    .line 3
    sget-object v1, Lym2;->e:Lym2;

    if-ne p1, v1, :cond_0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrc;

    sget-object v2, Ly40;->S3:Lo40;

    .line 5
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v2, Ly40;->Y3:Lo40;

    .line 8
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 9
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v2, Ly40;->a4:Lo40;

    .line 11
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 12
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v2, Ly40;->c4:Lo40;

    .line 14
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 15
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    sget-object v2, Ly40;->U3:Lo40;

    .line 17
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 18
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    sget-object v2, Ly40;->W3:Lo40;

    .line 20
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 21
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    move-object v2, v1

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzdrc;-><init>(Landroid/content/Context;Lym2;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_0
    sget-object v1, Lym2;->f:Lym2;

    if-ne p1, v1, :cond_1

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrc;

    sget-object v2, Ly40;->T3:Lo40;

    .line 25
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 26
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v2, Ly40;->Z3:Lo40;

    .line 28
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 29
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v2, Ly40;->b4:Lo40;

    .line 31
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 32
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v2, Ly40;->d4:Lo40;

    .line 34
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 35
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 36
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    sget-object v2, Ly40;->V3:Lo40;

    .line 37
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 38
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    sget-object v2, Ly40;->X3:Lo40;

    .line 40
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 41
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 42
    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    move-object v2, v1

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzdrc;-><init>(Landroid/content/Context;Lym2;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    sget-object v1, Lym2;->g:Lym2;

    if-ne p1, v1, :cond_2

    .line 44
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrc;

    sget-object v2, Ly40;->g4:Lo40;

    .line 45
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 46
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v2, Ly40;->i4:Lo40;

    .line 48
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 49
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v2, Ly40;->j4:Lo40;

    .line 51
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 52
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v2, Ly40;->e4:Lo40;

    .line 54
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 55
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    sget-object v2, Ly40;->f4:Lo40;

    .line 57
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 58
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    sget-object v2, Ly40;->h4:Lo40;

    .line 60
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 61
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    move-object v2, v1

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzdrc;-><init>(Landroid/content/Context;Lym2;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-direct {v0, v1}, Lrm2;-><init>(Lcom/google/android/gms/internal/ads/zzdrc;)V

    .line 64
    new-instance p2, Lkn2;

    invoke-direct {p2, v0, p3, p4}, Lkn2;-><init>(Lsm2;Lmm2;Lth2;)V

    .line 65
    new-instance p3, Lfn2;

    invoke-direct {p3, v0, p2}, Lfn2;-><init>(Lsm2;Lkn2;)V

    .line 66
    iget-object p2, p0, Lgn2;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    :cond_3
    return-object v0
.end method
