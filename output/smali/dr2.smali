.class public final synthetic Ldr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La45;


# instance fields
.field public final a:Lcr2;


# direct methods
.method public constructor <init>(Lcr2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldr2;->a:Lcr2;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Ldr2;->a:Lcr2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v1, p1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :cond_0
    iget-object v0, v0, Lcr2;->c:Lpq2;

    const/16 v1, 0x7e9

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    return-void
.end method
