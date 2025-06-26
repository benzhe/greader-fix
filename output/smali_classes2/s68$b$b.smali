.class public final enum Ls68$b$b;
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
    sget-object v0, Lq68;->F:Lq68;

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
    invoke-virtual {p0, p1}, Ls68$b$b;->x(Lu68;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Ls68$b$b;->w()Ld78;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Ld78;->b(JLy68;)J

    .line 3
    sget-object v2, Lq68;->F:Lq68;

    invoke-interface {p1, v2}, Lu68;->D(Ly68;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long p2, p2, v0

    add-long/2addr p2, v3

    invoke-interface {p1, v2, p2, p3}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public t(Lu68;)Ld78;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ls68$b$b;->w()Ld78;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "QuarterOfYear"

    return-object v0
.end method

.method public w()Ld78;
    .locals 4

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    .line 1
    invoke-static {v0, v1, v2, v3}, Ld78;->d(JJ)Ld78;

    move-result-object v0

    return-object v0
.end method

.method public x(Lu68;)J
    .locals 4

    .line 1
    invoke-interface {p1, p0}, Lu68;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lq68;->F:Lq68;

    invoke-interface {p1, v0}, Lu68;->D(Ly68;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3

    .line 3
    div-long/2addr v0, v2

    return-wide v0

    .line 4
    :cond_0
    new-instance p1, Lc78;

    const-string v0, "Unsupported field: QuarterOfYear"

    invoke-direct {p1, v0}, Lc78;-><init>(Ljava/lang/String;)V

    throw p1
.end method
