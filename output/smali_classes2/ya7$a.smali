.class public final Lya7$a;
.super Lge5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lge5<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final l:La37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La37<",
            "*TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La37;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La37<",
            "*TRespT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lge5;-><init>()V

    .line 2
    iput-object p1, p0, Lya7$a;->l:La37;

    return-void
.end method


# virtual methods
.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lya7$a;->l:La37;

    const-string v1, "GrpcFuture was cancelled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, La37;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lya7$a;->l:La37;

    const-string v2, "clientCall"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    new-instance v0, Lge5$d;

    invoke-direct {v0, p1}, Lge5$d;-><init>(Ljava/lang/Throwable;)V

    .line 2
    sget-object p1, Lge5;->j:Lge5$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lge5$b;->b(Lge5;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Lge5;->h(Lge5;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
