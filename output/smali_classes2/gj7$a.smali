.class public final Lgj7$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgj7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lic7;"
    }
.end annotation


# instance fields
.field public final e:Lyb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Lgj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgj7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyb7;Lgj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TT;>;",
            "Lgj7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lgj7$a;->e:Lyb7;

    .line 3
    iput-object p2, p0, Lgj7$a;->f:Lgj7;

    return-void
.end method


# virtual methods
.method public k()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lgj7$a;->f:Lgj7;

    invoke-virtual {v0, p0}, Lgj7;->h(Lgj7$a;)V

    :cond_0
    return-void
.end method
