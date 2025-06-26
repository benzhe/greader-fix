.class public Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor;
.super Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StampedLockVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor<",
        "TO;",
        "Ljava/util/concurrent/locks/StampedLock;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/locks/StampedLock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/util/concurrent/locks/StampedLock;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lov7;

    invoke-direct {v0, p2}, Lov7;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    new-instance v1, Lpv7;

    invoke-direct {v1, p2}, Lpv7;-><init>(Ljava/util/concurrent/locks/StampedLock;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$LockVisitor;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-void
.end method
