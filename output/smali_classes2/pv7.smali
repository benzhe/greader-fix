.class public final synthetic Lpv7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/locks/StampedLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpv7;->a:Ljava/util/concurrent/locks/StampedLock;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpv7;->a:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->asWriteLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method
