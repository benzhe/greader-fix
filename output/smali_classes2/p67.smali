.class public abstract Lp67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz57;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc97$a;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a$a;

    .line 2
    iget-object v0, v0, Ld77$d$a$a;->a:Lz57;

    .line 3
    invoke-interface {v0, p1}, Lc97;->a(Lc97$a;)V

    return-void
.end method

.method public c(Li47;)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a$a;

    .line 2
    iget-object v0, v0, Ld77$d$a$a;->a:Lz57;

    .line 3
    invoke-interface {v0, p1}, Lz57;->c(Li47;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld77$d$a$a;

    .line 2
    iget-object v0, v0, Ld77$d$a$a;->a:Lz57;

    .line 3
    invoke-interface {v0}, Lc97;->d()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ld77$d$a$a;

    .line 2
    iget-object v1, v1, Ld77$d$a$a;->a:Lz57;

    const-string v2, "delegate"

    .line 3
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 4
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
