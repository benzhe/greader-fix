.class public abstract Lr37;
.super Lg47;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lr37<",
        "TT;>;>",
        "Lg47<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg47;-><init>()V

    return-void
.end method


# virtual methods
.method public b(JLjava/util/concurrent/TimeUnit;)Lg47;
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld57;

    .line 2
    iget-object v0, v0, Ld57;->a:Lg47;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lg47;->b(JLjava/util/concurrent/TimeUnit;)Lg47;

    return-object p0
.end method

.method public c()Lg47;
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ld57;

    .line 2
    iget-object v0, v0, Ld57;->a:Lg47;

    .line 3
    invoke-virtual {v0}, Lg47;->c()Lg47;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ld57;

    .line 2
    iget-object v1, v1, Ld57;->a:Lg47;

    const-string v2, "delegate"

    .line 3
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 4
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
