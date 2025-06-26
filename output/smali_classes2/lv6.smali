.class public final synthetic Llv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lqv6;


# direct methods
.method public synthetic constructor <init>(Lqv6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv6;->e:Lqv6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Llv6;->e:Lqv6;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Luz6;

    const/16 v2, 0x50

    invoke-direct {v1, v2, v2}, Luz6;-><init>(II)V

    .line 3
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lqv6;->f:Lap6;

    invoke-virtual {v3}, Lap6;->n()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lpv6;

    invoke-direct {v4, v0}, Lpv6;-><init>(Lqv6;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lhz6;->l(Ljava/lang/String;Luz6;Lgz6;Ll07;)V

    return-void
.end method
