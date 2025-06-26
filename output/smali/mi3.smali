.class public final Lmi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkg3;
.implements Lxi3;
.implements Lij3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkg3;",
        "Lxi3;",
        "Lij3;",
        "Lmi3<",
        "Lpi3;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Lnj3;

.field public B:J

.field public C:[Z

.field public D:[Z

.field public E:Z

.field public F:J

.field public G:J

.field public H:J

.field public I:I

.field public J:Z

.field public K:Z

.field public final e:Landroid/net/Uri;

.field public final f:Lek3;

.field public final g:I

.field public final h:Landroid/os/Handler;

.field public final i:Lti3;

.field public final j:Lyi3;

.field public final k:Lik3;

.field public final l:J

.field public final m:Lqk3;

.field public final n:Lsi3;

.field public final o:Lwk3;

.field public final p:Ljava/lang/Runnable;

.field public final q:Ljava/lang/Runnable;

.field public final r:Landroid/os/Handler;

.field public final s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lhj3;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lwi3;

.field public u:Lmg3;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lek3;[Lig3;ILandroid/os/Handler;Lti3;Lyi3;Lik3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmi3;->e:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lmi3;->f:Lek3;

    .line 4
    iput p4, p0, Lmi3;->g:I

    .line 5
    iput-object p5, p0, Lmi3;->h:Landroid/os/Handler;

    .line 6
    iput-object p6, p0, Lmi3;->i:Lti3;

    .line 7
    iput-object p7, p0, Lmi3;->j:Lyi3;

    .line 8
    iput-object p8, p0, Lmi3;->k:Lik3;

    int-to-long p1, p9

    .line 9
    iput-wide p1, p0, Lmi3;->l:J

    .line 10
    new-instance p1, Lqk3;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lqk3;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmi3;->m:Lqk3;

    .line 11
    new-instance p1, Lsi3;

    invoke-direct {p1, p3, p0}, Lsi3;-><init>([Lig3;Lkg3;)V

    iput-object p1, p0, Lmi3;->n:Lsi3;

    .line 12
    new-instance p1, Lwk3;

    invoke-direct {p1}, Lwk3;-><init>()V

    iput-object p1, p0, Lmi3;->o:Lwk3;

    .line 13
    new-instance p1, Lli3;

    invoke-direct {p1, p0}, Lli3;-><init>(Lmi3;)V

    iput-object p1, p0, Lmi3;->p:Ljava/lang/Runnable;

    .line 14
    new-instance p1, Loi3;

    invoke-direct {p1, p0}, Loi3;-><init>(Lmi3;)V

    iput-object p1, p0, Lmi3;->q:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lmi3;->r:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    iput-wide p1, p0, Lmi3;->H:J

    .line 17
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lmi3;->s:Landroid/util/SparseArray;

    const-wide/16 p1, -0x1

    .line 18
    iput-wide p1, p0, Lmi3;->F:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget v0, p0, Lmi3;->z:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lmi3;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lmi3;->J:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lmi3;->w:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lmi3;->z:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lmi3;->o:Lwk3;

    invoke-virtual {p1}, Lwk3;->a()Z

    move-result p1

    .line 3
    iget-object p2, p0, Lmi3;->m:Lqk3;

    invoke-virtual {p2}, Lqk3;->a()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lmi3;->e()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmi3;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmi3;->y:Z

    .line 3
    iget-wide v0, p0, Lmi3;->G:J

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final d()J
    .locals 8

    .line 1
    iget-boolean v0, p0, Lmi3;->J:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lmi3;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lmi3;->H:J

    return-wide v0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lmi3;->E:Z

    if-eqz v0, :cond_3

    const-wide v3, 0x7fffffffffffffffL

    .line 5
    iget-object v0, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    .line 6
    iget-object v6, p0, Lmi3;->D:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    .line 7
    iget-object v6, p0, Lmi3;->s:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhj3;

    invoke-virtual {v6}, Lhj3;->j()J

    move-result-wide v6

    .line 9
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lmi3;->r()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 11
    iget-wide v0, p0, Lmi3;->G:J

    return-wide v0

    :cond_5
    return-wide v3
.end method

.method public final e()V
    .locals 10

    .line 1
    new-instance v6, Lpi3;

    iget-object v2, p0, Lmi3;->e:Landroid/net/Uri;

    iget-object v3, p0, Lmi3;->f:Lek3;

    iget-object v4, p0, Lmi3;->n:Lsi3;

    iget-object v5, p0, Lmi3;->o:Lwk3;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lpi3;-><init>(Lmi3;Landroid/net/Uri;Lek3;Lsi3;Lwk3;)V

    .line 2
    iget-boolean v0, p0, Lmi3;->w:Z

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lmi3;->s()Z

    move-result v0

    invoke-static {v0}, Lc50;->D(Z)V

    .line 4
    iget-wide v4, p0, Lmi3;->B:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    iget-wide v7, p0, Lmi3;->H:J

    cmp-long v0, v7, v4

    if-ltz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lmi3;->J:Z

    .line 6
    iput-wide v2, p0, Lmi3;->H:J

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lmi3;->u:Lmg3;

    iget-wide v4, p0, Lmi3;->H:J

    invoke-interface {v0, v4, v5}, Lmg3;->d(J)J

    move-result-wide v4

    iget-wide v7, p0, Lmi3;->H:J

    .line 8
    iget-object v0, v6, Lpi3;->e:Lng3;

    iput-wide v4, v0, Lng3;->a:J

    .line 9
    iput-wide v7, v6, Lpi3;->h:J

    .line 10
    iput-boolean v1, v6, Lpi3;->g:Z

    .line 11
    iput-wide v2, p0, Lmi3;->H:J

    .line 12
    :cond_1
    invoke-virtual {p0}, Lmi3;->q()I

    move-result v0

    iput v0, p0, Lmi3;->I:I

    .line 13
    iget v0, p0, Lmi3;->g:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 14
    iget-boolean v0, p0, Lmi3;->w:Z

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lmi3;->F:J

    const-wide/16 v7, -0x1

    cmp-long v0, v4, v7

    if-nez v0, :cond_3

    iget-object v0, p0, Lmi3;->u:Lmg3;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmg3;->g()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    const/4 v5, 0x6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x3

    const/4 v5, 0x3

    goto :goto_1

    :cond_4
    move v5, v0

    .line 15
    :goto_1
    iget-object v2, p0, Lmi3;->m:Lqk3;

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 18
    :goto_2
    invoke-static {v1}, Lc50;->D(Z)V

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 20
    new-instance v9, Lrk3;

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move-object v3, v6

    move-object v4, p0

    move-wide v6, v7

    invoke-direct/range {v0 .. v7}, Lrk3;-><init>(Lqk3;Landroid/os/Looper;Lpi3;Lmi3;IJ)V

    const-wide/16 v0, 0x0

    invoke-virtual {v9, v0, v1}, Lrk3;->a(J)V

    return-void
.end method

.method public final f([Lyj3;[Z[Lri3;[ZJ)J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmi3;->w:Z

    invoke-static {v0}, Lc50;->D(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 3
    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_1

    .line 4
    :cond_0
    aget-object v2, p3, v1

    .line 5
    iget v2, v2, Lri3;->a:I

    .line 6
    iget-object v4, p0, Lmi3;->C:[Z

    aget-boolean v4, v4, v2

    invoke-static {v4}, Lc50;->D(Z)V

    .line 7
    iget v4, p0, Lmi3;->z:I

    sub-int/2addr v4, v3

    iput v4, p0, Lmi3;->z:I

    .line 8
    iget-object v3, p0, Lmi3;->C:[Z

    aput-boolean v0, v3, v2

    .line 9
    iget-object v3, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhj3;

    invoke-virtual {v2}, Lhj3;->a()V

    const/4 v2, 0x0

    .line 10
    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_6

    .line 12
    aget-object v2, p3, p2

    if-nez v2, :cond_5

    aget-object v2, p1, p2

    if-eqz v2, :cond_5

    .line 13
    aget-object v1, p1, p2

    .line 14
    invoke-interface {v1}, Lyj3;->length()I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lc50;->D(Z)V

    .line 15
    invoke-interface {v1, v0}, Lyj3;->a(I)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Lc50;->D(Z)V

    .line 16
    iget-object v2, p0, Lmi3;->A:Lnj3;

    invoke-interface {v1}, Lyj3;->b()Lkj3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnj3;->a(Lkj3;)I

    move-result v1

    .line 17
    iget-object v2, p0, Lmi3;->C:[Z

    aget-boolean v2, v2, v1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lc50;->D(Z)V

    .line 18
    iget v2, p0, Lmi3;->z:I

    add-int/2addr v2, v3

    iput v2, p0, Lmi3;->z:I

    .line 19
    iget-object v2, p0, Lmi3;->C:[Z

    aput-boolean v3, v2, v1

    .line 20
    new-instance v2, Lri3;

    invoke-direct {v2, p0, v1}, Lri3;-><init>(Lmi3;I)V

    aput-object v2, p3, p2

    .line 21
    aput-boolean v3, p4, p2

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 22
    :cond_6
    iget-boolean p1, p0, Lmi3;->x:Z

    if-nez p1, :cond_8

    .line 23
    iget-object p1, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p1, :cond_8

    .line 24
    iget-object v2, p0, Lmi3;->C:[Z

    aget-boolean v2, v2, p2

    if-nez v2, :cond_7

    .line 25
    iget-object v2, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhj3;

    invoke-virtual {v2}, Lhj3;->a()V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 26
    :cond_8
    iget p1, p0, Lmi3;->z:I

    if-nez p1, :cond_9

    .line 27
    iput-boolean v0, p0, Lmi3;->y:Z

    .line 28
    iget-object p1, p0, Lmi3;->m:Lqk3;

    invoke-virtual {p1}, Lqk3;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 29
    iget-object p1, p0, Lmi3;->m:Lqk3;

    .line 30
    iget-object p1, p1, Lqk3;->b:Lrk3;

    invoke-virtual {p1, v0}, Lrk3;->b(Z)V

    goto :goto_7

    .line 31
    :cond_9
    iget-boolean p1, p0, Lmi3;->x:Z

    if-eqz p1, :cond_a

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_a
    const-wide/16 p1, 0x0

    cmp-long v1, p5, p1

    if-eqz v1, :cond_c

    .line 32
    :goto_5
    invoke-virtual {p0, p5, p6}, Lmi3;->i(J)J

    move-result-wide p5

    .line 33
    :goto_6
    array-length p1, p3

    if-ge v0, p1, :cond_c

    .line 34
    aget-object p1, p3, v0

    if-eqz p1, :cond_b

    .line 35
    aput-boolean v3, p4, v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 36
    :cond_c
    :goto_7
    iput-boolean v3, p0, Lmi3;->x:Z

    return-wide p5
.end method

.method public final g(J)V
    .locals 0

    return-void
.end method

.method public final h()Lnj3;
    .locals 1

    .line 1
    iget-object v0, p0, Lmi3;->A:Lnj3;

    return-object v0
.end method

.method public final i(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lmi3;->u:Lmg3;

    invoke-interface {v0}, Lmg3;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 2
    :goto_0
    iput-wide p1, p0, Lmi3;->G:J

    .line 3
    iget-object v0, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lmi3;->s()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-ge v3, v0, :cond_2

    .line 5
    iget-object v4, p0, Lmi3;->C:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    .line 6
    iget-object v1, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhj3;

    invoke-virtual {v1, p1, p2, v2}, Lhj3;->h(JZ)Z

    move-result v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    .line 7
    iput-wide p1, p0, Lmi3;->H:J

    .line 8
    iput-boolean v2, p0, Lmi3;->J:Z

    .line 9
    iget-object v1, p0, Lmi3;->m:Lqk3;

    invoke-virtual {v1}, Lqk3;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v0, p0, Lmi3;->m:Lqk3;

    .line 11
    iget-object v0, v0, Lqk3;->b:Lrk3;

    invoke-virtual {v0, v2}, Lrk3;->b(Z)V

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 12
    iget-object v3, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhj3;

    iget-object v4, p0, Lmi3;->C:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lhj3;->o(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_4
    :goto_3
    iput-boolean v2, p0, Lmi3;->y:Z

    return-wide p1
.end method

.method public final j(Lmg3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmi3;->u:Lmg3;

    .line 2
    iget-object p1, p0, Lmi3;->r:Landroid/os/Handler;

    iget-object v0, p0, Lmi3;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k(Lwi3;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmi3;->t:Lwi3;

    .line 2
    iget-object p1, p0, Lmi3;->o:Lwk3;

    invoke-virtual {p1}, Lwk3;->a()Z

    .line 3
    invoke-virtual {p0}, Lmi3;->e()V

    return-void
.end method

.method public final l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmi3;->m:Lqk3;

    .line 2
    invoke-virtual {v0}, Lqk3;->b()V

    return-void
.end method

.method public final m(Lpi3;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lmi3;->F:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-wide v0, p1, Lpi3;->i:J

    .line 3
    iput-wide v0, p0, Lmi3;->F:J

    :cond_0
    return-void
.end method

.method public final n(Lpi3;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lmi3;->m(Lpi3;)V

    if-nez p2, :cond_1

    .line 2
    iget p1, p0, Lmi3;->z:I

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 4
    iget-object v0, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj3;

    iget-object v1, p0, Lmi3;->C:[Z

    aget-boolean v1, v1, p2

    invoke-virtual {v0, v1}, Lhj3;->o(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lmi3;->t:Lwi3;

    invoke-interface {p1, p0}, Lwi3;->e(Ljj3;)V

    :cond_1
    return-void
.end method

.method public final o(II)Lhj3;
    .locals 1

    .line 1
    iget-object p2, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhj3;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lhj3;

    iget-object v0, p0, Lmi3;->k:Lik3;

    invoke-direct {p2, v0}, Lhj3;-><init>(Lik3;)V

    .line 3
    iput-object p0, p2, Lhj3;->l:Lij3;

    .line 4
    iget-object v0, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public final p()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmi3;->v:Z

    .line 2
    iget-object v0, p0, Lmi3;->r:Landroid/os/Handler;

    iget-object v1, p0, Lmi3;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final q()I
    .locals 5

    .line 1
    iget-object v0, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhj3;

    .line 3
    iget-object v3, v3, Lhj3;->c:Lfj3;

    .line 4
    iget v4, v3, Lfj3;->j:I

    iget v3, v3, Lfj3;->i:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final r()J
    .locals 6

    .line 1
    iget-object v0, p0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2
    iget-object v4, p0, Lmi3;->s:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhj3;

    invoke-virtual {v4}, Lhj3;->j()J

    move-result-wide v4

    .line 4
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final s()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lmi3;->H:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
