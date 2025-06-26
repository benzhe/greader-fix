.class public final Lya7$d;
.super La37$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "La37$a<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Lya7$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lya7$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRespT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lya7$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya7$a<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, La37$a;-><init>()V

    .line 2
    iput-object p1, p0, Lya7$d;->a:Lya7$a;

    return-void
.end method


# virtual methods
.method public a(Lx47;Li47;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lya7$d;->b:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lya7$d;->a:Lya7$a;

    sget-object v0, Lx47;->m:Lx47;

    const-string v1, "No value received for unary call"

    .line 4
    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    .line 5
    new-instance v1, Lz47;

    invoke-direct {v1, v0, p2}, Lz47;-><init>(Lx47;Li47;)V

    .line 6
    invoke-virtual {p1, v1}, Lya7$a;->p(Ljava/lang/Throwable;)Z

    .line 7
    :cond_0
    iget-object p1, p0, Lya7$d;->a:Lya7$a;

    iget-object p2, p0, Lya7$d;->b:Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    .line 9
    sget-object p2, Lge5;->k:Ljava/lang/Object;

    .line 10
    :cond_1
    sget-object v0, Lge5;->j:Lge5$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lge5$b;->b(Lge5;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    invoke-static {p1}, Lge5;->h(Lge5;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lya7$d;->a:Lya7$a;

    .line 13
    new-instance v1, Lz47;

    invoke-direct {v1, p1, p2}, Lz47;-><init>(Lx47;Li47;)V

    .line 14
    invoke-virtual {v0, v1}, Lya7$a;->p(Ljava/lang/Throwable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Li47;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lya7$d;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lya7$d;->b:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    sget-object p1, Lx47;->m:Lx47;

    const-string v0, "More than one value received for unary call"

    invoke-virtual {p1, v0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lx47;->a()Lz47;

    move-result-object p1

    throw p1
.end method
