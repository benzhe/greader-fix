.class public abstract Lo67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly57;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg37;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Lb97;->a(Lg37;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Lb97;->b(I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Ly57;->c(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Ly57;->d(I)V

    return-void
.end method

.method public e(Lo37;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Ly57;->e(Lo37;)V

    return-void
.end method

.method public f(Lx47;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Ly57;->f(Lx47;)V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0}, Lb97;->flush()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Ly57;->g(Ljava/lang/String;)V

    return-void
.end method

.method public h(Lc77;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Ly57;->h(Lc77;)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0}, Ly57;->i()V

    return-void
.end method

.method public j(Lm37;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Ly57;->j(Lm37;)V

    return-void
.end method

.method public l(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Lb97;->l(Ljava/io/InputStream;)V

    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a;

    .line 2
    iget-object v0, v0, Ld77$d$a;->a:Ly57;

    .line 3
    invoke-interface {v0, p1}, Ly57;->n(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ld77$d$a;

    .line 2
    iget-object v1, v1, Ld77$d$a;->a:Ly57;

    const-string v2, "delegate"

    .line 3
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 4
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
