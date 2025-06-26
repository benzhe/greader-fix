.class public Ld68;
.super Lp68;
.source "SourceFile"


# instance fields
.field public final synthetic e:Le58;

.field public final synthetic f:Lu68;

.field public final synthetic g:Lj58;

.field public final synthetic h:Lz48;


# direct methods
.method public constructor <init>(Le58;Lu68;Lj58;Lz48;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld68;->e:Le58;

    iput-object p2, p0, Ld68;->f:Lu68;

    iput-object p3, p0, Ld68;->g:Lj58;

    iput-object p4, p0, Ld68;->h:Lz48;

    invoke-direct {p0}, Lp68;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Ly68;)J
    .locals 2

    .line 1
    iget-object v0, p0, Ld68;->e:Le58;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ly68;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld68;->e:Le58;

    invoke-interface {v0, p1}, Lu68;->D(Ly68;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Ld68;->f:Lu68;

    invoke-interface {v0, p1}, Lu68;->D(Ly68;)J

    move-result-wide v0

    return-wide v0
.end method

.method public t(Ly68;)Ld78;
    .locals 1

    .line 1
    iget-object v0, p0, Ld68;->e:Le58;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ly68;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld68;->e:Le58;

    invoke-virtual {v0, p1}, Lp68;->t(Ly68;)Ld78;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Ld68;->f:Lu68;

    invoke-interface {v0, p1}, Lu68;->t(Ly68;)Ld78;

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
    sget-object v0, Lz68;->b:La78;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Ld68;->g:Lj58;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lz68;->a:La78;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Ld68;->h:Lz48;

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lz68;->c:La78;

    if-ne p1, v0, :cond_2

    .line 6
    iget-object v0, p0, Ld68;->f:Lu68;

    invoke-interface {v0, p1}, Lu68;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-interface {p1, p0}, La78;->a(Lu68;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Ly68;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld68;->e:Le58;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ly68;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld68;->e:Le58;

    invoke-virtual {v0, p1}, Le58;->y(Ly68;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Ld68;->f:Lu68;

    invoke-interface {v0, p1}, Lu68;->y(Ly68;)Z

    move-result p1

    return p1
.end method
