.class public final enum Ls68$b$c;
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lt68;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls68$b$c;->w()Ld78;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Ld78;->b(JLy68;)J

    .line 2
    invoke-virtual {p0, p1}, Ls68$b$c;->x(Lu68;)J

    move-result-wide v0

    sub-long v2, p2, v0

    xor-long v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    xor-long v4, p2, v0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subtraction overflows a long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    sget-object p2, Lr68;->n:Lr68;

    invoke-interface {p1, v2, v3, p2}, Lt68;->I(JLb78;)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public t(Lu68;)Ld78;
    .locals 4

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

    .line 4
    invoke-static {p1}, Ls68$b;->K(I)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lc78;

    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {p1, v0}, Lc78;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method

.method public w()Ld78;
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x34

    const-wide/16 v4, 0x35

    .line 1
    invoke-static/range {v0 .. v5}, Ld78;->e(JJJ)Ld78;

    move-result-object v0

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

    invoke-static {p1}, Ls68$b;->D(Lp48;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_0
    new-instance p1, Lc78;

    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {p1, v0}, Lc78;-><init>(Ljava/lang/String;)V

    throw p1
.end method
