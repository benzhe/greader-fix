.class public abstract Lav2;
.super Lsu2$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lav2$b;,
        Lav2$c;,
        Lav2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lsu2$i<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field public static final n:Lav2$a;

.field public static final o:Ljava/util/logging/Logger;


# instance fields
.field private volatile l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lav2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lav2;->o:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lav2$c;

    const-class v2, Lav2;

    const-class v3, Ljava/util/Set;

    const-string v4, "l"

    .line 3
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lav2;

    const-string v4, "m"

    .line 4
    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lav2$c;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    new-instance v2, Lav2$b;

    invoke-direct {v2, v0}, Lav2$b;-><init>(Lbv2;)V

    move-object v8, v1

    move-object v1, v2

    .line 6
    :goto_0
    sput-object v1, Lav2;->n:Lav2$a;

    if-eqz v8, :cond_0

    .line 7
    sget-object v3, Lav2;->o:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsu2$i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lav2;->l:Ljava/util/Set;

    .line 3
    iput p1, p0, Lav2;->m:I

    return-void
.end method

.method public static synthetic x(Lav2;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lav2;->l:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic y(Lav2;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 1
    iput-object p1, p0, Lav2;->l:Ljava/util/Set;

    return-object p1
.end method

.method public static synthetic z(Lav2;)I
    .locals 1

    .line 1
    iget v0, p0, Lav2;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lav2;->m:I

    return v0
.end method


# virtual methods
.method public final A()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lav2;->l:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lav2;->C(Ljava/util/Set;)V

    .line 4
    sget-object v1, Lav2;->n:Lav2$a;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lav2$a;->a(Lav2;Ljava/util/Set;Ljava/util/Set;)V

    .line 5
    iget-object v0, p0, Lav2;->l:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final B()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lav2;->l:Ljava/util/Set;

    return-void
.end method

.method public abstract C(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
