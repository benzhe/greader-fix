.class public Lc48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La48;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Li48;

.field public g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Le48;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li48;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li48;",
            "Ljava/util/Queue<",
            "Le48;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc48;->f:Li48;

    .line 3
    iget-object p1, p1, Li48;->e:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lc48;->e:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lc48;->g:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    .line 1
    new-instance p2, Le48;

    invoke-direct {p2}, Le48;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object p3, p0, Lc48;->f:Li48;

    .line 4
    iput-object p3, p2, Le48;->a:Li48;

    .line 5
    iput-object p1, p2, Le48;->b:[Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lc48;->g:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    new-instance p1, Le48;

    invoke-direct {p1}, Le48;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object p2, p0, Lc48;->f:Li48;

    .line 4
    iput-object p2, p1, Le48;->a:Li48;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lc48;->g:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc48;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Le48;

    invoke-direct {p1}, Le48;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object v0, p0, Lc48;->f:Li48;

    .line 4
    iput-object v0, p1, Le48;->a:Li48;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lc48;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 1
    new-instance p2, Le48;

    invoke-direct {p2}, Le48;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object v0, p0, Lc48;->f:Li48;

    .line 4
    iput-object v0, p2, Le48;->a:Li48;

    .line 5
    iput-object p1, p2, Le48;->b:[Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lc48;->g:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
