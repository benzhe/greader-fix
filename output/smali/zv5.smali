.class public Lzv5;
.super Ls37;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls37<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:[La37;

.field public final synthetic b:Le45;

.field public final synthetic c:Law5;


# direct methods
.method public constructor <init>(Law5;[La37;Le45;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzv5;->c:Law5;

    iput-object p2, p0, Lzv5;->a:[La37;

    iput-object p3, p0, Lzv5;->b:Le45;

    invoke-direct {p0}, Ls37;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzv5;->a:[La37;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lzv5;->b:Le45;

    iget-object v1, p0, Lzv5;->c:Law5;

    .line 3
    iget-object v1, v1, Law5;->a:Lex5;

    .line 4
    iget-object v1, v1, Lex5;->a:Lex5$c;

    .line 5
    sget-object v2, Lyv5;->a:Lyv5;

    invoke-virtual {v0, v1, v2}, Le45;->g(Ljava/util/concurrent/Executor;Lb45;)Le45;

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Lq47;->b()V

    :goto_0
    return-void
.end method

.method public f()La37;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La37<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzv5;->a:[La37;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ClientCall used before onOpen() callback"

    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lzv5;->a:[La37;

    aget-object v0, v0, v1

    return-object v0
.end method
