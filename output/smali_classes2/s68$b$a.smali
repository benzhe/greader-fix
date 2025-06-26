.class public final enum Ls68$b$a;
.super Ls68$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls68$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Ls68$b;-><init>(Ljava/lang/String;ILs68$a;)V

    return-void
.end method


# virtual methods
.method public k(Lu68;)Z
    .locals 1

    .line 1
    sget-object v0, Lq68;->B:Lq68;

    invoke-interface {p1, v0}, Lu68;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lq68;->F:Lq68;

    invoke-interface {p1, v0}, Lu68;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lq68;->I:Lq68;

    .line 2
    invoke-interface {p1, v0}, Lu68;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ls68$b;->C(Lu68;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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
    invoke-virtual {p0, p1}, Ls68$b$a;->x(Lu68;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Ls68$b$a;->w()Ld78;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Ld78;->b(JLy68;)J

    .line 3
    sget-object v2, Lq68;->B:Lq68;

    invoke-interface {p1, v2}, Lu68;->D(Ly68;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    add-long/2addr p2, v3

    invoke-interface {p1, v2, p2, p3}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public t(Lu68;)Ld78;
    .locals 8

    .line 1
    invoke-interface {p1, p0}, Lu68;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Ls68$b;->f:Ls68$b;

    invoke-interface {p1, v0}, Lu68;->D(Ly68;)J

    move-result-wide v0

    const-wide/16 v2, 0x5b

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 3
    sget-object v0, Lq68;->I:Lq68;

    invoke-interface {p1, v0}, Lu68;->D(Ly68;)J

    move-result-wide v0

    .line 4
    sget-object p1, Lo58;->g:Lo58;

    invoke-virtual {p1, v0, v1}, Lo58;->M(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v4, v5, v2, v3}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x5a

    invoke-static {v4, v5, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const-wide/16 v6, 0x2

    cmp-long p1, v0, v6

    if-nez p1, :cond_2

    .line 5
    invoke-static {v4, v5, v2, v3}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x4

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Ls68$b$a;->w()Ld78;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const-wide/16 v0, 0x5c

    .line 7
    invoke-static {v4, v5, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 8
    :cond_5
    new-instance p1, Lc78;

    const-string v0, "Unsupported field: DayOfQuarter"

    invoke-direct {p1, v0}, Lc78;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DayOfQuarter"

    return-object v0
.end method

.method public w()Ld78;
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    .line 1
    invoke-static/range {v0 .. v5}, Ld78;->e(JJJ)Ld78;

    move-result-object v0

    return-object v0
.end method

.method public x(Lu68;)J
    .locals 5

    .line 1
    invoke-interface {p1, p0}, Lu68;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lq68;->B:Lq68;

    invoke-interface {p1, v0}, Lu68;->k(Ly68;)I

    move-result v0

    .line 3
    sget-object v1, Lq68;->F:Lq68;

    invoke-interface {p1, v1}, Lu68;->k(Ly68;)I

    move-result v1

    .line 4
    sget-object v2, Lq68;->I:Lq68;

    invoke-interface {p1, v2}, Lu68;->D(Ly68;)J

    move-result-wide v2

    .line 5
    sget-object p1, Ls68$b;->i:[I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    sget-object v4, Lo58;->g:Lo58;

    invoke-virtual {v4, v2, v3}, Lo58;->M(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    aget p1, p1, v1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 6
    :cond_1
    new-instance p1, Lc78;

    const-string v0, "Unsupported field: DayOfQuarter"

    invoke-direct {p1, v0}, Lc78;-><init>(Ljava/lang/String;)V

    throw p1
.end method
