.class public final Lwt7$a;
.super Lwt7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwt7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwt7;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lwt7;
    .locals 0

    return-object p0
.end method

.method public throwIfReached()V
    .locals 0

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lwt7;
    .locals 0

    const-string p1, "unit"

    invoke-static {p3, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
