.class public Le78$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly68;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le78;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final j:Ld78;

.field public static final k:Ld78;

.field public static final l:Ld78;

.field public static final m:Ld78;

.field public static final n:Ld78;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Le78;

.field public final g:Lb78;

.field public final h:Lb78;

.field public final i:Ld78;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x7

    .line 1
    invoke-static {v0, v1, v2, v3}, Ld78;->d(JJ)Ld78;

    move-result-object v0

    sput-object v0, Le78$a;->j:Ld78;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x4

    const-wide/16 v7, 0x6

    .line 2
    invoke-static/range {v1 .. v8}, Ld78;->f(JJJJ)Ld78;

    move-result-object v0

    sput-object v0, Le78$a;->k:Ld78;

    const-wide/16 v5, 0x34

    const-wide/16 v7, 0x36

    .line 3
    invoke-static/range {v1 .. v8}, Ld78;->f(JJJJ)Ld78;

    move-result-object v0

    sput-object v0, Le78$a;->l:Ld78;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x34

    const-wide/16 v5, 0x35

    .line 4
    invoke-static/range {v1 .. v6}, Ld78;->e(JJJ)Ld78;

    move-result-object v0

    sput-object v0, Le78$a;->m:Ld78;

    .line 5
    sget-object v0, Lq68;->I:Lq68;

    .line 6
    iget-object v0, v0, Lq68;->h:Ld78;

    .line 7
    sput-object v0, Le78$a;->n:Ld78;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le78;Lb78;Lb78;Ld78;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le78$a;->e:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le78$a;->f:Le78;

    .line 4
    iput-object p3, p0, Le78$a;->g:Lb78;

    .line 5
    iput-object p4, p0, Le78$a;->h:Lb78;

    .line 6
    iput-object p5, p0, Le78$a;->i:Ld78;

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 0

    add-int/lit8 p1, p1, 0x7

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p2, p1

    .line 1
    div-int/lit8 p2, p2, 0x7

    return p2
.end method

