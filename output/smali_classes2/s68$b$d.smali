.class public final enum Ls68$b$d;
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
    sget-object v0, Lq68;->C:Lq68;

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lt68;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ls68$b$d;->k(Lu68;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lq68;->I:Lq68;

    .line 3
    iget-object v0, v0, Lq68;->h:Ld78;

    .line 4
    sget-object v1, Ls68$b;->h:Ls68$b;

    invoke-virtual {v0, p2, p3, v1}, Ld78;->a(JLy68;)I

    move-result p2

    .line 5
    invoke-static {p1}, Lp48;->V(Lu68;)Lp48;

    move-result-object p3

    .line 6
    sget-object v0, Lq68;->x:Lq68;

    invoke-virtual {p3, v0}, Lp48;->k(Ly68;)I

    move-result v1

    .line 7
    invoke-static {p3}, Ls68$b;->D(Lp48;)I

    move-result p3

    const/16 v2, 0x35

    const/16 v3, 0x34

    if-ne p3, v2, :cond_0

    .line 8
    invoke-static {p2}, Ls68$b;->K(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    const/16 p3, 0x34

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 9
    invoke-static {p2, v3, v2}, Lp48;->c0(III)Lp48;

    move-result-object p2

    .line 10
    invoke-virtual {p2, v0}, Lp48;->k(Ly68;)I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr p3, v3

    mul-int/lit8 p3, p3, 0x7

    add-int/2addr p3, v1

    int-to-long v0, p3

    .line 11
    invoke-virtual {p2, v0, v1}, Lp48;->g0(J)Lp48;

    move-result-object p2

    .line 12
    invoke-interface {p1, p2}, Lt68;->x(Lv68;)Lt68;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    new-instance p1, Lc78;

    const-string p2, "Unsupported field: WeekBasedYear"

    invoke-direct {p1, p2}, Lc78;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Lu68;)Ld78;
    .locals 0

    .line 1
    sget-object p1, Lq68;->I:Lq68;

    .line 2
    iget-object p1, p1, Lq68;->h:Ld78;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WeekBasedYear"

    return-object v0
.end method

.method public w()Ld78;
    .locals 1

    .line 1
    sget-object v0, Lq68;->I:Lq68;

    .line 2
    iget-object v0, v0, Lq68;->h:Ld78;

    return-object v0
.end method

.method public x(Lu68;)J
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Lu68;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lp48;->V(Lu68;)Lp48;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ls68$b;->I(Lp48;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 4
    :cond_0
    new-instance p1, Lc78;

    const-string v0, "Unsupported field: WeekBasedYear"

    invoke-direct {p1, v0}, Lc78;-><init>(Ljava/lang/String;)V

    throw p1
.end method
