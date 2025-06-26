.class public final Lr71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lnr0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lb20;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lxr0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lll2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lb20;",
            ">;",
            "Lmb3<",
            "Lxr0;",
            ">;",
            "Lmb3<",
            "Lll2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr71;->a:Lmb3;

    .line 3
    iput-object p2, p0, Lr71;->b:Lmb3;

    .line 4
    iput-object p3, p0, Lr71;->c:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lr71;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb20;

    iget-object v1, p0, Lr71;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxr0;

    iget-object v2, p0, Lr71;->c:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lll2;

    .line 2
    iget-object v2, v2, Lll2;->f:Ljava/lang/String;

    .line 3
    new-instance v3, Lnr0;

    iget-object v4, v1, Lxr0;->c:Lwr0;

    .line 4
    monitor-enter v4

    .line 5
    :try_start_0
    iget-object v5, v4, Lwr0;->a:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v6, v4, Lwr0;->a:Ljava/math/BigInteger;

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iput-object v6, v4, Lwr0;->a:Ljava/math/BigInteger;

    .line 7
    iput-object v5, v4, Lwr0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 8
    invoke-direct {v3, v0, v1, v5, v2}, Lnr0;-><init>(Lb20;Lxr0;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit v4

    throw v0
.end method
