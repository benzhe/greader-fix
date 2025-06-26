.class public abstract Lp68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu68;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Ly68;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lp68;->t(Ly68;)Ld78;

    move-result-object v0

    invoke-interface {p0, p1}, Lu68;->D(Ly68;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ld78;->a(JLy68;)I

    move-result p1

    return p1
.end method

.method public t(Ly68;)Ld78;
    .locals 2

    .line 1
    instance-of v0, p1, Lq68;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0, p1}, Lu68;->y(Ly68;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ly68;->w()Ld78;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lc78;

    const-string v1, "Unsupported field: "

    invoke-static {v1, p1}, Ljo;->p(Ljava/lang/String;Ly68;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc78;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    invoke-interface {p1, p0}, Ly68;->t(Lu68;)Ld78;

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
    sget-object v0, Lz68;->a:La78;

    if-eq p1, v0, :cond_1

    sget-object v0, Lz68;->b:La78;

    if-eq p1, v0, :cond_1

    sget-object v0, Lz68;->c:La78;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1, p0}, La78;->a(Lu68;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
