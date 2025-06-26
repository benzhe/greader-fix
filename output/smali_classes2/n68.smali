.class public abstract Ln68;
.super Lp68;
.source "SourceFile"

# interfaces
.implements Lk58;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp68;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Ly68;)J
    .locals 2

    .line 1
    sget-object v0, Lq68;->J:Lq68;

    if-ne p1, v0, :cond_0

    .line 2
    move-object p1, p0

    check-cast p1, Ls58;

    .line 3
    iget p1, p1, Ls58;->e:I

    int-to-long v0, p1

    return-wide v0

    .line 4
    :cond_0
    instance-of v0, p1, Lq68;

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1, p0}, Ly68;->x(Lu68;)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_1
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Ly68;)I
    .locals 3

    .line 1
    sget-object v0, Lq68;->J:Lq68;

    if-ne p1, v0, :cond_0

    .line 2
    move-object p1, p0

    check-cast p1, Ls58;

    .line 3
    iget p1, p1, Ls58;->e:I

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lp68;->t(Ly68;)Ld78;

    move-result-object v0

    invoke-virtual {p0, p1}, Ln68;->D(Ly68;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ld78;->a(JLy68;)I

    move-result p1

    return p1
.end method

.method public l(Lt68;)Lt68;
    .locals 3

    .line 1
    sget-object v0, Lq68;->J:Lq68;

    move-object v1, p0

    check-cast v1, Ls58;

    .line 2
    iget v1, v1, Ls58;->e:I

    int-to-long v1, v1

    .line 3
    invoke-interface {p1, v0, v1, v2}, Lt68;->i(Ly68;J)Lt68;

    move-result-object p1

    return-object p1
.end method

.method public w(La78;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "La78<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz68;->c:La78;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lr68;->t:Lr68;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lz68;->b:La78;

    if-eq p1, v0, :cond_2

    sget-object v0, Lz68;->d:La78;

    if-eq p1, v0, :cond_2

    .line 4
    sget-object v0, Lz68;->a:La78;

    if-eq p1, v0, :cond_2

    sget-object v0, Lz68;->e:La78;

    if-eq p1, v0, :cond_2

    .line 5
    sget-object v0, Lz68;->f:La78;

    if-eq p1, v0, :cond_2

    sget-object v0, Lz68;->g:La78;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1, p0}, La78;->a(Lu68;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public y(Ly68;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lq68;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lq68;->J:Lq68;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1, p0}, Ly68;->k(Lu68;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
