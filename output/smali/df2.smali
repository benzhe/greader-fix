.class public final Ldf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lef2;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lgr0;

.field public b:Lzv2;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgr0;Lzv2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldf2;->a:Lgr0;

    .line 3
    iput-object p2, p0, Ldf2;->b:Lzv2;

    .line 4
    iput-object p3, p0, Ldf2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lef2;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Liw2;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    .line 3
    sget-object v1, Ly40;->u3:Lo40;

    .line 4
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, p0, Ldf2;->a:Lgr0;

    iget-object v1, p0, Ldf2;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lgr0;->b(Ljava/lang/String;)Law2;

    move-result-object v0

    .line 8
    :cond_0
    iget-object v1, p0, Ldf2;->a:Lgr0;

    iget-object v2, p0, Ldf2;->c:Ljava/lang/String;

    .line 9
    invoke-interface {v1, v2}, Lgr0;->a(Ljava/lang/String;)Law2;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Law2;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 10
    invoke-static {v2}, Lnt2;->u([Ljava/lang/Object;)Lnt2;

    move-result-object v2

    .line 11
    new-instance v4, Lgf2;

    invoke-direct {v4, v0, v1}, Lgf2;-><init>(Law2;Law2;)V

    sget-object v0, Lms0;->a:Lzv2;

    .line 12
    new-instance v1, Lgv2;

    invoke-direct {v1, v2, v3, v0, v4}, Lgv2;-><init>(Lit2;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v1
.end method
