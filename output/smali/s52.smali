.class public final Ls52;
.super Let3;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lsy0;

.field public final g:Lnl2;

.field public final h:Lgk1;

.field public i:Lus3;


# direct methods
.method public constructor <init>(Lsy0;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Let3;-><init>()V

    .line 2
    new-instance v0, Lnl2;

    invoke-direct {v0}, Lnl2;-><init>()V

    iput-object v0, p0, Ls52;->g:Lnl2;

    .line 3
    new-instance v1, Lgk1;

    invoke-direct {v1}, Lgk1;-><init>()V

    iput-object v1, p0, Ls52;->h:Lgk1;

    .line 4
    iput-object p1, p0, Ls52;->f:Lsy0;

    .line 5
    iput-object p3, v0, Lnl2;->d:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Ls52;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final G3(Lo90;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls52;->h:Lgk1;

    .line 2
    iput-object p1, v0, Lgk1;->c:Lo90;

    return-void
.end method

.method public final H2(Lj90;Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls52;->h:Lgk1;

    .line 2
    iput-object p1, v0, Lgk1;->d:Lj90;

    .line 3
    iget-object p1, p0, Ls52;->g:Lnl2;

    .line 4
    iput-object p2, p1, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    return-void
.end method

.method public final I1(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls52;->g:Lnl2;

    .line 2
    iput-object p1, v0, Lnl2;->l:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lnl2;->f:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzjz()Lpt3;

    move-result-object p1

    iput-object p1, v0, Lnl2;->m:Lpt3;

    :cond_0
    return-void
.end method

.method public final J6(Lus3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls52;->i:Lus3;

    return-void
.end method

.method public final Q3(Lz80;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls52;->h:Lgk1;

    .line 2
    iput-object p1, v0, Lgk1;->a:Lz80;

    return-void
.end method

.method public final X0(Lcom/google/android/gms/internal/ads/zzaei;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls52;->g:Lnl2;

    .line 2
    iput-object p1, v0, Lnl2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    return-void
.end method

.method public final a1(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls52;->g:Lnl2;

    .line 2
    iput-object p1, v0, Lnl2;->k:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->getManualImpressionsEnabled()Z

    move-result p1

    iput-boolean p1, v0, Lnl2;->f:Z

    :cond_0
    return-void
.end method

.method public final i4(Lwt3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls52;->g:Lnl2;

    .line 2
    iput-object p1, v0, Lnl2;->c:Lwt3;

    return-void
.end method

.method public final o4()Lat3;
    .locals 7

    .line 1
    iget-object v0, p0, Ls52;->h:Lgk1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v5, Ldk1;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Ldk1;-><init>(Lgk1;Lhk1;)V

    .line 4
    iget-object v0, p0, Ls52;->g:Lnl2;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, v5, Ldk1;->c:Lo90;

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    iget-object v2, v5, Ldk1;->a:Lz80;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-object v2, v5, Ldk1;->b:Lu80;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object v2, v5, Ldk1;->f:Lm4;

    .line 13
    iget v2, v2, Lm4;->g:I

    if-lez v2, :cond_3

    const/4 v2, 0x3

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    iget-object v2, v5, Ldk1;->e:Led0;

    if-eqz v2, :cond_4

    const/4 v2, 0x7

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_4
    iput-object v1, v0, Lnl2;->g:Ljava/util/ArrayList;

    .line 18
    iget-object v0, p0, Ls52;->g:Lnl2;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v5, Ldk1;->f:Lm4;

    .line 20
    iget v2, v2, Lm4;->g:I

    .line 21
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 22
    :goto_0
    iget-object v3, v5, Ldk1;->f:Lm4;

    .line 23
    iget v4, v3, Lm4;->g:I

    if-ge v2, v4, :cond_5

    .line 24
    invoke-virtual {v3, v2}, Lm4;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_5
    iput-object v1, v0, Lnl2;->h:Ljava/util/ArrayList;

    .line 26
    iget-object v0, p0, Ls52;->g:Lnl2;

    .line 27
    iget-object v1, v0, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    if-nez v1, :cond_6

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->C()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v1

    .line 29
    iput-object v1, v0, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 30
    :cond_6
    new-instance v0, Lv52;

    iget-object v2, p0, Ls52;->e:Landroid/content/Context;

    iget-object v3, p0, Ls52;->f:Lsy0;

    iget-object v4, p0, Ls52;->g:Lnl2;

    iget-object v6, p0, Ls52;->i:Lus3;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lv52;-><init>(Landroid/content/Context;Lsy0;Lnl2;Ldk1;Lus3;)V

    return-object v0
.end method

.method public final u3(Led0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls52;->h:Lgk1;

    .line 2
    iput-object p1, v0, Lgk1;->e:Led0;

    return-void
.end method

.method public final w6(Lcom/google/android/gms/internal/ads/zzajy;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls52;->g:Lnl2;

    .line 2
    iput-object p1, v0, Lnl2;->o:Lcom/google/android/gms/internal/ads/zzajy;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaaz;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(ZZZ)V

    iput-object p1, v0, Lnl2;->e:Lcom/google/android/gms/internal/ads/zzaaz;

    return-void
.end method

.method public final x1(Lu80;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls52;->h:Lgk1;

    .line 2
    iput-object p1, v0, Lgk1;->b:Lu80;

    return-void
.end method

.method public final z5(Ljava/lang/String;Lg90;La90;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls52;->h:Lgk1;

    .line 2
    iget-object v1, v0, Lgk1;->f:Lm4;

    invoke-virtual {v1, p1, p2}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, v0, Lgk1;->g:Lm4;

    invoke-virtual {p2, p1, p3}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
