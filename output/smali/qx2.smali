.class public final Lqx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpx2$a;


# instance fields
.field public final synthetic a:Lmx2;

.field public final synthetic b:Lzw2;


# direct methods
.method public constructor <init>(Lmx2;Lzw2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqx2;->a:Lmx2;

    iput-object p2, p0, Lqx2;->b:Lzw2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lyw2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Lyw2<",
            "TQ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnx2;

    iget-object v1, p0, Lqx2;->a:Lmx2;

    iget-object v2, p0, Lqx2;->b:Lzw2;

    invoke-direct {v0, v1, v2, p1}, Lnx2;-><init>(Lmx2;Lzw2;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primitive type not supported"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c()Lyw2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyw2<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnx2;

    iget-object v1, p0, Lqx2;->a:Lmx2;

    iget-object v2, p0, Lqx2;->b:Lzw2;

    .line 2
    iget-object v3, v1, Lzw2;->c:Ljava/lang/Class;

    .line 3
    invoke-direct {v0, v1, v2, v3}, Lnx2;-><init>(Lmx2;Lzw2;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqx2;->a:Lmx2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqx2;->b:Lzw2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqx2;->a:Lmx2;

    invoke-virtual {v0}, Lzw2;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
