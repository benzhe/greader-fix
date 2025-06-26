.class public final Lro7;
.super Laq7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laq7<",
        "Lyp7;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lpo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpo7<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyp7;Lpo7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyp7;",
            "Lpo7<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Laq7;-><init>(Lyp7;)V

    iput-object p2, p0, Lro7;->i:Lpo7;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lro7;->i:Lpo7;

    iget-object v0, p0, Lbq7;->h:Lyp7;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lyp7;->g()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    .line 5
    iget v1, p1, Ljp7;->g:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lpo7;->i:Lpk7;

    instance-of v3, v1, Lhp7;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lhp7;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, v0}, Lhp7;->j(Ljava/lang/Throwable;)Z

    move-result v2

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p1, v0}, Lpo7;->g(Ljava/lang/Throwable;)Z

    .line 9
    invoke-virtual {p1}, Lpo7;->h()V

    .line 10
    :goto_1
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ChildContinuation["

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lro7;->i:Lpo7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
