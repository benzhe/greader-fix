.class public Lwp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[I


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lwp;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xfa0
        0xfa0
        0xc8
        0xc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lwp;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public a(II)[C
    .locals 2

    .line 1
    sget-object v0, Lwp;->b:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_0

    move p2, v0

    .line 2
    :cond_0
    iget-object v0, p0, Lwp;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    if-eqz p1, :cond_1

    .line 3
    array-length v0, p1

    if-ge v0, p2, :cond_2

    .line 4
    :cond_1
    new-array p1, p2, [C

    :cond_2
    return-object p1
.end method
