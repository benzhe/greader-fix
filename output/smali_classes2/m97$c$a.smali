.class public Lm97$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm97$c;->Y(Ljava/net/SocketAddress;Lb67$a;Lz27;)Ld67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lk57$b;


# direct methods
.method public constructor <init>(Lm97$c;Lk57$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lm97$c$a;->e:Lk57$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lm97$c$a;->e:Lk57$b;

    .line 2
    iget-wide v1, v0, Lk57$b;->a:J

    const-wide/16 v3, 0x2

    mul-long v3, v3, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3
    iget-object v3, v0, Lk57$b;->b:Lk57;

    .line 4
    iget-object v3, v3, Lk57;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    iget-wide v4, v0, Lk57$b;->a:J

    invoke-virtual {v3, v4, v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    sget-object v3, Lk57;->c:Ljava/util/logging/Logger;

    .line 7
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v0, v0, Lk57$b;->b:Lk57;

    .line 8
    iget-object v0, v0, Lk57;->a:Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Increased {0} to {1}"

    invoke-virtual {v3, v4, v0, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