.method public final b(Lu68;I)J
    .locals 1

    .line 1
    sget-object v0, Lq68;->B:Lq68;

    invoke-interface {p1, v0}, Lu68;->k(Ly68;)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1, p2}, Le78$a;->d(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p2, p1}, Le78$a;->a(II)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public final c(Lu68;)Ld78;
    .locals 8

    .line 1
    iget-object v0, p0, Le78$a;->f:Le78;

    .line 2
    iget-object v0, v0, Le78;->e:Lm48;

    .line 3
    invoke-virtual {v0}, Lm48;->K()I

    move-result v0

    .line 4
    sget-object v1, Lq68;->x:Lq68;

    invoke-interface {p1, v1}, Lu68;->k(Ly68;)I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x7

    .line 5
    invoke-static {v1, v0}, Lkt7;->g(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Le78$a;->b(Lu68;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2

    cmp-long v7, v1, v3

    if-nez v7, :cond_0

    .line 7
    invoke-static {p1}, Lj58;->y(Lu68;)Lj58;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj58;->k(Lu68;)Le58;

    move-result-object p1

    sget-object v0, Lr68;->n:Lr68;

    invoke-virtual {p1, v5, v6, v0}, Le58;->O(JLb78;)Le58;

    move-result-object p1

    invoke-virtual {p0, p1}, Le78$a;->c(Lu68;)Ld78;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    sget-object v3, Lq68;->B:Lq68;

    invoke-interface {p1, v3}, Lu68;->k(Ly68;)I

    move-result v3

    invoke-virtual {p0, v3, v0}, Le78$a;->d(II)I

    move-result v0

    .line 9
    sget-object v3, Lq68;->I:Lq68;

    invoke-interface {p1, v3}, Lu68;->k(Ly68;)I

    move-result v3

    int-to-long v3, v3

    .line 10
    invoke-static {v3, v4}, Lx48;->K(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x16e

    goto :goto_0

    :cond_1
    const/16 v3, 0x16d

    .line 11
    :goto_0
    iget-object v4, p0, Le78$a;->f:Le78;

    .line 12
    iget v4, v4, Le78;->f:I

    add-int/2addr v3, v4

    .line 13
    invoke-virtual {p0, v0, v3}, Le78$a;->a(II)I

    move-result v0

    int-to-long v3, v0

    cmp-long v7, v1, v3

    if-ltz v7, :cond_2

    .line 14
    invoke-static {p1}, Lj58;->y(Lu68;)Lj58;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj58;->k(Lu68;)Le58;

    move-result-object p1

    sget-object v0, Lr68;->n:Lr68;

    invoke-virtual {p1, v5, v6, v0}, Le58;->P(JLb78;)Le58;

    move-result-object p1

    invoke-virtual {p0, p1}, Le78$a;->c(Lu68;)Ld78;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    .line 15
    invoke-static {v1, v2, v3, v4}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public final d(II)I
    .locals 3

    sub-int/2addr p1, p2

    const/4 p2, 0x7

    .line 1
    invoke-static {p1, p2}, Lkt7;->g(II)I

    move-result p1

    neg-int v0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2
    iget-object v2, p0, Le78$a;->f:Le78;

    .line 3
    iget v2, v2, Le78;->f:I

    if-le v1, v2, :cond_0

    rsub-int/lit8 v0, p1, 0x7

    :cond_0
    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k(Lu68;)Z
    .locals 2

    .line 1
    sget-object v0, Lq68;->x:Lq68;

    invoke-interface {p1, v0}, Lu68;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Le78$a;->h:Lb78;

    sget-object v1, Lr68;->n:Lr68;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    sget-object v1, Lr68;->o:Lr68;

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lq68;->A:Lq68;

    invoke-interface {p1, v0}, Lu68;->y(Ly68;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    sget-object v1, Lr68;->p:Lr68;

    if-ne v0, v1, :cond_2

    .line 6
    sget-object v0, Lq68;->B:Lq68;

    invoke-interface {p1, v0}, Lu68;->y(Ly68;)Z

    move-result p1

    return p1

    .line 7
    :cond_2
    sget-object v1, Ls68;->a:Lb78;

    if-ne v0, v1, :cond_3

    .line 8
    sget-object v0, Lq68;->C:Lq68;

    invoke-interface {p1, v0}, Lu68;->y(Ly68;)Z

    move-result p1

    return p1

    .line 9
    :cond_3
    sget-object v1, Lr68;->u:Lr68;

    if-ne v0, v1, :cond_4

    .line 10
    sget-object v0, Lq68;->C:Lq68;

    invoke-interface {p1, v0}, Lu68;->y(Ly68;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public l(Lt68;J)Lt68;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lt68;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le78$a;->i:Ld78;

    invoke-virtual {v0, p2, p3, p0}, Ld78;->a(JLy68;)I

    move-result v0

    .line 2
    invoke-interface {p1, p0}, Lu68;->k(Ly68;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v2, p0, Le78$a;->h:Lb78;

    sget-object v3, Lr68;->u:Lr68;

    if-ne v2, v3, :cond_4

    .line 4
    iget-object v2, p0, Le78$a;->f:Le78;

    .line 5
    iget-object v2, v2, Le78;->i:Ly68;

    .line 6
    invoke-interface {p1, v2}, Lu68;->k(Ly68;)I

    move-result v2

    int-to-long v3, v1

    sub-long/2addr p2, v3

    long-to-double p2, p2

    const-wide v3, 0x404a16b851eb851fL    # 52.1775

    mul-double p2, p2, v3

    double-to-long p2, p2

    .line 7
    sget-object v1, Lr68;->n:Lr68;

    invoke-interface {p1, p2, p3, v1}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    .line 8
    invoke-interface {p1, p0}, Lu68;->k(Ly68;)I

    move-result p2

    if-le p2, v0, :cond_1

    .line 9
    iget-object p2, p0, Le78$a;->f:Le78;

    .line 10
    iget-object p2, p2, Le78;->i:Ly68;

    .line 11
    invoke-interface {p1, p2}, Lu68;->k(Ly68;)I

    move-result p2

    int-to-long p2, p2

    .line 12
    invoke-interface {p1, p2, p3, v1}, Lt68;->C(JLb78;)Lt68;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {p1, p0}, Lu68;->k(Ly68;)I

    move-result p2

    if-ge p2, v0, :cond_2

    const-wide/16 p2, 0x2

    .line 14
    invoke-interface {p1, p2, p3, v1}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    .line 15
    :cond_2
    iget-object p2, p0, Le78$a;->f:Le78;

    .line 16
    iget-object p2, p2, Le78;->i:Ly68;

    .line 17
    invoke-interface {p1, p2}, Lu68;->k(Ly68;)I

    move-result p2

    sub-int/2addr v2, p2

    int-to-long p2, v2

    .line 18
    invoke-interface {p1, p2, p3, v1}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    .line 19
    invoke-interface {p1, p0}, Lu68;->k(Ly68;)I

    move-result p2

    if-le p2, v0, :cond_3

    const-wide/16 p2, 0x1

    .line 20
    invoke-interface {p1, p2, p3, v1}, Lt68;->C(JLb78;)Lt68;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1

    :cond_4
    sub-int/2addr v0, v1

    int-to-long p2, v0

    .line 21
    iget-object v0, p0, Le78$a;->g:Lb78;

    invoke-interface {p1, p2, p3, v0}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public t(Lu68;)Ld78;
    .locals 6

    .line 1
    iget-object v0, p0, Le78$a;->h:Lb78;

    sget-object v1, Lr68;->n:Lr68;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Le78$a;->i:Ld78;

    return-object p1

    .line 3
    :cond_0
    sget-object v1, Lr68;->o:Lr68;

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lq68;->A:Lq68;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lr68;->p:Lr68;

    if-ne v0, v1, :cond_2

    .line 6
    sget-object v0, Lq68;->B:Lq68;

    .line 7
    :goto_0
    iget-object v1, p0, Le78$a;->f:Le78;

    .line 8
    iget-object v1, v1, Le78;->e:Lm48;

    .line 9
    invoke-virtual {v1}, Lm48;->K()I

    move-result v1

    .line 10
    sget-object v2, Lq68;->x:Lq68;

    invoke-interface {p1, v2}, Lu68;->k(Ly68;)I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x7

    .line 11
    invoke-static {v2, v1}, Lkt7;->g(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 12
    invoke-interface {p1, v0}, Lu68;->k(Ly68;)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Le78$a;->d(II)I

    move-result v1

    .line 13
    invoke-interface {p1, v0}, Lu68;->t(Ly68;)Ld78;

    move-result-object p1

    .line 14
    iget-wide v2, p1, Ld78;->e:J

    long-to-int v0, v2

    .line 15
    invoke-virtual {p0, v1, v0}, Le78$a;->a(II)I

    move-result v0

    int-to-long v2, v0

    .line 16
    iget-wide v4, p1, Ld78;->h:J

    long-to-int p1, v4

    .line 17
    invoke-virtual {p0, v1, p1}, Le78$a;->a(II)I

    move-result p1

    int-to-long v0, p1

    .line 18
    invoke-static {v2, v3, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 19
    :cond_2
    sget-object v1, Ls68;->a:Lb78;

    if-ne v0, v1, :cond_3

    .line 20
    invoke-virtual {p0, p1}, Le78$a;->c(Lu68;)Ld78;

    move-result-object p1

    return-object p1

    .line 21
    :cond_3
    sget-object v1, Lr68;->u:Lr68;

    if-ne v0, v1, :cond_4

    .line 22
    sget-object v0, Lq68;->I:Lq68;

    invoke-interface {p1, v0}, Lu68;->t(Ly68;)Ld78;

    move-result-object p1

    return-object p1

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le78$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le78$a;->f:Le78;

    invoke-virtual {v1}, Le78;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ld78;
    .locals 1

    .line 1
    iget-object v0, p0, Le78$a;->i:Ld78;

    return-object v0
.end method

.method public x(Lu68;)J
    .locals 11

    .line 1
    iget-object v0, p0, Le78$a;->f:Le78;

    .line 2
    iget-object v0, v0, Le78;->e:Lm48;

    .line 3
    invoke-virtual {v0}, Lm48;->K()I

    move-result v0

    .line 4
    sget-object v1, Lq68;->x:Lq68;

    invoke-interface {p1, v1}, Lu68;->k(Ly68;)I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v0, 0x7

    .line 5
    invoke-static {v2, v0}, Lkt7;->g(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 6
    iget-object v3, p0, Le78$a;->h:Lb78;

    sget-object v4, Lr68;->n:Lr68;

    if-ne v3, v4, :cond_0

    int-to-long v0, v2

    return-wide v0

    .line 7
    :cond_0
    sget-object v5, Lr68;->o:Lr68;

    if-ne v3, v5, :cond_1

    .line 8
    sget-object v0, Lq68;->A:Lq68;

    invoke-interface {p1, v0}, Lu68;->k(Ly68;)I

    move-result p1

    .line 9
    invoke-virtual {p0, p1, v2}, Le78$a;->d(II)I

    move-result v0

    .line 10
    invoke-virtual {p0, v0, p1}, Le78$a;->a(II)I

    move-result p1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v5, Lr68;->p:Lr68;

    if-ne v3, v5, :cond_2

    .line 12
    sget-object v0, Lq68;->B:Lq68;

    invoke-interface {p1, v0}, Lu68;->k(Ly68;)I

    move-result p1

    .line 13
    invoke-virtual {p0, p1, v2}, Le78$a;->d(II)I

    move-result v0

    .line 14
    invoke-virtual {p0, v0, p1}, Le78$a;->a(II)I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 15
    :cond_2
    sget-object v2, Ls68;->a:Lb78;

    const/16 v5, 0x16e

    const-wide/16 v6, 0x35

    const-wide/16 v8, 0x0

    const/16 v10, 0x16d

    if-ne v3, v2, :cond_6

    .line 16
    iget-object v2, p0, Le78$a;->f:Le78;

    .line 17
    iget-object v2, v2, Le78;->e:Lm48;

    .line 18
    invoke-virtual {v2}, Lm48;->K()I

    move-result v2

    .line 19
    invoke-interface {p1, v1}, Lu68;->k(Ly68;)I

    move-result v1

    sub-int/2addr v1, v2

    .line 20
    invoke-static {v1, v0}, Lkt7;->g(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p0, p1, v0}, Le78$a;->b(Lu68;I)J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-nez v3, :cond_3

    .line 22
    invoke-static {p1}, Lj58;->y(Lu68;)Lj58;

    move-result-object v1

    invoke-virtual {v1, p1}, Lj58;->k(Lu68;)Le58;

    move-result-object p1

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v1, v2, v4}, Le58;->O(JLb78;)Le58;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1, v0}, Le78$a;->b(Lu68;I)J

    move-result-wide v0

    long-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    cmp-long v3, v1, v6

    if-ltz v3, :cond_5

    .line 24
    sget-object v3, Lq68;->B:Lq68;

    invoke-interface {p1, v3}, Lu68;->k(Ly68;)I

    move-result v3

    invoke-virtual {p0, v3, v0}, Le78$a;->d(II)I

    move-result v0

    .line 25
    sget-object v3, Lq68;->I:Lq68;

    invoke-interface {p1, v3}, Lu68;->k(Ly68;)I

    move-result p1

    int-to-long v3, p1

    .line 26
    invoke-static {v3, v4}, Lx48;->K(J)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v5, 0x16d

    .line 27
    :goto_1
    iget-object p1, p0, Le78$a;->f:Le78;

    .line 28
    iget p1, p1, Le78;->f:I

    add-int/2addr v5, p1

    .line 29
    invoke-virtual {p0, v0, v5}, Le78$a;->a(II)I

    move-result p1

    int-to-long v3, p1

    cmp-long v0, v1, v3

    if-ltz v0, :cond_5

    add-int/lit8 p1, p1, -0x1

    int-to-long v3, p1

    sub-long/2addr v1, v3

    :cond_5
    long-to-int p1, v1

    :goto_2
    int-to-long v0, p1

    return-wide v0

    .line 30
    :cond_6
    sget-object v2, Lr68;->u:Lr68;

    if-ne v3, v2, :cond_b

    .line 31
    iget-object v2, p0, Le78$a;->f:Le78;

    .line 32
    iget-object v2, v2, Le78;->e:Lm48;

    .line 33
    invoke-virtual {v2}, Lm48;->K()I

    move-result v2

    .line 34
    invoke-interface {p1, v1}, Lu68;->k(Ly68;)I

    move-result v1

    sub-int/2addr v1, v2

    .line 35
    invoke-static {v1, v0}, Lkt7;->g(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 36
    sget-object v1, Lq68;->I:Lq68;

    invoke-interface {p1, v1}, Lu68;->k(Ly68;)I

    move-result v1

    .line 37
    invoke-virtual {p0, p1, v0}, Le78$a;->b(Lu68;I)J

    move-result-wide v2

    cmp-long v4, v2, v8

    if-nez v4, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_7
    cmp-long v4, v2, v6

    if-gez v4, :cond_8

    goto :goto_4

    .line 38
    :cond_8
    sget-object v4, Lq68;->B:Lq68;

    invoke-interface {p1, v4}, Lu68;->k(Ly68;)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Le78$a;->d(II)I

    move-result p1

    int-to-long v6, v1

    .line 39
    invoke-static {v6, v7}, Lx48;->K(J)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const/16 v5, 0x16d

    .line 40
    :goto_3
    iget-object v0, p0, Le78$a;->f:Le78;

    .line 41
    iget v0, v0, Le78;->f:I

    add-int/2addr v5, v0

    .line 42
    invoke-virtual {p0, p1, v5}, Le78$a;->a(II)I

    move-result p1

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    :goto_4
    int-to-long v0, v1

    return-wide v0

    .line 43
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
